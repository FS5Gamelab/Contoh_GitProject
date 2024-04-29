@extends('layouts.stisla.index', ['title' => 'Edit Profile', 'section_header' => 'Edit Profile'])
@section('addJavascript')
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


@endsection
@section('content')
<div class="container">
   <div class="row">
      <div class="col-lg-7">
          <div class="card">
              <form action="{{ route('anggota.dashboard.update') }}" method="POST" id="form_user_update">
                  @csrf
                  @method('PUT')
                  <table class="table">
                      <tr>
                          <td style="width: 145px;">Nama</td>
                          <td style="width: 10px;">:</td>
                          <td class="text-wrap">
                              <input type="text" class="form-control" name="name" id="name_edit" value="{{ $user->name }}">
                          </td>
                      </tr>
                      <tr>
                          <td>Email</td>
                          <td>:</td>
                          <td class="text-wrap">
                              <input type="email" class="form-control" name="email" id="email_edit" value="{{ $user->email }} ">
                          </td>
                      </tr>
                      <tr>
                          <td>Alamat</td>
                          <td>:</td>
                          <td class="text-wrap">
                              <input type="text" class="form-control" name="address" id="address_edit" value="{{ $user->address }}">
                          </td>
                      </tr>
                  </table>
              </div>
              <div class="col-lg-5">
               <div class="card">
                <button type="submit" class="btn btn-success" id="user_update_button">Simpan Perubahan</button>
               </div>
          </div>
  
          </form>
      </div>
  </div>
@endsection

@push('js')
<script>
   $('#user_update_button').click(function() {
     Swal.fire({
         title: "Success",
         text: "Menyimpan data",
         icon: "success",
         showConfirmButton: false,
         allowOutsideClick: false,
         allowEscapeKey: false,
         onBeforeOpen: () => {
             Swal.showLoading();
         }
     });
 });
 </script>
@endpush



