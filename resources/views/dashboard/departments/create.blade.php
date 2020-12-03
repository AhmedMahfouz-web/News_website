@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.create')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i> @lang('site.dashboard')</a></li>
            <li><a href="{{route('dashboard.departments.index')}}"><i class="fa fa-th-list"></i>
                    @lang('site.departments')</a></li>
            <li class="active"><i class="fa fa-plus"></i> @lang('site.create')</li>
        </ol>
    </section>

    <section class="content">

        <div class="box box-outline box-primary">
            <div class="box-header with-border">
                <h2 class="box-title">@lang('site.create') @lang('site.new_department')</h2>
            </div>

            <div class="box-body">
                @include('partials._errors')

                {{-- Start form --}}
                <form action="{{ route('dashboard.departments.store') }}" method="POST">

                    {{ csrf_field() }}
                    {{ method_field('post') }}

                    <div class="form-group">
                        <label for="name">@lang('site.dep_name')</label>
                        <input type="text" class="form-control " name="name" id="name"
                            placeholder="@lang('site.enter') @lang('site.dep_name')" value="{{ old('name') }}">
                    </div>

                    <div class="form-group">
                        <label for="desc">@lang('site.dep_desc')</label>
                        <input type="text" class="form-control " name="desc" id="desc"
                            placeholder="@lang('site.enter') @lang('site.dep_desc')" value="{{ old('desc') }}">
                    </div>

                    @if (!empty($department))

                    {{-- Department --}}
                    <div class="form-group">
                        <label for="parent_id">@lang('site.sub_to')</label>

                        <select name="parent_id" id="parent_id" class="form-control">

                            <option value="{{ $department[0]->id }}">{{ $department[0]->name }}</option>

                        </select>
                    </div>

                    {{-- Monetor --}} {{-- Editor --}} {{-- Writer --}}
                    @php
                    $roles = ['monetor', 'editor', 'writer']; //Setup the roles array
                    @endphp

                    @foreach ($roles as $role)

                    <div class="form-group">
                        <label for="{{$role}}_id">@lang('site.' . $role)</label>

                        <select name="{{$role}}_id" id="{{$role}}_id" class="form-control">
                            <option value="">بدون</option>

                            @foreach ($users as $user)

                            <option value="{{ $user->id }}">{{ $user->first_name . ' ' . $user->last_name}}</option>

                            @endforeach
                        </select>
                    </div>

                    @endforeach

                    @else

                    {{-- Department --}}
                    <div class="form-group">
                        <label for="parent_id">@lang('site.part_of_department')</label>

                        <select name="parent_id" id="parent_id" class="form-control">
                            <option value="">غير تابع</option>

                            @foreach ($departments as $department)

                            <option value="{{ $department->id }}">{{ $department->name }}</option>

                            @endforeach
                        </select>
                    </div>

                    {{-- Monetor --}} {{-- Editor --}} {{-- Writer --}}
                    @php
                    $roles = ['monetor', 'editor', 'writer']; //Setup the roles array
                    @endphp

                    @foreach ($roles as $role)

                    <div class="form-group">
                        <label for="{{$role}}_id">@lang('site.' . $role)</label>

                        <select name="{{$role}}_id" id="{{$role}}_id" class="form-control">
                            <option value="">بدون</option>

                            @foreach ($users as $user)

                            <option value="{{ $user->id }}">{{ $user->first_name . ' ' . $user->last_name}}</option>

                            @endforeach
                        </select>
                    </div>

                    @endforeach

                    @endif

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
