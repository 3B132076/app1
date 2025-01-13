<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

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
Route::resource('products', ProductController::class)->only([
    'index', 'show', 'store', 'update', 'destroy'
]);

/*
products.index:     GET|HEAD    /products                   ProductController@index    顯示所有產品的列表（顯示產品的總覽頁面）
products.show:      GET|HEAD    /products/{product}         ProductController@show     顯示指定產品的詳細資訊
products.create:    GET|HEAD    /products/create            ProductController@create   顯示新增產品的表單頁面（供管理員新增產品）
products.store:     POST        /products                   ProductController@store    儲存新增的產品資料
products.edit:      GET|HEAD    /products/{product}/edit    ProductController@edit     顯示編輯指定產品的表單頁面（供管理員修改產品資訊）
products.update:    PUT|PATCH   /products/{product}         ProductController@update   更新指定產品的資料
products.destroy:   DELETE      /products/{product}         ProductController@destroy  刪除指定的產品（從資料庫移除該產品）
*/
