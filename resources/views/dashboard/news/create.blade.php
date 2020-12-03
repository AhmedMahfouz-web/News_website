@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.create')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i> @lang('site.dashboard')</a></li>
            <li><a href="{{route('dashboard.news.index')}}"><i class="fa fa-newspaper-o"></i>
                    @lang('site.news')</a></li>
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
                <form action="{{ route('dashboard.news.store') }}" method="POST" enctype="multipart/form-data">

                    {{ csrf_field() }}
                    {{ method_field('post') }}

                    <div class="form-group">
                        <label for="department_id">@lang('site.part_of_department')</label>
                        <select name="department_id" class="form-control">

                            @foreach ($departments as $department)
                            @php
                            $department_name = ucwords(str_replace(' ', '_', $department->name)) ;
                            @endphp
                            @if (auth()->user()->hasRole(['monetor', 'writer'], $department_name . '_team'))

                            <option value="{{ $department->id }}">{{ $department->name }}</option>

                            @elseif (auth()->user()->hasRole('super_admin'))

                            <option value="{{ $department->id }}">{{ $department->name }}</option>

                            @endif
                            @endforeach


                        </select>
                    </div>

                    <div class="form-group">
                        <label for="name">@lang('site.news_title')</label>
                        <input type="text" class="form-control " name="title"
                            placeholder="@lang('site.enter') @lang('site.news_title')" value="{{ old('title') }}">
                    </div>

                    <div class="form-group">
                        <label for="main_img">@lang('site.main_img')</label>
                        <input type="file" name="main_img" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="body">@lang('site.news_body')</label>
                        <textarea class="form-control ckeditor" name="body"
                            placeholder="@lang('site.enter') @lang('site.news_body')">
                            {{ old('body') }}
                        </textarea>
                    </div>

                    <div class="form-group">
                        <label for="topic_id">@lang('site.topic')</label>
                        <select name="topic_id" id="" class="form-control">

                            @foreach ($topics as $topic)
                            <option value="{{$topic->id}}">{{ $topic->name }}</option>
                            @endforeach

                        </select>
                    </div>

                    <div class="form-group">
                        <label for="country">@lang('site.country')</label>
                        <input type="text" name="country" class="form-control"
                            placeholder="@lang('site.enter') @lang('site.country')" value="{{ old('country') }}">
                    </div>

                    <div class="form-group">
                        <label for="other_imgs">@lang('site.other_imgs')</label>
                        <input type="file" name="other_imgs[]" class="form-control file-input">
                        <button class="btn btn-info add-more">Add more...</button>
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
