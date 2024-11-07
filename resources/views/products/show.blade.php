@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4">
    <h1 class="text-3xl font-bold text-gray-800 mb-6">Product Details</h1>

    <div class="bg-white p-6 rounded-lg shadow-lg space-y-4">
        <!-- Product ID -->
        <div>
            <strong class="text-gray-700">Product ID:</strong>
            <span class="text-gray-900">{{ $product->product_id }}</span>
        </div>

        <!-- Name -->
        <div>
            <strong class="text-gray-700">Name:</strong>
            <span class="text-gray-900">{{ $product->name }}</span>
        </div>

        <!-- Description -->
        <div>
            <strong class="text-gray-700">Description:</strong>
            <span class="text-gray-900">{{ $product->description }}</span>
        </div>

        <!-- Price -->
        <div>
            <strong class="text-gray-700">Price:</strong>
            <span class="text-gray-900">${{ number_format($product->price, 2) }}</span>
        </div>

        <!-- Stock -->
        <div>
            <strong class="text-gray-700">Stock:</strong>
            <span class="text-gray-900">{{ $product->stock }}</span>
        </div>

        <!-- Image -->
        <div>
            <strong class="text-gray-700">Image:</strong>
            @if($product->image)
                <img src="{{ $product->image }}" alt="{{ $product->name }}" class="mt-2 w-48 h-48 object-cover rounded-md shadow-md">
            @else
                <p class="text-gray-500 mt-2">No image available.</p>
            @endif
        </div>
    </div>

    <!-- Actions -->
    <div class="mt-6 space-x-4 mb-4 flex ">
        <a href="{{ route('products.edit', $product->id) }}" class="inline-block  px-4 py-2 bg-yellow-500 text-white font-semibold rounded-md shadow hover:bg-yellow-600 focus:outline-none focus:ring-2 focus:ring-yellow-500 focus:ring-offset-2">
            Edit
        </a>
        <form action="{{ route('products.destroy', $product->id) }}" method="POST" class="inline-block">
            @csrf
            @method('DELETE')
            <button type="submit" onclick="return confirm('Are you sure?')" class="px-4 py-2 bg-red-600 text-white font-semibold rounded-md shadow hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2">
                Delete
            </button>
        </form>
        <a href="{{ route('products.index') }}" class="inline-block px-4 py-2  bg-blue-500 text-white font-semibold rounded-md shadow hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2">
            Back to Products
        </a>
    </div>
</div>
@endsection
