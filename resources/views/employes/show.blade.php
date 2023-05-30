@auth
<!DOCTYPE html>
<html>
<head>
    <title>Afficher Employé</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Afficher Employé') }}
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
        <h2 class="mb-4"> {{$employe->name}} </h2>
        <div class="card-body">
        <div class="form-group row mb-0">
                        <div class="col-md-12">
                            <a href="{{route('work.vacation',$employe->id)}}"
                                class="btn btn-outline-dark">
                                {{ __('historique des demandes') }}
                            </a>
                            <a href="{{route('work.certificate',$employe->id)}}"
                                class="btn btn-outline-danger">
                                {{ __('historique des rapports') }}
                            </a>
                        </div>
                    </div> </br>
        <div class="form-group mb-3">
                    <label for="name" class="form-label fw-bold">Id : </label>
                    <input type="text" disabled name="name" value="{{$employe->id}}" placeholder="name" class="form-control rounded-0" required>
                </div>
                <div class="form-group mb-3">
                    <label for="name" class="form-label fw-bold">Nom : </label>
                    <input type="text" disabled name="name" value="{{$employe->name}}" placeholder="name" class="form-control rounded-0" required>
                </div>
                <div class="form-group mb-3">
                    <label class="form-label fw-bold" for="email">Email : </label>
                    <input type="email" disabled class="form-control rounded-0" value="{{$employe->email}}"  name="email" placeholder="Email" required>
                </div>




        </div>

    </div>

</x-app-layout>
</body>
</html>
@endauth
