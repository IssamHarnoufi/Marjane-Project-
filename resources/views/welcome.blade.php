<!DOCTYPE html>
<html>
<head>
    <title>Laravel 8|7 Datatables Tutorial</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>



    <div class="container mt-5">
    <h2 class="mb-4">SERVEURS</h2>
    <table class="table table-bordered yajra-datatable">
        <thead>
            <tr>
                <th>Numéro de Série</th>
                <th>CODE_A_BARRE</th>
                <th>MONTANT_PRIX_D_ACHAT</th>
                <th>MODELE_du_Materiel</th>
                <th>Disponibilite_du_rack</th>
                <th>DATE_DE_MISE_EN_PRODUCTION</th>
                <th>RAM</th>
                <th>OS</th>
                <th>PROCESSEUR</th>
                <th>ADRESSE_IP</th>
                <th>ADRESSE_MAC</th>
                <th>VERSION_ANTIVIRUS</th>
                <th>DATE_MAJ_ANTIVIRUS</th>
                <th>C</th>
                <th>D</th>
                <th>E</th>
                <th>F</th>
                <th>NOM_DU_SERVEUR</th>
                <th>AFFECTATION</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>


</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
  $(function () {

    var table = $('.yajra-datatable').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('serveurs.list') }}",
        columns: [
            {data: 'Numero_de_Serie', name: 'Numero_de_Serie'},
            {data: 'CODE_A_BARRE', name: 'CODE_A_BARRE'},
            {data: 'MONTANT_PRIX_D_ACHAT', name: 'MONTANT_PRIX_D_ACHAT'},
            {data: 'MODELE_du_Materiel', name: 'MODELE_du_Materiel'},
            {data: 'Disponibilite_du_rack', name: 'Disponibilite_du_rack'},
            {data: 'DATE_DE_MISE_EN_PRODUCTION', name: 'DATE_DE_MISE_EN_PRODUCTION'},
            {data: 'RAM', name: 'RAM'},
            {data: 'OS', name: 'OS'},
            {data: 'PROCESSEUR', name: 'PROCESSEUR'},
            {data: 'ADRESSE_IP', name: 'ADRESSE_IP'},
            {data: 'ADRESSE_MAC', name: 'ADRESSE_MAC'},
            {data: 'VERSION_ANTIVIRUS', name: 'VERSION_ANTIVIRUS'},
            {data: 'DATE_MAJ_ANTIVIRUS', name: 'DATE_MAJ_ANTIVIRUS'},
            {data: 'C', name: 'C'},
            {data: 'D', name: 'D'},
            {data: 'E', name: 'E'},
            {data: 'F', name: 'F'},
            {data: 'NOM_DU_SERVEUR', name: 'NOM_DU_SERVEUR'},
            {data: 'AFFECTATION', name: 'AFFECTATION'},

            {
                data: 'action',
                name: 'action',
                orderable: true,
                searchable: true
            },
        ]
    });

  });
</script>
</html>

