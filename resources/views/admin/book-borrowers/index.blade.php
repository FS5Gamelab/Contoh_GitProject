@extends('layouts.stisla.index', ['title' => 'Daftar Peminjam Buku', 'section_header' => 'Daftar Peminjam Buku'])

@section('content')
<div class="row">
  <div class="col-lg-12 table-responsive">
    <div class="card px-3 py-3">
      <div class="row">
        <div class="col-lg-12 px-3 py-3 text-right">
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#create-book-borrower-modal">
            Tambah Data Peminjam Buku Oke
          </button>
        </div>
      </div>
      <table class="table table-hovered text-center table-bordered" id="datatable">
        <thead>
          <tr>
            <th>#</th>
            <th>Peminjam</th>
            <th>Buku</th>
            <th>Tanggal Mulai</th>
            <th>Tanggal Selesai</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          @foreach($book_users as $book_user)
          <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $book_user->user->name }}</td>
            <td>{{ Str::limit($book_user->book->title, 40, '...') }}</td>
            <td>{{ \Carbon\Carbon::parse($book_user->date_start)->locale('id')->isoFormat('D MMMM Y') }}</td>
            <td>{{ \Carbon\Carbon::parse($book_user->date_end)->locale('id')->isoFormat('D MMMM Y') }}</td>            
            <td>
              <a href="{{ route('admin.book-borrowers.show', $book_user->id) }}" data-id="{{ $book_user->id }}" class="btn btn-sm btn-info swal-show-a">
                <i class="fas fa-info-circle"></i>
              </a>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection

@push('modal')
@include('admin.book-borrowers.modal.book.create')
@endpush

@push('js')
@include('admin.book-borrowers._script')
@endpush