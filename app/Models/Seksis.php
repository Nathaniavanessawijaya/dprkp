<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seksis extends Model
{
    use HasFactory;

    protected $guarded = ['name', 'description', 'total_users_join', 'total_users_leave'];

    public function bidangs()
    {
        return $this->belongsTo(Bidangs::class, 'bidangs_id', 'id');
    }

    public function anggotas()
    {
        return $this->hasMany(Anggotas::class);
    }

    public function riwayats()
    {
        return $this->hasMany(Riwayat::class);
    }

    public function historys()
    {
        return $this->hasMany(History::class);
    }
}
