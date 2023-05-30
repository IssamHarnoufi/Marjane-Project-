<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('reponse_rapport', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('rapport_id');
            $table->text('proposition_de_reponse');
            $table->string('statut')->default('en attente');
            $table->timestamps();

            $table->foreign('rapport_id')->references('id')->on('reports')->onDelete('cascade');
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('reponse_demande');

    }
};
