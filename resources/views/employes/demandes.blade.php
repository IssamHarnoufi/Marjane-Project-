@auth
<!DOCTYPE html>
<html>
<head>
    <title>Demandes</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ ('Demandes') }}
        </h2>
    </x-slot>


    <div >
        @if (auth()->user()->role == 1)
        <div class="content">
            <div class="py-12 ">

                <div class="  ">

                    <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

                        <div class="p-6 bg-white border-b border-gray-200 ">
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
            @if ($demandes)
                @foreach ($demandes as $key => $demande)
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
                            <a href="{{route("demande.show",$demande->id,$demande->user_id)}}"
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

            @else
                <div class="container mt-5">
                    <h2 class="mb-4">Ajouter Nouvelle Demande</h2>
                    <div class="card-body">
                        <form method="POST" class="mt-3" action="{{ route('demande.store', [auth()->user()->employe_id]) }}" enctype="multipart/form-data">
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
                                <label class="form-label fw-bold" for="password">Type de demande: </label>
                                <input type="text" class="form-control input-lg value="{{old("password")}}"  name="type_de_demande" placeholder="type_de_demande" required>
                            </div>

                            <div class="form-group mb-3">
                                <label class="form-label fw-bold" for="password"> Description de demande : </label>
                                <input type="text" class="form-control input-lg"  name="Description_de_demande" placeholder="Problème Description_de_demande" required>
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
                                <label class="form-label fw-bold" for="password">Raison : </label>
                                <textarea class="form-control" id="raison" name="raison" rows="3"></textarea>
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
