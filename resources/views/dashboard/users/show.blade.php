@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.activity')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i>@lang('site.dashboard')</a></li>
            <li><a href="{{route('dashboard.users.index')}}"><i class="fa fa-users"></i> @lang('site.users')</a></li>
            <li class="active"><i class="fa fa-users"></i> @lang('site.show')</li>
        </ol>
    </section>

    <div class="box" style="margin-top: 15px">
        <h2 class="box-header with-border">{{$user->first_name . ' ' . $user->last_name}}</h2>

        <div class="box-body">
            <ul class="timeline">

                @foreach ($activities as $activity)

                <!-- timeline time label -->
                <li class="time-label">
                    <span class="bg-red">
                        {{ $activity->created_at }}
                    </span>
                </li>
                <!-- /.timeline-label -->

                <!-- timeline item -->
                <li>
                    <!-- timeline icon -->
                    <i class="fa fa-envelope bg-blue"></i>
                    <div class="timeline-item">
                        {{-- <span class="time"><i class="fa fa-clock-o"></i> 12:05</span> --}}

                        <h3 class="timeline-header"><a href="#">{{$activity->description}}</a> ...</h3>

                        <div class="timeline-body">
                            {{json_encode($activity->changes, JSON_PRETTY_PRINT, 250)}}
                        </div>

                        <div class="timeline-footer">
                            <a class="btn btn-primary btn-xs">...</a>
                        </div>
                    </div>
                </li>
                <!-- END timeline item -->


                @endforeach

            </ul>
        </div>
    </div>


</div>
@endsection
