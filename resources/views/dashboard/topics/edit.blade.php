@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.create')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i> @lang('site.dashboard')</a></li>
            <li><a href="{{route('dashboard.departments.index')}}"><i class="fa fa-th-list"></i>
                    @lang('site.departments')</a></li>
            <li class="active"><i class="fa fa-edit"></i> @lang('site.create')</li>
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
                <form action="{{ route('dashboard.departments.update', $department) }}" method="POST">

                    {{ csrf_field() }}
                    {{ method_field('put') }}

                    <div class="form-group">
                        <label for="name">@lang('site.dep_name')</label>
                        <input type="text" class="form-control " name="name" id="name"
                            placeholder="@lang('site.enter') @lang('site.dep_name')" value="{{ $department->name }}">
                    </div>

                    <div class="form-group">
                        <label for="desc">@lang('site.dep_desc')</label>
                        <input type="text" class="form-control " name="desc" id="desc"
                            placeholder="@lang('site.enter') @lang('site.dep_desc')" value="{{ $department->desc }}">
                    </div>

                    <div class="form-group">
                        <label for="parent_id">@lang('site.dep_desc')</label>
                        <select name="parent_id" id="parent_id" class="form-control">
                            <option value="">غير تابع</option>
                            @foreach ($departments as $dep)

                            @if ($department->id != $dep->id)
                            <!-- Make sure that user doesn't make the department parent for himself -->

                            <option value="{{ $dep->id }}" @if ($department->parent_id == $dep->id) selected @endif>
                                {{ $dep->name }}
                            </option>

                            @endif

                            @endforeach
                        </select>
                    </div>


                    {{-- Mentor --}}
                    <div class="form-group">
                        <label for="monetor">@lang('site.monetor')</label>

                        <select name="monetor_id" id="monetor_id" class="form-control">
                            <option value="">بدون</option>

                            @foreach ($users as $user)

                            <option value="{{ $user->id }}" @if ($department->monetor_id == $user->id) selected
                                @endif>{{ $user->first_name . ' ' . $user->last_name}}</option>

                            @endforeach
                        </select>
                    </div>

                    {{-- Editor --}}
                    <div class="form-group">
                        <label for="editor_id">@lang('site.editor')</label>

                        <select name="editor_id" id="editor_id" class="form-control">
                            <option value="">بدون</option>

                            @foreach ($users as $user)

                            <option value="{{ $user->id }}" @if ($department->editor_id == $user->id) selected
                                @endif>{{ $user->first_name . ' ' . $user->last_name}}</option>

                            @endforeach
                        </select>
                    </div>

                    {{-- Writer --}}
                    <div class="form-group">
                        <label for="writer_id">@lang('site.writer')</label>

                        <select name="writer_id" id="writer_id" class="form-control">
                            <option value="">بدون</option>

                            @foreach ($users as $user)

                            <option value="{{ $user->id }}" @if ($department->writer_id == $user->id) selected
                                @endif>{{ $user->first_name . ' ' . $user->last_name}}</option>

                            @endforeach
                        </select>
                    </div>



                    <div class="form-group">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-edit"></i>
                            @lang('site.update')</button>
                    </div>

                </form> <!-- End form -->
            </div>

        </div>

    </section><!-- end of content -->

</div><!-- end of content wrapper -->

@endsection
