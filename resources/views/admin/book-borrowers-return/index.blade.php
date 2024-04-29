@extends('layouts.stisla.index', ['title' => 'Histori Pengembalian Buku', 'section_header' => 'Pengembalian Peminjaman Buku'])

@section('content')
<div class="row">
  <div class="col-lg-12 table-responsive">
    <div class="card px-3 py-3">
      <table class="table table-hovered text-center table-bordered" id="datatable">
        <thead>
          <tr>
            <th>#</th>
            <th>Peminjam</th>
            <th>Buku</th>
            <th>Status</th>
            <th>Tanggal Mulai Peminjaman</td>
            <th>Tanggal Selesai Peminjaman</td>
            <th>Disetujui Pada</th>
            <th>Tanggal Pengembalian Buku</th>
            <th>Keterangan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          @foreach($book_users as $book_user)
          <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $book_user->user->name }}</td>
            <td>{{ Str::limit($book_user->book->title, '40', '...') }}</td>
            @if($book_user->status === 1)
            <td class="badge badge-pill badge-success shadow-sm my-2" data-toggle="tooltip" data-placement="top" title="Disetujui">Disetujui</td>
            @else
            <td class="badge badge-pill badge-danger shadow-sm my-2" data-toggle="tooltip" data-placement="top" title="Tidak disetujui">Tidak disetujui</td>
            @endif
            <td>{{ \Carbon\Carbon::parse($book_user->date_start)->locale('id')->isoFormat('D MMMM Y') }}</td>
            <td>{{ \Carbon\Carbon::parse($book_user->date_end)->locale('id')->isoFormat('D MMMM Y') }}</td>
            <td>{{ \Carbon\Carbon::parse($book_user->updated_at)->locale('id')->isoFormat('D MMMM Y, HH:mm') }}</td> 
            <td>
              @if ($book_user->date_return)
                  @if (is_string($book_user->date_return))
                      {{ \Carbon\Carbon::parse($book_user->date_return)->locale('id')->isoFormat('D MMMM Y') }}
                  @else
                      {{ \Carbon\Carbon::parse($book_user->date_return)->locale('id')->isoFormat('D MMMM Y, HH:mm') }}
                  @endif
              @else
                  Buku Masih Dipinjam
              @endif
            </td>  
          </td>            
          <td style="@if ($book_user->date_return === null) @elseif ($book_user->date_return > $book_user->date_end) color: red; @elseif ($book_user->date_return <= $book_user->date_end) color: green; @endif">
            @if ($book_user->date_return === null)
                Proses
            @elseif ($book_user->date_return > $book_user->date_end)
                Terlambat -_-
            @elseif ($book_user->date_return <= $book_user->date_end)
                Tepat Waktu XD
            @endif
          </td>      
            <td>
              <a href="{{ route('admin.book-borrowers-return.show', $book_user->id) }}" data-id="{{ $book_user->id }}" class="btn btn-sm btn-info swal-show-a">
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

@push('js')
@include('admin.book-borrowers-history._script')
@endpush