<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    use HasFactory;
    protected $fillable = [
        'seksis_id', 'bidang_id', 'activity', 'date'
    ];

    protected $table = 'history';
    public $timestamps = false;

    public function seksis()
    {
        return $this->belongsTo(Seksis::class, 'seksis_id', 'id');
    }

    public function bidangs()
    {
        return $this->belongsTo(Bidangs::class, 'bidangs_id', 'id');
    }
}

// seluruh isi file merupakan tambahan source code baru
