<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Data_biaya_kirim;
use App\Models\Data_harga;
use App\Models\Data_komisi;
use App\Models\Data_toko;
use App\Models\Transaksi;
use App\Models\Users;
use App\Models\Bidangs;
use App\Models\Seksis;
use Carbon\Carbon;
use App\Models\Riwayat;
use App\Models\History;
use App\Models\User_menu;
use App\Models\Anggotas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SeksisController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Seksi';
        $data['menu'] = User_menu::all();
        $data['seksi'] = Seksis::all();
        $data['seksi'] = Seksis::orderBy('id', 'desc')->paginate(3);

        return view('admin.seksis.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Tambah Seksi';
        $data['menu'] = User_menu::all();

        return view('admin.seksis.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $seksis = new Seksis;

        $seksis->name = $request->name;
        $seksis->description = $request->description;

        $seksis->save();

        return redirect('/seksis');
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
        $data['title'] = 'Detail Seksi';
        $data['menu'] = User_menu::all();
        $data['seksis'] = Seksis::where('id', $id)->first();
        return view('admin.seksis.show', $data);
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
        $data['title'] = 'Edit Seksi';
        $data['menu'] = User_menu::all();
        $data['seksi'] = Seksis::where('id', $id)->first();
        return view('admin.seksis.edit', $data);
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

        Seksis::whereId($id)->update([
            'name' => $request->name,
            'description' => $request->description
        ]);

        return redirect('/seksis');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Seksis::find($id)->delete();

        return redirect('/seksis');
    }
    public function addmember($id)
    {
        $data['user'] = AUTH::user();
        $data['title'] = 'Tambah Anggota Seksi';
        $data['menu'] = User_menu::all();
        $data['anggota'] = Anggotas::where('seksis_id', '=', 0)->get();
        $data['seksi'] = Seksis::where('id', $id)->first();
        return view('admin.seksis.addmember', $data);
    }
    public function updateaddmember(Request $request, $id)
    {
        $anggota = Anggotas::where('id', $request->anggota_id)->first();
        Anggotas::find($anggota->id)->update([
            'seksis_id' => $id

        ]);

        $seksi = Seksis::find($id);
        $seksi->total_users_join = $seksi->total_users_join + 1;
        $seksi->save();

        $riwayat = new Riwayat();
        $riwayat->anggotas_id = $request->anggota_id;
        $riwayat->seksis_id = $id;
        $riwayat->activity = 1;
        $riwayat->date = Carbon::now();
        $riwayat->save();

        return redirect('/seksis');
    }
    public function deleteaddmember(Request $request, $id)
    {
        //dd($id);

        $anggota = Anggotas::find($id);

        $seksi = Seksis::find($anggota->seksis_id);
        $seksi->total_users_leave = $seksi->total_users_leave + 1;
        $seksi->save();

        $riwayat = new Riwayat();
        $riwayat->anggotas_id = $id;
        $riwayat->seksis_id = $anggota->seksis_id;
        $riwayat->activity = 0;
        $riwayat->date = Carbon::now();
        $riwayat->save();

        $anggota->seksis_id = 0;
        $anggota->save();

        return redirect('/seksis');
    }
}
