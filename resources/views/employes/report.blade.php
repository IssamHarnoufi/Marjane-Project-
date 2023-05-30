@auth
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
            {{ __('historique des rapports') }}
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
                                        <th>Id de rapport </th>
                                        <th>Id de l'employe </th>
                                        <th>Nom</th>
                                        <th>Email</th>
                                        <th>Département ou section </th>
                                        <th>Problème rencontrée </th>
                                        <th>Urgence </th>
                                        <th> Notes  </th>
                                        <th> Statut</th>
                                        <th>Date de rapport </th>
                                        <th>Action</th>
                                    </tr>

                                    </thead>
                                    @if ($reports)
                                        @foreach ($reports as $key => $report)
                                            <tr>
                                                <td>{{$report->id}}</td>
                                                <td>{{$report->user_id}}</td>
                                                <td>{{$report->nom}}</td>
                                                <td>{{$report->email}}</td>
                                                <td>{{$report->departement}}</td>
                                                <td>{{$report->problem}}</td>
                                                <td>{{$report->Urgence}}</td>
                                                <td>{{$report->notes}}</td>
                                                <td>{{$report->statut}}</td>
                                                <td>{{$report->created_at}}</td>
                                                <td class="d-flex justify-content-center align-items-center">
                                                    <a href="{{route("employes.show",$report->user_id)}}"
                                                       class="btn btn-sm btn-primary">
                                                        <i class="bi bi-eye"></i>
                                                    </a>

                                                </td>
                                            </tr>
                                            @endforeach
                                            @endif

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

@endauth
