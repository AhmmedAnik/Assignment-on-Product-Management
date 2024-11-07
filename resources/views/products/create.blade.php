@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4">
    <h1 class="text-3xl font-bold text-gray-800 mb-6">Create New Product</h1>

    <form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data" class="space-y-6 bg-white p-6 rounded-lg shadow-lg">
        @csrf

        <!-- Product ID Input -->
        <div>
            <label for="product_id" class="block text-sm font-medium text-gray-700">Product ID:</label>
            <input
                type="text"
                id="product_id"
                name="product_id"
                value="{{ old('product_id') }}"
                required
                class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500"
            >
            @error('product_id')
                <div class="text-red-500 text-sm mt-1">{{ $message }}</div>
            @enderror
        </div>

        <!-- Name Input -->
        <div>
            <label for="name" class="block text-sm font-medium text-gray-700">Name:</label>
            <input
                type="text"
                id="name"
                name="name"
                value="{{ old('name') }}"
                required
                class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500"
            >
            @error('name')
                <div class="text-red-500 text-sm mt-1">{{ $message }}</div>
            @enderror
        </div>

        <!-- Description Input -->
        <div>
            <label for="description" class="block text-sm font-medium text-gray-700">Description:</label>
            <textarea
                id="description"
                name="description"
                class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500"
            >{{ old('description') }}</textarea>
            @error('description')
                <div class="text-red-500 text-sm mt-1">{{ $message }}</div>
            @enderror
        </div>

        <!-- Price Input -->
        <div>
            <label for="price" class="block text-sm font-medium text-gray-700">Price:</label>
            <input
                type="number"
                id="price"
                name="price"
                value="{{ old('price') }}"
                required
                class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500"
            >
            @error('price')
                <div class="text-red-500 text-sm mt-1">{{ $message }}</div>
            @enderror
        </div>

        <!-- Stock Input -->
        <div>
            <label for="stock" class="block text-sm font-medium text-gray-700">Stock:</label>
            <input
                type="number"
                id="stock"
                name="stock"
                value="{{ old('stock') }}"
                class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500"
            >
            @error('stock')
                <div class="text-red-500 text-sm mt-1">{{ $message }}</div>
            @enderror
        </div>

        <!-- Image URL Input -->
        <div>
            <label for="image" class="block text-sm font-medium text-gray-700">Image URL:</label>
            <input
                type="file"
                id="image"
                name="images"
                value="{{ old('image') }}"
                class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500"
            >
            @error('image')
                <div class="text-red-500 text-sm mt-1">{{ $message }}</div>
            @enderror
        </div>

        <!-- Submit Button -->
        <button
            type="submit"
            class="w-full py-2 px-4 bg-blue-600 text-white font-semibold rounded-md shadow hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2"
        >
            Create Product
        </button>
    </form>

    <a href="{{ route('products.index') }}" class="inline-block mt-4 text-blue-500 hover:underline">Back to Products</a>
</div>
@endsection
