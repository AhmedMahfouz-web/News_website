@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.edit')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i> @lang('site.dashboard')</a></li>
            <li><a href="{{route('dashboard.users.index')}}"><i class="fa fa-users"></i> @lang('site.users')</a></li>
            <li class="active"><i class="fa fa-edit"></i> @lang('site.edit')</li>
        </ol>
    </section>

    <section class="content">

        <div class="box box-outline box-primary">
            <div class="box-header with-border">
                <h2 class="box-title">@lang('site.edit') @lang('site.user')</h2>
            </div>

            <div class="box-body">
                @include('partials._errors')

                {{-- Start form --}}
                <form action="{{ route('dashboard.users.update', $user->id) }}" method="POST">

                    {{ csrf_field() }}
                    {{ method_field('put') }}

                    <div class="form-group">
                        <label for="first_name">@lang('site.first_name')</label>
                        <input type="text" class="form-control " name="first_name" id="first_name"
                            placeholder="@lang('site.enter') @lang('site.first_name')" value="{{ $user->first_name }}">
                    </div>

                    <div class="form-group">
                        <label for="last_name">@lang('site.last_name')</label>
                        <input type="text" class="form-control " name="last_name" id="last_name"
                            placeholder="@lang('site.enter') @lang('site.last_name')" value="{{ $user->last_name }}">
                    </div>

                    <div class="form-group">
                        <label for="email">@lang('site.email')</label>
                        <input type="email" class="form-control " name="email" id="email"
                            placeholder="@lang('site.enter') @lang('site.email')" value="{{ $user->email }}">
                    </div>

                    <div class="form-group">
                        <label for="img">@lang('site.img')</label>
                        <input type="file" class="form-control img" name="img">
                    </div>

                    <div class="form-group">
                        <img src="{{ asset('uploads/user_images/' . $user->img) }}" style="width: 150px"
                            class="img-thumbnail img-preview" alt="">
                    </div>

                    @php

                    $models = ['users', 'departments'];
                    $maps = ['create', 'read', 'update', 'delete'];

                    @endphp

                    <!-- Custom Tabs -->
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            @foreach ($models as $index=>$model)
                            <li class="{{$index == 0 ? 'active' : '' }}"><a href="#{{$model}}"
                                    data-toggle="tab">@lang('site.' . $model)</a></li>
                            @endforeach
                        </ul>

                        <div class="tab-content">

                            @foreach ($models as $index=>$model)
                            <div class="tab-pane {{$index == 0 ? 'active' : '' }}" id="{{$model}}">

                                @foreach ($maps as $map)

                                <div class="check-box inline" style="margin: 0 5px">
                                    <label>
                                        <input type="checkbox" name="permissions[]"
                                            {{ $user->hasPermission($map . '_' . $model) ? 'checked' : ''}}
                                            value="{{$map . '_' . $model}}">
                                        @lang('site.' . $map)
                                    </label>
                                </div>

                                @endforeach

                            </div>

                            @endforeach
                        </div>

                    </div>
                    <!-- nav-tabs-custom -->

                    <div class="form-group">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-edit"></i>
                            @lang('site.save')</button>
                    </div>

                </form> <!-- End form -->
            </div>

        </div>

    </section><!-- end of content -->

</div><!-- end of content wrapper -->


@endsection
