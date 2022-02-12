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
use App\Models\Riwayat;
use App\Models\User_menu;
use App\Models\Anggotas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AnggotasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $data['user'] = AUTH::user();
        $data['title'] = 'Anggota';
        $data['menu'] = User_menu::all();
        $data['anggota'] = Anggotas::all();
        $data['anggota'] = Anggotas::orderBy('id', 'desc')->paginate(3);

        return view('admin.anggotas.index', $data);
    }
    public function create()
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Tambah Anggota';
        $data['menu'] = User_menu::all();

        return view('admin.anggotas.create', $data);
    }
    public function store(Request $request)
    {

        $anggotas = new Anggotas;

        $anggotas->seksis_id = $request->seksis_id;
        $anggotas->nama = $request->nama;
        $anggotas->nip = $request->nip;
        $anggotas->tempat_tanggal_lahir = $request->tempat_tanggal_lahir;
        $anggotas->jenis_kelamin = $request->jenis_kelamin;
        $anggotas->nomor_telepon = $request->nomor_telepon;
        $anggotas->alamat_lengkap = $request->alamat_lengkap;
        $anggotas->email = $request->email;
        $anggotas->pendidikan_terakhir = $request->pendidikan_terakhir;

        $anggotas->save();

        return redirect('/anggotas');
    }
    public function show($id)
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Detail Anggota';
        $data['menu'] = User_menu::all();
        $data ['anggota'] = Anggotas::with('seksis')->where('id', $id)->first();
        $data ['riwayats'] = Riwayat::with('anggotas', 'seksis')->where('anggotas_id', $id)->get();
        return view('admin.anggotas.show', $data);
    }
    public function edit($id)
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Edit Anggota';
        $data['menu'] = User_menu::all();
        $data['anggota'] =Anggotas::where('id', $id)->first();
        return view('admin.anggotas.edit', $data);
    }
    public function update(Request $request, $id)
    {

        Anggotas::find($id)->update([
            'seksis_id' => $request->seksis_id,
            'nama' => $request->nama,
            'nip' => $request->nip,
            'tempat_tanggal_lahir' => $request->tempat_tanggal_lahir,
            'jenis_kelamin' => $request->jenis_kelamin,
            'nomor_telepon' => $request->nomor_telepon,
            'alamat_lengkap' => $request->alamat_lengkap,
            'email' => $request->email,
            'pendidikan_terakhir' => $request->pendidikan_terakhir,
        ]);

        return redirect('/anggotas');
    }
    public function destroy($id)
    {
        Anggotas::find($id)->delete();
        return redirect('/anggotas');
    }
}
