@extends('layouts.stisla.index', ['title' => auth()->user()->id === 1 ? 'Admin Dashboard' : 'Operator Dashboard',
'section_header' => auth()->user()->id === 1 ? 'Admin Dashboard' : 'Operator Dashboard'])

@section('addCss')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/apexcharts">
@endsection

@section('addJavascript')
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        var options = {
            chart: {
                type: 'pie',
            },
            series: [{{ $total_setuju }}, {{ $total_belum }}, {{ $total_tsetuju }}],
            labels: ['Disetujui', 'Belum Di setujui', 'Ditolak'],
            colors: ['#28a745', '#ffc107', '#dc3545'],
        };

        var chart = new ApexCharts(document.querySelector("#chart-container"), options);
        chart.render();
    });

    document.addEventListener("DOMContentLoaded", function () {
        // Donut Chart Options
        var donutOptions = {
            chart: {
                type: 'donut',
            },
            series: [{{ $total_admins }}, {{ $total_operators }}, {{ $total_members }}],
            labels: ['Admin', 'Operator', 'Anggota'],
            colors: ['#28a745', '#ffc107', '#007bff'],
        };

        // Donut Chart
        var donutChart = new ApexCharts(document.querySelector("#donut-chart-container"), donutOptions);
        donutChart.render();
    });
</script>
@endsection

@section('content')
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-12">
    <div class="card card-statistic-2">
      <div id="donut-chart-container" style="height: 90px; width: 360px;"></div>
      <div class="card-stats">
        <div class="card-stats-items mt-3">
          <div class="card-stats-item">
            <div class="card-stats-item-count">{{ $total_admins }}</div>
            <div class="card-stats-item-label">Admin</div>
          </div>
          <div class="card-stats-item">
            <div class="card-stats-item-count">{{ $total_operators }}</div>
            <div class="card-stats-item-label">Operator</div>
          </div>
          <div class="card-stats-item">
            <div class="card-stats-item-count">{{ $total_members }}</div>
            <div class="card-stats-item-label">Anggota</div>
          </div>
        </div>
      </div>
      <a href="{{ route('admin.users.index') }}">
        <div class="card-icon shadow-primary bg-primary">
          <i class="fas fa-users mr-1"></i>
        </div>
      </a>
      <div class="card-wrap">
        <div class="card-header">
          <h4>Total Pengguna</h4>
        </div>
        <div class="card-body">
          {{ $total_users }}
        </div>
      </div>
    </div>
  </div>

  <div class="col-lg-6 col-md-6 col-sm-12">
    <div class="card card-statistic-2">
      <div id="chart-container" style="height: 90px; width:400px;"></div>
      <div class="card-stats">
        <div class="card-stats-items mt-3">
          <div class="card-stats-item">
            <div class="card-stats-item-count">{{ $total_setuju }}</div>
            <div class="card-stats-item-label">Disetujui</div>
          </div>
          <div class="card-stats-item">
            <div class="card-stats-item-count">{{ $total_belum }}</div>
            <div class="card-stats-item-label">Belum Disetujui</div>
          </div>
          <div class="card-stats-item">
            <div class="card-stats-item-count">{{ $total_tsetuju  }}</div>
            <div class="card-stats-item-label">Ditolak</div>
          </div>
        </div>
      </div>
      <a href="{{ route('admin.book-borrowers-history.index') }}">
        <div class="card-icon shadow-primary bg-primary">
          <i class="fas fa-users mr-1"></i>
        </div>
      </a>
      <div class="card-wrap">
        <div class="card-header">
          <h4>Total Peminjam</h4>
        </div>
        <div class="card-body">
          {{ $total_bukusem }}
        </div>
      </div>
    </div>
  </div>

    <div class="col-lg-6 col-md-6 col-sm-8">
      <!-- Book Types Statistics Card -->
      <div class="card card-statistic-2">
          <a href="{{ route('admin.book-types.index') }}">
              <div class="card-icon shadow-primary bg-primary">
                  <i class="fas fa-folder mr-1"></i>
              </div>
          </a>
          <div class="card-wrap">
              <div class="card-header">
                  <h4>Total Categories</h4>
              </div>
              <div class="card-body">
                  {{ $total_categories }}
              </div>
          </div>
      </div>
  </div>

    <div class="col-lg-6 col-md-6 col-sm-12">
      <!-- Books Statistics Card -->
      <div class="card card-statistic-2">
          <a href="{{ route('admin.books.index') }}">
              <div class="card-icon shadow-primary bg-primary">
                  <i class="fas fa-book mr-1"></i>
              </div>
          </a>
          <div class="card-wrap">
              <div class="card-header">
                  <h4>Total Book</h4>
              </div>
              <div class="card-body">
                  {{ $total_Books }}
              </div>
          </div>
      </div>
  </div>

    <div class="col-lg-12 col-md-12 col-sm-16">
        <!-- Login Logs Card -->
        <div class="card px-2 py-3">
            <h5 class="mx-2">Log Login Pengguna</h5>
            <hr>
            <ul class="list-group">
                @forelse($authenticate_logs as $authenticate_log)
                <li class="list-group-item">Login dari {{ $authenticate_log->user->name }} -
                    {{ $authenticate_log->last_login_ip }} [
                    {{ $authenticate_log->indonesian_date_format($authenticate_log->last_login_date) }}
                    {{ $authenticate_log->time($authenticate_log->last_login_time) }} ]</li>
                @empty
                <li class="list-group-item text-danger font-weight-bold text-uppercase text-center">Data tidak ada!</li>
                @endforelse
            </ul>
            <button type="button" class="btn btn-sm btn-primary mt-3" data-toggle="modal" data-target="#staticBackdrop">
                Lihat semua
            </button>
        </div>
    </div>
</div>

@endsection

@push('modal')
@include('admin.dashboard.modal.show')
@endpush
