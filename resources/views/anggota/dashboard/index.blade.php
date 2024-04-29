@extends('layouts.stisla.index', ['title' => 'Anggota Dashboard', 'section_header' => 'Selamat Datang Di Perpustakaan Gratis Kami'])

@section('content')
<div class="flexible-container" id="text-container">

  <div class="row">
    <div class="col-lg-6 col-md-6 col-sm-12">
      <div class="card card-statistic-2">
        <div class="card-header">
          <h5 class="card-title"><b>Tentang Kami</b></h5>
        </div>
        <div class="card-body">
          <div class="card-stats text-justify">
            <h6><b>Kami menyadari bahwa minat baca bangsa Indonesia saat ini masih di bawah rata-rata dibandingkan negara tetangga di Asia Tenggara.
                Maka dari itu, kami membuat website perpustakaan gratis ini untuk Anda dan menyediakan konten-konten yang bermanfaat secara gratis.</b></h6>
          </div>
        </div>
      </div>
    </div>
  
    <div class="col-lg-6 col-md-6 col-sm-12">
      <div class="card card-statistic-2">
        <div class="card-header">
          <h5 class="card-title"><b>Tata-Tertib</b></h5>
        </div>
        <div class="card-body">
          <ul>
            <h6>
            <li>Harap untuk mengembalikan buku tepat waktu.</li>
            <li>Harap tidak merusak buku yang dipinjam.</li>
            <li>Harap merawat buku yang sudah dipinjam dengan baik.</li>
            </h6>
          </ul>
        </div>
      </div>
    </div>
  </div>  
  </div>

</div><br>
<div class="row">
  <div class="col-lg-4 col-md-4 col-sm-12">
    <div class="card card-statistic-2">
      <div class="card-stats">
        <div class="card-stats-items mt-3">
          <div class="card-stats-item">
            <div class="card-stats-item-count">{{ count($book_approved) }}</div>
            <div class="card-stats-item-label">Disetujui</div>
          </div>
          <div class="card-stats-item">
            <!-- <div class="card-stats-item-count"></div>
            <div class="card-stats-item-label">Menunggu</div> -->
          </div>
          <div class="card-stats-item">
            <div class="card-stats-item-count">{{ count($book_not_approve) }}</div>
            <div class="card-stats-item-label">Menunggu</div>
          </div>
        </div>
      </div>
      <div class="card-icon shadow-primary bg-primary">
        <i class="fas fa-book"></i>
      </div>
      <div class="card-wrap">
        <div class="card-header">
          <h4>Total Buku Yang Saya Pinjam</h4>
        </div>
        <div class="card-body">
          {{ count($book_user) }}
        </div>
      </div>
    </div>
  </div>
<br>
</div>


</div>

</div>
@endsection