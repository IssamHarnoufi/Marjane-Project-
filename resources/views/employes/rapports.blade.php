@auth
<!DOCTYPE html>
<html>
<head>
    <title>Gestion des rapports</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Gestion des rapports') }}
        </h2>
    </x-slot>

    @include('layouts.alert')

    <div >
        @if (auth()->user()->role == 1)
        <div class="content">
            <div class="py-12 ">

                <div class=" mx-auto sm:px-6 lg:px-8 ">

                    <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

                        <div class="p-6 bg-white border-b border-gray-200 ">

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
                                                    <a href="{{route("rapport.show",$report->id)}}"
                                                       class="btn btn-sm btn-primary">
                                                        <i class="bi bi-reply"></i>
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

            @else
                <div class="container mt-5">
                    <h2 class="mb-4">Ajouter Nouveau rapport </h2>
                    <div class="card-body">
                        <form method="POST" class="mt-3" action="{{ route('user.store', [auth()->user()->employe_id]) }}" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group mb-3">
                                <label for="name" class="form-label fw-bold">Id : </label>
                                <input type="text" disabled name="user_id" value={{ __(auth()->user()->employe_id) }} placeholder="id" class="form-control" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="name" class="form-label fw-bold">Nom : </label>
                                <input type="text" disabled name="name" value={{ __(auth()->user()->name) }} placeholder="name" class="form-control" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="form-label fw-bold" for="email">Email : </label>
                                <input type="email" disabled class="form-control" value={{ __(auth()->user()->email) }}  name="email" placeholder="Email" required>
                            </div>

                            <div class="form-group mb-3">
                                <label class="form-label fw-bold" for="password">Département ou section : </label>
                                <input type="text" class="form-control input-lg value="{{old("password")}}"  name="departement" placeholder="Département ou section" required>
                            </div>

                            <div class="form-group mb-3">
                                <label class="form-label fw-bold" for="password">Problème rencontrée : </label>
                                <input type="text" class="form-control input-lg"  name="problem" placeholder="Problème rencontrée" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="form-label fw-bold" for="Urgence">Urgence : </label>

                                <select class="form-select" name="Urgence" aria-label="Default select example">
                                    <option selected>Open this select menu</option>
                                    <option value="faible" class="form-control">faible</option>
                                    <option value="moyen" class="form-control">moyen</option>
                                    <option value="élevé" class="form-control">élevé</option>
                                </select>


                            </div>

                            <div class="form-group mb-3">
                                <label class="form-label fw-bold" for="password">Notes : </label>
                                <textarea class="form-control" id="notes" name="notes" rows="3"></textarea>
                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-8">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Ajouter') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>

            @endif

        </div>

</x-app-layout>
</body>
</html>

@endauth
