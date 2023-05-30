<?php

namespace App\Http\Controllers;

use App\Models\demandes;
use App\Models\ReponseDemande;
use Illuminate\Http\Request;

class demandeUserController extends Controller
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
        $this->validate($request, [
            'type_de_demande' => 'required',
            'Description_de_demande' => 'required',
            'Urgence' => 'required',
            'raison' => 'required',
        ]);

        $data = $request->except(['_token']);
        $data['user_id'] = auth()->user()->employe_id;
        $data['nom'] = auth()->user()->name;
        $data['email'] = auth()->user()->email;

        $demande = new demandes;
        $demande->type_de_demande = $data['type_de_demande'];
        $demande->Description_de_demande = $data['Description_de_demande'];
        $demande->Urgence = $data['Urgence'];
        $demande->raison = $data['raison'];
        $demande->user_id = $data['user_id'];
        $demande->nom = $data['nom'];
        $demande->email = $data['email'];
        $demande->save();

        return redirect()->route("dashboard")->with([
            "success" => "Demande ajoutée avec succès"
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        //
        $demande = demandes::where('id', $id)->first();
        return view("demande.show")->with([
            "demande" => $demande
        ]);
    }

    public function réponseDemande($id)
    {
        //
        $demande = demandes::where('id', $id)->first();
        return view("demande.reponde")->with([
            "demande" => $demande
        ]);
    }
    public function reponseDemandestore(Request $request, $demandeId)
    {
        // Validate the form input
        $validatedData = $request->validate([
            'user_id' => 'required|string',
            'demande_id' => 'required|string',
            'proposition_de_reponse' => 'required|string',
            'statut' => 'required|string|in:en_attente,approuvé,refusé',
        ]);

        // Create a new ReponseDemande instance and fill it with the form data
        $reponse = new ReponseDemande();
        $reponse->user_id = $validatedData['user_id'];
        $reponse->demande_id = $validatedData['demande_id'];
        $reponse->proposition_de_reponse = $validatedData['proposition_de_reponse'];
        $reponse->statut = $validatedData['statut'];

        // Save the new ReponseDemande instance to the database
        $reponse->save();

        // Redirect the user to the previous page with a success message
        return redirect()->route("dashboard")->with([
            "success" => "Réponse ajouté avec succès"
        ]);
    }




        public function AdminreponseDemande($id)
    {
        //

        $ReponseDemande = ReponseDemande::where('user_id', $id)->get();
        return view("demande.AdminReponse")->with([
            "ReponseDemande" => $ReponseDemande
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
