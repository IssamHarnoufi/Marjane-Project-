<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReponseDemande extends Model
{
    use HasFactory;

    protected $table = 'reponse_demande';
    protected $fillable = [
        'demande_id',
        'proposition_de_reponse',
        'statut',
        'user_id'
    ];

    public function demande()
    {
        return $this->belongsTo(Demandes::class);
    }
}
