<!DOCTYPE html>
<html>
<head>
    <title>Proposition de réponse</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Proposition de réponse') }}
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
                <th>Id de Rapport </th>
                <th>Id de l'employe </th>
                <th>Proposition de reponse</th>
                <th>statut</th>
            </tr>

        </thead>
            <tbody>
                @foreach ($ReponseRapport as $object)
                {{ $object->ReponseRapport }}
                <tr>

                    <td>
                        {{ $object->rapport_id }}
                        </td>
                        <td>{{$object->user_id}}</td>
                        <td>{{$object->proposition_de_reponse}}</td>
                        <td>{{$object->statut}}</td>
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

