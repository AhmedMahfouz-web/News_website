@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.edit')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i> @lang('site.dashboard')</a></li>
            <li><a href="{{route('dashboard.news.index')}}"><i class="fa fa-newspaper-o"></i>
                    @lang('site.news')</a></li>
            <li class="active"><i class="fa fa-edit"></i> @lang('site.edit')</li>
        </ol>
    </section>

    <section class="content">

        <div class="box box-outline box-primary">
            <div class="box-header with-border">
                <h2 class="box-title">@lang('site.edit') @lang('site.news')</h2>
            </div>

            <div class="box-body">
                @include('partials._errors')

                {{-- Start form --}}
                <form action="{{ route('dashboard.news.update', $news) }}" method="POST" enctype="multipart/form-data">

                    {{ csrf_field() }}
                    {{ method_field('put') }}


                    <div class="form-group">
                        <label for="name">@lang('site.news_title')</label>
                        <input type="text" class="form-control " name="title"
                            placeholder="@lang('site.enter') @lang('site.news_title')" value="{{ $news->title }}">
                    </div>

                    <div class="form-group">
                        <label for="main_img">@lang('site.main_img')</label>
                        <input type="file" name="main_img" class="form-control">
                    </div>

                    <div class="form-group">
                        <img src="{{ $news->main_img_path }}" style="width: 150px" class="img-thumbnail" alt="">
                    </div>

                    <div class="form-group">
                        <label for="body">@lang('site.news_body')</label>
                        <textarea class="form-control ckeditor" name="body"
                            placeholder="@lang('site.enter') @lang('site.news_body')">
                            {{ $news->body }}
                        </textarea>
                    </div>

                    <div class="form-group">
                        <label for="other_imgs">@lang('site.other_imgs')</label>
                        <input type="file" name="other_imgs[]" class="form-control file-input">
                        <button class="btn btn-info add-more">@lang('site.add_more')</button>
                    </div>

                    <div class="form-group">

                        @if ($news->otherImgs->count() > 0)
                        @foreach ($news->otherImgs as $other_img)
                        <div style="display: inline-block; position: relative">
                            <img src="{{ $other_img->other_img_path }}" style="width: 150px"
                                class="img-thumbnail other-img-preview" alt="" style="display: block">
                            <button class="btn btn-danger btn-sm delete-btn" type="button"
                                style="display: block; position: absolute; top:50%; left: 50%; transform: translate(-50%, -50%)"
                                img-name='{{ $other_img->img }}'><i class="fa fa-trash"></i>
                                @lang('site.delete')</button>
                            <input type="text" name="delete[]" value="" class="delete-input hidden">
                        </div>
                        @endforeach
                        @endif

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
