<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CartItemController;
use App\Http\Controllers\OrderController;
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

Route::get('/', function () {
    return view('welcome');
});
//Route::resource('products', ProductController::class)->only([
//    'index', 'show', 'store', 'update', 'destroy'
//]);

Route::get('products', [ProductController::class, 'index'])->name('products.index');
Route::get('products/{product}', [ProductController::class, 'show'])->name('products.show');
Route::get('products/create', [ProductController::class, 'create'])->name("products.create");
Route::post('products', [ProductController::class, 'store'])->name("products.store");
Route::get('products/{products}/edit', [ProductController::class, 'edit'])->name("products.edit");
Route::patch('products/{product}', [ProductController::class, 'update'])->name("products.update");
Route::delete('products/{product}', [ProductController::class, 'destroy'])->name("products.destroy");

/*
products.index:     GET|HEAD    /products                   ProductController@index    顯示所有產品的列表（顯示產品的總覽頁面）
products.show:      GET|HEAD    /products/{product}         ProductController@show     顯示指定產品的詳細資訊
products.create:    GET|HEAD    /products/create            ProductController@create   顯示新增產品的表單頁面（供管理員新增產品）
products.store:     POST        /products                   ProductController@store    儲存新增的產品資料
products.edit:      GET|HEAD    /products/{product}/edit    ProductController@edit     顯示編輯指定產品的表單頁面（供管理員修改產品資訊）
products.update:    PUT|PATCH   /products/{product}         ProductController@update   更新指定產品的資料
products.destroy:   DELETE      /products/{product}         ProductController@destroy  刪除指定的產品（從資料庫移除該產品）
*/

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});
Route::resource('cart_items', CartItemController::class);
Route::resource('orders', OrderController::class);
require __DIR__.'/auth.php';
