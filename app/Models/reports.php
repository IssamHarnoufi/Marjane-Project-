<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class reports extends Model
{
    use HasFactory;
    protected $fillable =
        [
            "user_id" ,"name", "email", "departement" ,"problem" , "Urgence" , "notes"  , "statut"
        ];

    public function employe()
    {
        return $this->belongsTo(Employe::class, 'user_id');
    }
}
