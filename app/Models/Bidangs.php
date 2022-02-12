<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bidangs extends Model
{
    use HasFactory;

    protected $guarded = ['name', 'description', 'jumlah_seksi'];

    public function seksis()
    {
        return $this->hasMany(Seksis::class);
    }

    public function historys()
    {
        return $this->hasMany(History::class);
    }
}
