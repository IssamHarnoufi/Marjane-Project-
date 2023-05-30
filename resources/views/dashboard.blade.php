@auth

<link rel="stylesheet" href="{{asset ('css/dashboard.css')}}">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">

    <x-app-layout>
        <x-slot name="header">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Bonjour
                {{ __(auth()->user()->name) }}
            </h2>
        </x-slot>
        @if (auth()->user()->role == 1)
            <div class="container">
                <div class="sidenav  ">
                    <div class="dropdown">
                        <a class="dropdown-btn test"> <i class="bi bi-people"></i> Employés <i
                                class="bi bi-caret-down-fill"></i></a>
                        <div class="dropdown-container">
                            <a href="{{ url('/employes') }}" class="test"> <i class="bi bi-card-list"></i> Listes des
                                employés </a>
                            <a href={{ route('employes.create') }} class="test"> <i class="bi bi-person-fill-add"></i>
                                Create </a>
                        </div>
                    </div>
                    <a href="{{ url('/Rapports') }}" class="test"> <i class="bi bi-flag"></i> Gestion des rapports </a>
                    <a href="{{ url('/Demandes') }}" class="test"> <i class="bi bi-patch-question"></i> Gestion des
                        demandes </a>


                </div>
                <div class="content">
                    <div class="py-12 ">

                        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 ">

                            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

                                <div class="p-6 bg-white border-b border-gray-200 ">
                                    <div class="small-box bg-info">

                                        <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile ">
                                              <a href="#"><div class="circle-tile-heading dark-blue"><i class="fa fa-users fa-fw fa-3x"></i></div></a>
                                              <div class="circle-tile-content dark-blue">
                                                <div class="circle-tile-description text-faded"> Employés</div>
                                                <div class="circle-tile-number text-faded "> {{ \App\Models\Employe::count() }}</div>
                                                <a class="circle-tile-footer"href="{{ url('employes') }}">More Info<i class="fa fa-chevron-circle-right"></i></a>
                                              </div>
                                            </div>
                                          </div>

                                          <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile ">
                                              <a href="#"><div class="circle-tile-heading dark-blue"><i class="bi bi-flag-fill bi-fw fa-3x"></i></div></a>
                                              <div class="circle-tile-content dark-blue">
                                                <div class="circle-tile-description text-faded"> Rapports</div>
                                                <div class="circle-tile-number text-faded "> {{ \App\Models\reports::count() }}</div>
                                                <a class="circle-tile-footer"href="{{ url('Rapports') }}">More Info<i class="fa fa-chevron-circle-right"></i></a>
                                              </div>
                                            </div>
                                          </div>

                                          <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile ">
                                              <a href="#"><div class="circle-tile-heading dark-blue"><i class="bi bi-question-square-fill bi-fw fa-3x"></i></div></a>
                                              <div class="circle-tile-content dark-blue">
                                                <div class="circle-tile-description text-faded"> Deamandes </div>
                                                <div class="circle-tile-number text-faded "> {{ \App\Models\demandes::count() }}</div>
                                                <a class="circle-tile-footer"href="{{ url('Demandes') }}">More Info<i class="fa fa-chevron-circle-right"></i></a>
                                              </div>
                                            </div>
                                          </div>




                                    </div>

                                    @if (session('success'))
                                        <div class="alert alert-success">
                                            {{ session('success') }}
                                        </div>
                                    @endif


                                </div>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
        @else
            <div class="container">
                <div class="sidenav  ">
                    <div class="dropdown">
                        <a class="dropdown-btn test"> <i class="bi bi-flag"></i> Gestion des rapports <i
                                class="bi bi-caret-down-fill"></i></a>
                        <div class="dropdown-container">
                            <a href="{{ url('/Rapports') }}" class="test"> <i class="bi bi-plus-circle-dotted"></i> Ajouter nouveau rapport </a>
                            <a href="{{ route('AdminreponseRapport', ['id' => auth()->user()->employe_id]) }}" class="btn btn-sm btn-primary">
                                <i class="bi bi-bell"></i> Réponses
                            </a>

                        </div>
                    </div>

                    <div class="dropdown">
                        <a class="dropdown-btn test"> <i class="bi bi-patch-question"></i> Gestion des
                            demandes <i
                                class="bi bi-caret-down-fill"></i></a>
                        <div class="dropdown-container">
                            <a href="{{ url('/Demandes') }}" class="test"> <i class="bi bi-plus-circle-dotted"></i> Ajouter nouveau
                                demande </a>
                                <a href="{{ route('AdminreponseDemande', ['id' => auth()->user()->employe_id]) }}"
                                    class="btn btn-sm btn-primary">
                                    <i class="bi bi-bell"></i> Réponses
                                 </a>
                        </div>

                    </div>





                </div>
                <div class="content">
                    <div class="py-12 ">

                        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 ">

                            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

                                <div class="p-6 bg-white border-b border-gray-200 ">

                                    @if (session('success'))
                                        <div class="alert alert-success">
                                            {{ session('success') }}
                                        </div>
                                    @endif




                                </div>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
        @endif
    </x-app-layout>


    <script>
        var dropdown = document.getElementsByClassName("dropdown-btn");
        var i;

        for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var dropdownContent = this.nextElementSibling;
                if (dropdownContent.style.display === "block") {
                    dropdownContent.style.display = "none";
                } else {
                    dropdownContent.style.display = "block";
                }
            });
        }
    </script>

@endauth
