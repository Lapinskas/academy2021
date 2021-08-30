<x-app-layout>
    <x-slot name="header">
        Products
    </x-slot>

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p></p>
        </div>
    @endif

    <div class="table-container">
        <table class="table">
            <tr>
                <th class="table-header">Name</th>
                <th class="table-header">Description</th>
                <th class="table-header">Price</th>
            </tr>
            @foreach ($products as $product)
                <tr>
                    <td class="table-cell">{{ $product->name }}</td>
                    <td class="table-cell">{{ $product->description }}</td>
                    <td class="table-cell">{{ $product->price }}</td>
                </tr>
            @endforeach
        </table>
    </div>
    <style>
        .table {
            padding-top: 50px;
        }
        .table-header {
            border: 1px solid black;
            padding: 5px 20px;
        }
        .table-cell {
            text-align: center;
        }
    </style>
</x-app-layout>
