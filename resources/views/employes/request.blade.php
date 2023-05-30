<!DOCTYPE html>
<html>
<head>
    <title>historique des demandes</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('historique des demandes') }}
        </h2>
    </x-slot>

    @include('layouts.alert')

    <div >
        <div class="content">
            <div class="py-12 ">

                <div class=" mx-auto sm:px-6 lg:px-8 ">

                    <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

                        <div class="p-6 bg-white border-b border-gray-200 ">
        <h2 class="mb-4">
        </h2>

        <div class="card-body">

        <table class="table table-bordered ">
        <thead>
            <tr>
                <th>Id de la demande </th>
                <th>Id de l'employe </th>
                <th>Nom</th>
                <th>Email</th>
                <th>type de demande </th>
                <th>Description de l'article/du service </th>
                <th>Urgence </th>
                <th>Raison de la demande </th>
                <th>Statut </th>
                <th>Date de demande </th>
                <th>Action</th>
            </tr>

        </thead>
            <tbody>
            @foreach ($demandes as $demande)
                <tr>
                    <td>{{$demande->id}}</td>
                        <td>{{$demande->user_id}}</td>
                        <td>{{$demande->nom}}</td>
                        <td>{{$demande->email}}</td>
                        <td>{{$demande->type_de_demande}}</td>
                        <td>{{$demande->Description_de_demande}}</td>
                        <td>{{$demande->Urgence}}</td>
                        <td>{{$demande->raison}}</td>
                        <td>{{$demande->statut}}</td>
                        <td>{{$demande->created_at}}</td>
                    <td class="d-flex justify-content-center align-items-center">
                        <a href="{{route("employes.show",$demande->user_id)}}"
                           class="btn btn-sm btn-primary">
                            <i class="bi bi-eye"></i>
                        </a>

                    </td>
                </tr>
            @endforeach
            </tbody>



        </table>
        </div>


    </div>

    </div>
    </div>


    </div>

    </div>

</x-app-layout>
</body>
</html>

