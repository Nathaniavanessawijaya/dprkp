<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Riwayat extends Model
{
    use HasFactory;
    protected $fillable = [
        'anggotas_id', 'seksis_id', 'activity', 'date'
    ];

    protected $table = 'riwayat';
    public $timestamps = false;

    public function anggotas()
    {
        return $this->belongsTo(Anggotas::class, 'anggotas_id', 'id');
    }

    public function seksis()
    {
        return $this->belongsTo(Seksis::class, 'seksis_id', 'id');
    }
}

// seluruh isi file merupakan tambahan source code baru
