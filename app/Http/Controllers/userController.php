<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\reports;
use App\Models\demandes;

class userController extends Controller
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
            'departement' => 'required',
            'problem' => 'required',
            'Urgence' => 'required',
            'notes' => 'required',
        ]);

        $data = $request->except(['_token']);
        $data['user_id'] = auth()->user()->employe_id;
        $data['name'] = auth()->user()->name;
        $data['email'] = auth()->user()->email;

        $report = new reports;
        $report->departement = $data['departement'];
        $report->problem = $data['problem'];
        $report->Urgence = $data['Urgence'];
        $report->notes = $data['notes'];
        $report->user_id = $data['user_id'];
        $report->nom = $data['name'];
        $report->email = $data['email'];
        $report->save();

        return redirect()->route("dashboard")->with([
            "success" => "Report ajouté avec succès"
        ]);
    }



  /*  public function showRequestUser(Request $request)
    {
        $this->validate($request, [
            'type_de_demande' => 'required',
            'Description_de_demande' => 'required',
            'Urgence' => 'required',
            'raison' => 'required',
        ]);

        $data = $request->except(['_token']);
        $data['user_id'] = auth()->user()->id;
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
    }*/



    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
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
