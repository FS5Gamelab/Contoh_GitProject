<?php

namespace App\Http\Controllers\Admin;

use App\BookUser;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BookBorrowerReturnController extends Controller
{
    public function index()
    {
        $book_users = BookUser::where('status', 1)->get();
        return view('admin.book-borrowers-return.index', compact('book_users'));
    }

    public function show($id)
    {
        $book_user = BookUser::find($id);

        return view('admin.book-borrowers-return.show', compact('book_user'));
    }

    public function update(Request $request, $id)
    {
        // Validate the request if needed
        $request->validate([
            'tanggal_pengembalian_buku' => 'required|date',
        ]);

        // Find the BookUser record
        $bookUser = BookUser::findOrFail($id);

        // Update the return date
        $bookUser->update([
            'date_return' => $request->input('tanggal_pengembalian_buku'),
        ]);

        // Redirect back or do something else
        return redirect()->route('admin.book-borrowers-return.index')->with('success', 'Return date updated successfully');
    }

}
