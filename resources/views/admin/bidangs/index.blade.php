@php
use App\Models\Users;
use App\Models\Bidangs;
@endphp

@extends('layouts.app')
@push('css')
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="{{ asset('/vendors/css/vendors.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/vendors/css/forms/wizard/bs-stepper.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/vendors/css/forms/select/select2.min.css') }}">
<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css" href="{{ asset('/css/bootstrap.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/css/bootstrap-extended.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/css/colors.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/css/components.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/css/themes/dark-layout.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/css/themes/bordered-layout.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/css/themes/semi-dark-layout.min.css') }}">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css" href="{{ asset('/css/core/menu/menu-types/vertical-menu.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/css/plugins/charts/chart-apex.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('/css/pages/app-invoice-list.min.css') }}">
@endpush

@section('title', 'Bidang')

@section('content')

<div class="app-content content ">
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">BIDANG DI DPKRP KOTA CIREBON</h1>
                <a href="/bidangs/create" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm"><i class="fas fa-plus fa-sm text-white-50"></i> Tambah Bidang</a>
            </div>

            <!-- Content Row -->
            <div class="row">
                @foreach ($bidang as $bidangs)
                <!-- Content Column -->
                <div class="col-lg-4 mb-4">
                    <!-- Project Card Example -->
                    <div class="card shadow mb-4">
                        <div class="card">
                            <h5 class="card-header"><a href="/bidangs/{{$bidangs['id']}}" class="m-0 font-weight-bold text-success h6">{{ $bidangs['name'] }}</a></h5>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <p class="card-text">{{ $bidangs['description'] }}</p>
                                </h5>
                                <a href="/bidangs/addmember/{{$bidangs['id']}}" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-plus fa-sm text-white-50"></i> Tambah Seksi</a>
                            </div>
                        </div>
                        <div class="card-header py-3">
                        </div>
                        <div class="card-body">
                            @forelse ($bidangs->seksis as $seksi)
                            <li class="list-seksi-item d-flex justify-content-between align-items-center">
                                {{$seksi->name}}
                                <br>
                                {{$seksi->nip}}
                                <form action="/bidangs/deleteaddmember/{{ $seksi->id }}" method="POST">
                                    @csrf
                                    @method('PUT')
                                    <button type="submit" class="btn btn-danger">x</button>
                                </form>
                            </li>
                            @empty
                            <li class="list-seksi-item d-flex justify-content-between align-items-center">
                                Belum Ada Seksi yang Ditambahkan
                            </li>
                            @endforelse
                        </div>
                        <div class="card-footer">
                            <div class="d-inline float-right">
                                <a href="/bidangs/{{$bidangs['id']}}/edit" class="btn btn-warning"><i class="fas fa-pencil-alt">Edit</i></a>
                                <form action="/bidangs/{{ $bidangs['id'] }}" class="d-inline" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger"><i class="fas fa-pencil-alt">Delete</i></b>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
        </div>

            </div>
            </div>
            </div>
        </div>

        </section>
        <!-- users edit ends -->

    </div>

@endsection


@push('script')


<!-- BEGIN: Vendor JS-->
<script src="{{ asset('/vendors/js/vendors.min.js') }}"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->

<script src="{{ asset('/vendors/js/charts/apexcharts.min.js') }}"></script>
<script src="{{ asset('/vendors/js/extensions/toastr.min.js') }}"></script>
<script src="{{ asset('/vendors/js/extensions/moment.min.js') }}"></script>
<script src="{{ asset('/vendors/js/tables/datatable/datatables.min.js') }}"></script>
<script src="{{ asset('/vendors/js/tables/datatable/datatables.buttons.min.js') }}"></script>
<script src="{{ asset('/vendors/js/tables/datatable/datatables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('/vendors/js/tables/datatable/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('/vendors/js/tables/datatable/responsive.bootstrap.min.js') }}"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="{{ asset('/js/core/app-menu.min.js') }}"></script>
<script src="{{ asset('/js/core/app.min.js') }}"></script>
<script src="{{ asset('/js/scripts/customizer.min.js') }}"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="{{ asset('/js/scripts/pages/dashboard-analytics.min.js') }}"></script>
<script src="{{ asset('/js/scripts/pages/app-invoice-list.min.js') }}"></script>
<script src="https://unpkg.com/echarts/dist/echarts.min.js"></script>
<!-- Chartisan -->
<script src="https://unpkg.com/@chartisan/echarts/dist/chartisan_echarts.js"></script>

@endpush
