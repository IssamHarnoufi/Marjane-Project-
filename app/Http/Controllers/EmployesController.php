<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;


use App\Models\Employe;
use App\Models\demandes;
use App\Models\reports;
use App\Models\User;

use Illuminate\Http\Request;
use DataTables;
class EmployesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $employes = Employe::all();
        return view('employes.index')->with([
            'employes' => $employes
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('employes.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email|unique:employes|max:255',
            'password' => 'required|max:255',
        ]);

        // Create a new Employe instance and save it
        $employe = new Employe();
        $employe->name = $validatedData['name'];
        $employe->email = $validatedData['email'];
        $employe->password = Hash::make($validatedData['password']);
        $employe->save();

        // Create a new User instance and associate it with the Employe instance
        $user = new User();
        $user->name = $validatedData['name'];
        $user->email = $validatedData['email'];
        $user->password = Hash::make($validatedData['password']);
        $user->employe_id = $employe->id; // Set employe_id to the ID of the newly created Employe
        $user->save();

        return redirect()->route('employes.index')
            ->with('success', 'Employé ajouté avec succès.');
    }






    public function storeReports(Request $request)
    {
        //
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'departement' => 'required',
            'problem' => 'required',
            'Urgence' => 'required',
            'notes	' => 'required',
        ]);
        $data = $request->except(['_token']);
        reports::create($data);
        return redirect()->route("employes.index")->with([
            "success" => "Report ajouté avec succès"
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        //
        $employe = Employe::where('id', $id)->first();
        return view("employes.show")->with([
            "employe" => $employe
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        //
        $employe = Employe::where('id', $id)->first();
        return view("employes.edit")->with([
            "employe" => $employe
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        //
        $employe = Employe::where('id', $id)->first();
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required'
        ]);
        $data = $request->except(['_token', '_method']);
        $employe->update($data);
        return redirect()->route("employes.index")->with([
            "success" => "Employé mis à jour avec succès"
        ]);
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        //
        $employe = Employe::where('id', $id)->first();
        $employe->delete();
        return redirect()->route("employes.index")->with([
            "success" => "Employé supprimé avec succès"
        ]);
    }


    public function getRequest($id)
    {
        //

        $demandes = Demandes::where('user_id', $id)->get();
        return view("employes.request")->with([
            "demandes" => $demandes
        ]);
    }

    public function getReports($id)
    {
        //

        $reports = reports::where('user_id', $id)->get();
        return view("employes.report")->with([
            "reports" => $reports
        ]);
    }

    public function showRequest()
    {
        //
        $demandes = demandes::all();
        return view('employes.demandes')->with([
            'demandes' => $demandes
        ]);
    }

    public function showRepport()
    {
        //
        $reports = reports::all();
        return view('employes.rapports')->with([
            'reports' => $reports
        ]);
    }


    public function vacationRequest($id)
    {
        $employe = Employe::where('id', $id)->first();
        return view("employes.vacation")->with([
            "employe" => $employe
        ]);
    }
    public function getEmployes(Request $request)
    {
        if ($request->ajax()) {
            $data = employes::latest()->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-success btn-sm">Edit</a> <a href="javascript:void(0)" class="delete btn btn-danger btn-sm">Delete</a>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }
}

