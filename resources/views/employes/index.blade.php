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


<div class="container mt-5">
    <h2 class="mb-4">Employés</h2>
    <table class="table table-bordered ">
        <thead>
        <tr>
            <th>Id</th>
            <th>Nom</th>
            <th>Email</th>
            <th> Action </th>
        </tr>
        </thead>

        <tbody>
        @foreach ($employes as $key => $employe)
            <tr>
                <td>{{$employe->id}}</td>
                <td>{{$employe->name}}</td>
                <td>{{$employe->email}}</td>
                <td class="d-flex justify-content-center align-items-center">
                    <a href="{{route("employes.show",$employe->id)}}"
                       class="btn btn-sm btn-primary">
                        <i class="bi bi-eye"></i>
                    </a>
                    <a href="{{route("employes.edit",$employe->id)}}"
                       class="btn btn-sm btn-warning mx-2">
                        <i class="bi bi-pencil"></i>
                    </a>
                    <form id="{{$employe->id}}" action="{{route("employes.destroy",$employe->id)}}" method="post">
                        @csrf
                        @method("DELETE")
                    </form>
                    <button onclick="deleteAd({{$employe->id}})"
                            type="submit" class="btn btn-sm btn-danger">
                        <i class="bi bi-trash3-fill"></i>
                    </button>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

</x-app-layout>
</body>
</html>

<script>
      function deleteAd(id){
            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                    confirmButton: 'btn btn-success',
                    cancelButton: 'btn btn-danger mr-2'
                },
                buttonsStyling: false
                })
                swalWithBootstrapButtons.fire({
                    title: 'Êtes-vous sûr ?',
                    text: "Vous ne pourrez pas revenir en arrière !",
                    icon: 'avertissement',
                    showCancelButton: true,
                    confirmButtonText: 'Oui, supprimez-le !',
                    cancelButtonText: 'Non, annuler !',
                    reverseButtons: true
                }).then((result) => {
                if (result.isConfirmed) {
                    document.getElementById(id).submit();
                } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                        'Annulé',
                         'Rien supprimé',
                         'erreur'
                    )
                }
                })
        }
    </script>
@endauth
