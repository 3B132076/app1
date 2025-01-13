<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\User;
use App\Models\Product;
class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $users = User::all();
        foreach ($users as $user) {
            for ($i = 1; $i <= 3; $i++) {
                // 創建訂單並指定 product_id
                $order = Order::create([
                    'user_id' => $user->id,
                    'product_id' => Product::inRandomOrder()->first()->id,  // 隨機選擇一個商品
                ]);
            }
        }
        foreach ($users as $user) {
            for ($i = 1; $i <= 3; $i++) {
                // 創建訂單
                $order = Order::create([
                    'user_id' => $user->id,
                ]);


                // 為每個訂單創建 3 個不同商品 (order_items)
                $products = Product::inRandomOrder()->take(3)->get();
                foreach ($products as $product) {
                    $order->orderItems()->create([
                        'product_id' => $product->id,
                        'quantity' => 1,  // 假設每個商品的數量為 1
                        'price' => $product->price,  // 假設 order_items 表有 price 欄位
                    ]);
                }
            }
        }
    }
}
