@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4">
    <h1 class="text-3xl text-center font-bold text-gray-800 my-4">All Products List</h1>

  

    <!-- Create Button -->
    <div class="mb-2 mt-12 flex justify-between font-semibold">
    <form method="GET" action="{{ route('products.index') }}" class="mb-4 flex space-x-2">
        <input
            type="text"
            name="search"
            placeholder="Search"
            value="{{ request('search') }}"
            class="px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
        >
        <button
            type="submit"
            class="px-4 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500"
        >
            Search
        </button>
    </form>
       <div>
       <a
            href="{{ route('products.create') }}"
            class="px-4 py-2 flex items-center  bg-green-500 text-white rounded-md hover:bg-green-600 focus:outline-none focus:ring-2 focus:ring-green-500"
        >
        <i class="fa-solid fa-plus"></i>
        <p class="ml-2 items-center ">ADD</p>
        </a>
       </div>
    </div>

    <!-- Products Table -->
    <div class="overflow-x-auto">
        <table class="w-full bg-white shadow-md  rounded-lg overflow-hidden">
            <thead class="bg-gray-100 border">
                <tr>
                <th class="text-left px-4 py-2">ID</a></th>
                    <th class="text-left border px-4 py-2">  <a href="?sort=name" class="hover:underline"> <i class="fa-solid fa-sort"></i>Name</a></th>
                    <th class="text-left  border  px-4 py-2"><a href="?sort=price" class=" hover:underline"><i class="fa-solid fa-sort"></i>Price</a></th>
                    <th class="text-left border  px-4 py-2">Description</th>
                    <th class="text-left  border  px-4 py-2">Stock</th>
                    <th class="text-left border  px-4 py-2">Image</th>
                    <th class="text-center border  px-4 py-2">Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($products as $product)
                    <tr class="border hover:bg-gray-50">
                    <td class="px-4 py-2 border ">{{ $product->product_id }}</td>
                        <td class="px-4 py-2 border ">{{ $product->name }}</td>
                        <td class="px-4 py-2 border ">${{ number_format($product->price, 2) }}</td>
                        <td class="px-4 py-2 border ">{{ $product->description }}</td>
                        <td class="px-4 py-2 border ">{{ $product->stock }}</td>
                        <td class="px-4 py-2 h-8 w-8 border "><img src="{{ asset('storage/'.$product->image) }}"  alt="" srcset=""></td>
                        <td class="px-4 py-2 space-x-2 flex justify-center">
                        <div class="flex items-center space-x-2 border p-2">
                        <i class="fa-solid fa-eye text-blue-500"></i>
                        <a href="{{ route('products.show', $product->id) }}" class="text-blue-500 hover:underline">View</a>
                        </div>
                       <div class="flex items-center space-x-2 border p-2">
                       <i class="fa-solid fa-pen-to-square text-yellow-500"></i>
                       <a href="{{ route('products.edit', $product->id) }}" class="text-yellow-500 hover:underline">Edit</a>
                       </div>
                            <div class="flex items-center space-x-2 border p-2">
                            <form method="POST" action="{{ route('products.destroy', $product->id) }}" class="inline-block">
                                @csrf
                                @method('DELETE')
                                <i class="fa-solid fa-trash text-red-500"></i>
                                <button
                                    type="submit"
                                    class="text-red-500 hover:underline"
                                    onclick="return confirm('Are you sure?')"
                                >
                                    Delete
                                </button>
                            </form>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <!-- Pagination Links -->
    <div class="mt-4">
        {{ $products->links('pagination::tailwind') }}
    </div>
</div>
@endsection
