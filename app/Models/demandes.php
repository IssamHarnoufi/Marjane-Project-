<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class demandes extends Model
{
    use HasFactory;
    protected $fillable =
        [
            "user_id" , "name", "email", "type_de_demande" ,"Description_de_demande" , "Urgence" , "raison" , "statut"
        ];



    public function employe()
    {
        return $this->belongsTo(Employe::class, 'user_id');
    }



}
