@foreach ($orders as $order)
    <div class="order">
        <h3>訂單編號: {{ $order->id }}</h3>
        <p>訂單日期: {{ $order->created_at }}</p>

        <h4>商品:</h4>
        <ul>
            @foreach ($order->products as $product)
                <li>
                    商品名稱: {{ $product->name }} 
                </li>
            @endforeach
        </ul>
    </div>
@endforeach
