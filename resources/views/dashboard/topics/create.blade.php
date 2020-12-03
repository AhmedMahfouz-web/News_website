@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.create')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i> @lang('site.dashboard')</a></li>
            <li><a href="{{route('dashboard.topics.index')}}"><i class="fa fa-th-list"></i>
                    @lang('site.topics')</a></li>
            <li class="active"><i class="fa fa-plus"></i> @lang('site.create')</li>
        </ol>
    </section>

    <section class="content">

        <div class="box box-outline box-primary">
            <div class="box-header with-border">
                <h2 class="box-title">@lang('site.create') @lang('site.new_topic')</h2>
            </div>

            <div class="box-body">
                @include('partials._errors')

                {{-- Start form --}}
                <form action="{{ route('dashboard.topics.store') }}" method="POST">

                    {{ csrf_field() }}
                    {{ method_field('post') }}

                    <div class="form-group">
                        <label for="name">@lang('site.topic_name')</label>
                        <input type="text" class="form-control " name="name" id="name"
                            placeholder="@lang('site.enter') @lang('site.topic_name')" value="{{ old('name') }}">
                    </div>

                    <div class="form-group">
                        <label for="desc">@lang('site.topic_desc')</label>
                        <input type="text" class="form-control " name="desc" id="desc"
                            placeholder="@lang('site.enter') @lang('site.topic_desc')" value="{{ old('desc') }}">
                    </div>



                    <div class="form-group">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i>
                            @lang('site.create')</button>
                    </div>

                </form> <!-- End form -->
            </div>

        </div>

    </section><!-- end of content -->

</div><!-- end of content wrapper -->

@endsection
