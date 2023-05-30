@auth
    <!DOCTYPE html>
<html>
<head>
    <title>Afficher Rapport</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Afficher Rapport') }}
        </h2>
    </x-slot>


    @include('layouts.alert')

    <div class="container mt-5">
        <div >
            <div class="content">
                <div class="py-12 ">

                    <div class=" mx-auto sm:px-6 lg:px-8 ">

                        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

                            <div class="p-6 bg-white border-b border-gray-200 ">
                                <div class="card-body">
                                    <div class="form-group row mb-0">

                                    </div> </br>
                                    <form method="POST" class="mt-3" action="{{ route('réponseRapport', $report->id) }}" enctype="multipart/form-data">

                                    @csrf
                                    <div class="form-group mb-3">
                                        <label for="name" class="form-label fw-bold">Id : </label>
                                        <input type="text" disabled name="name" value="{{$report->id}}" placeholder="id" class="form-control rounded-0" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="name" class="form-label fw-bold">Nom : </label>
                                        <input type="text" disabled name="name" value="{{$report->nom}}" placeholder="name" class="form-control rounded-0" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="form-label fw-bold" for="email">Email : </label>
                                        <input type="email" disabled class="form-control rounded-0" value="{{$report->email}}"  name="email" placeholder="Email" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="form-label fw-bold" for="type_de_report">Département ou section : </label>
                                        <input type="text" disabled class="form-control rounded-0" value="{{$report->departement}}"  name="departement" placeholder="departement" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="form-label fw-bold" for="Description_de_report">Problème rencontrée : </label>
                                        <textarea disabled class="form-control rounded-0" name="problem" placeholder="problem">{{$report->problem}}</textarea>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="form-label fw-bold" for="Urgence">Urgence : </label>
                                        <input type="text" disabled class="form-control rounded-0" value="{{$report->Urgence}}"  name="Urgence" placeholder="Urgence" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="form-label fw-bold" for="raison">Notes : </label>
                                        <input type="text" disabled class="form-control rounded-0" value="{{$report->notes}}"  name="notes" placeholder="notes" required>
                                    </div>

                                    <div class="form-group row mb-0">
                                        <div class="col-md-8">
                                            <button type="submit" class="btn btn-danger">
                                                {{ __('Répondre') }}
                                            </button>
                                        </div>
                                    </div>
                                    </form>




                                </div>

                            </div>

</x-app-layout>
</body>
</html>
@endauth
