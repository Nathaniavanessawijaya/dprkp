<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Data_biaya_kirim;
use App\Models\Data_harga;
use App\Models\Data_komisi;
use App\Models\Data_toko;
use App\Models\Transaksi;
use App\Models\Users;
use App\Models\Seksis;
use App\Models\Bidangs;
use Carbon\Carbon;
use App\Models\Riwayat;
use App\Models\History;
use App\Models\User_menu;
use App\Models\Anggotas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BidangsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Bidang';
        $data['menu'] = User_menu::all();
        $data['bidang'] = Bidangs::all();
        $data['bidang'] = Bidangs::orderBy('id', 'desc')->paginate(3);

        return view('admin.bidangs.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Tambah Bidang';
        $data['menu'] = User_menu::all();

        return view('admin.bidangs.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $bidangs = new Bidangs;

        $bidangs->name = $request->name;
        $bidangs->description = $request->description;

        $bidangs->save();

        return redirect('/bidangs');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Detail Bidang';
        $data['menu'] = User_menu::all();
        $data['bidangs'] = Bidangs::where('id', $id)->first();
        return view('admin.bidangs.show', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Edit Bidang';
        $data['menu'] = User_menu::all();
        $data['bidang'] = Bidangs::where('id', $id)->first();
        return view('admin.bidangs.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        Bidangs::whereId($id)->update([
            'name' => $request->name,
            'description' => $request->description
        ]);

        return redirect('/bidangs');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Bidangs::find($id)->delete();

        return redirect('/bidangs');
    }
    public function addmember($id)
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Tambah Seksi Bidang';
        $data['menu'] = User_menu::all();
        $data['seksi'] = Seksis::where('bidangs_id', '=', 0)->get();
        $data['bidang'] = Bidangs::where('id', $id)->first();
        return view('admin.bidangs.addmember', $data);
    }
    public function updateaddmember(Request $request, $id)
    {
        $seksi = Seksis::where('id', $request->seksi_id)->first();
        Seksis::find($seksi->id)->update([
            'bidangs_id' => $id

        ]);

        $bidang = Bidangs::find($id);
        $bidang->jumlah_seksi = $bidang->jumlah_seksi + 1;
        $bidang->save();

        $history = new History();
        $history->seksis_id = $request->seksi_id;
        $history->bidangs_id = $id;
        $history->activity = 1;
        $history->date = Carbon::now();
        $history->save();

        return redirect('/bidangs');
    }
    public function deleteaddmember(Request $request, $id)
    {
        //dd($id);

        $seksi = Seksis::find($id);

        $bidang = Bidangs::find($seksi->bidangs_id);

        $history = new History();
        $history->seksis_id = $id;
        $history->bidangs_id = $seksi->bidangs_id;
        $history->activity = 0;
        $history->date = Carbon::now();
        $history->save();

        $seksi->bidangs_id = 0;
        $seksi->save();

        return redirect('/bidangs');
    }
}
