<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employe extends Model
{
    use HasFactory;
    protected $fillable =
        [
            "name", "email", "password"
        ];

    public function demandes()
    {
        return $this->hasMany(demandes::class);
    }
    public function reports()
    {
        return $this->hasMany(reports::class);
    }

}
