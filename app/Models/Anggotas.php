<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Anggotas extends Model
{
    use HasFactory;
    protected $fillable = [
        'nama', 'nip','tempat_tanggal_lahir', 'jenis_kelamin', 'nomor_telepon', 'alamat_lengkap', 'email', 'pendidikan_terahkir', 'seksis_id'];

    public function seksis()
    {
        return $this->belongsTo(Seksis::class, 'seksis_id', 'id');
    }

    public function riwayats()
    {
        return $this->hasMany(Riwayat::class);
    }
}
