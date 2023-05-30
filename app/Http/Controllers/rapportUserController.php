<?php

namespace App\Http\Controllers;
use App\Models\ReponseRapport;
use App\Models\reports;

use Illuminate\Http\Request;

class rapportUserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        //
        $report = reports::where('id', $id)->first();
        return view("report.show")->with([
            "report" => $report
        ]);
    }

    public function réponseRapport($id)
    {
        //
        $report = reports::where('id', $id)->first();
        return view("report.reponde")->with([
            "report" => $report
        ]);
    }

    public function reponseRapportstore(Request $request, $rapportId)
    {
        // Validate the form input
        $validatedData = $request->validate([
            'user_id' => 'required|string',
            'rapport_id' => 'required|string',
            'proposition_de_reponse' => 'required|string',
            'statut' => 'required|string|in:en_attente,approuvé,refusé',
        ]);

        // Create a new ReponseDemande instance and fill it with the form data
        $reponse = new ReponseRapport();
        $reponse->user_id = $validatedData['user_id'];
        $reponse->rapport_id = $validatedData['rapport_id'];
        $reponse->proposition_de_reponse = $validatedData['proposition_de_reponse'];
        $reponse->statut = $validatedData['statut'];

        // Save the new ReponseDemande instance to the database
        $reponse->save();

        // Redirect the user to the previous page with a success message
        return redirect()->route("dashboard")->with([
            "success" => "Réponse ajouté avec succès"
        ]);
    }

    public function AdminreponseRapport($id)
    {
        //

        $ReponseRapport = ReponseRapport::where('user_id', $id)->get();
        return view("report.AdminReponse")->with([
            "ReponseRapport" => $ReponseRapport
        ]);
    }
    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
