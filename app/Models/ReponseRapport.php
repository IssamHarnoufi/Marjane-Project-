<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReponseRapport extends Model
{
    use HasFactory;

    protected $table = 'reponse_rapport';
    protected $fillable = [
        'rapport_id',
        'proposition_de_reponse',
        'statut',
        'user_id'
    ];

    public function demande()
    {
        return $this->belongsTo(reports::class);
    }
}
