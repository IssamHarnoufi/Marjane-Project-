@auth
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
            Proposition de réponse
        </h2>
    </x-slot>

    @include('layouts.alert')

    <div class="container mt-5">
        <h2 class="mb-4">Proposition de réponse </h2>
        <div class="card-body">
            <form method="POST" action="{{ route('reponseDemandestore', $demande->id) }}" enctype="multipart/form-data">


            @csrf
            <div class="form-group">
                <label for="demande_id">Employe ID:</label>
                <input type="text" class="form-control" id="user_id" name="user_id" value="{{ $demande->user_id }}" readonly>
            </div>
                <div class="form-group">
                    <label for="demande_id">Demande ID:</label>
                    <input type="text" class="form-control" id="demande_id" name="demande_id" value="{{ $demande->id }}" readonly>
                </div>
                <div class="form-group">
                    <label for="proposition">Proposition de réponse:</label>
                    <textarea class="form-control" id="proposition" name="proposition_de_reponse" rows="5" required></textarea>
                </div>
                <div class="form-group">
                    <label for="statut">Statut:</label>
                    <select class="form-control" id="statut" name="statut" required>
                        <option value="en_attente">En attente</option>
                        <option value="approuvé">Approuvé</option>
                        <option value="refusé">Refusé</option>
                    </select>
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


</x-app-layout>
</body>
</html>
@endauth
