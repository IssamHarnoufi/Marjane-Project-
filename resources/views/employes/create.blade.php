@auth
<!DOCTYPE html>
<html>
<head>
    <title>Employés</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        Bonjour
            {{ __(auth()->user()->name) }}
        </h2>
    </x-slot>

    @include('layouts.alert')

    <div class="container mt-5">
        <h2 class="mb-4">Ajouter Nouveau Employé </h2>
        <div class="card-body">
            <form method="POST" class="mt-3" action="{{ route('employes.store') }}" enctype="multipart/form-data">
                @csrf
                <div class="form-group mb-3">
                    <label for="name" class="form-label fw-bold">Nom : </label>
                    <input type="text" name="name" value="{{old("fullname")}}" placeholder="name" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label class="form-label fw-bold" for="email">Email : </label>
                    <input type="email" class="form-control" value="{{old("email")}}"  name="email" placeholder="Email" required>
                </div>

                <div class="form-group mb-3">
                    <label class="form-label fw-bold" for="password">Password : </label>
                    <input type="password" class="form-control" value="{{old("password")}}"  name="password" placeholder="Password" required>
                </div>

                <div class="form-group row mb-0">
                    <div class="col-md-8">
                        <button type="submit" class="btn btn-primary">
                            {{ __('Create') }}
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
