<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::create('serveurs', function (Blueprint $table) {
        $table->string('Numero_de_Serie');
        $table->string('CODE_A_BARRE')->unique();
        $table->string('MONTANT_PRIX_D_ACHAT');
        $table->string('MODELE_du_Materiel');
        $table->string('Disponibilite_du_rack');
        $table->date('DATE_DE_MISE_EN_PRODUCTION');
        $table->string('RAM');
        $table->string('OS');
        $table->string('PROCESSEUR');
        $table->string('ADRESSE_IP');
        $table->string('ADRESSE_MAC');
        $table->string('VERSION_ANTIVIRUS');
        $table->date('DATE_MAJ_ANTIVIRUS');
        $table->string('C');
        $table->string('D');
        $table->string('E');
        $table->string('F');
        $table->string('NOM_DU_SERVEUR');
        $table->string('AFFECTATION');
        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('serveurs');
    }
};
