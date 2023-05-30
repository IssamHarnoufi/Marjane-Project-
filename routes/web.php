<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\serveursController;
use App\Http\Controllers\EmployesController;
use App\Http\Controllers\userController;
use App\Http\Controllers\demandeUserController;
use App\Http\Controllers\rapportUserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/about', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::resource('employes', EmployesController::class);


/*--------------Demande Routes-----------*/

Route::resource('demande', demandeUserController::class);
Route::post('demande/{id}/reponseDemande', [demandeUserController::class,'réponseDemande'])->name('reponseDemande');
Route::post('reponse-demandes/{demandeId}', [demandeUserController::class,'reponseDemandestore'])->name('reponseDemandestore');
Route::get('reponse-demande/{id}', [demandeUserController::class,'AdminreponseDemande'])->name('AdminreponseDemande');
Route::get('employes/{id}/getRequest', [EmployesController::class,'getRequest'])
->name('work.vacation');
Route::get('/Demandes', [EmployesController::class,'showRequest'])
    ->name('showRequest');
/*------------------------------*/


/*--------------Rapport Routes-----------*/

Route::resource('rapport', rapportUserController::class) ;
Route::post('rapport/{id}/réponseRapport', [rapportUserController::class,'réponseRapport'])->name('réponseRapport');
Route::post('reponse-rapports/{rapportId}', [rapportUserController::class,'reponseRapportstore'])->name('reponseRapportstore');
Route::get('reponse-rapport/{id}', [rapportUserController::class,'AdminreponseRapport'])->name('AdminreponseRapport');
Route::get('employes/{id}/getReports', [EmployesController::class,'getReports'])
        ->name('work.certificate');
Route::get('/Rapports', [EmployesController::class,'showRepport'])
    ->name('showRepport');
/*------------------------------*/







require __DIR__.'/auth.php';

