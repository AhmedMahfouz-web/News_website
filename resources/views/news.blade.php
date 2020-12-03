@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row mt-3">
        <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">الرئيسية</a>
                    </li>
                    <li class="breadcrumb-item " aria-current="page"><a
                            href="{{route('department', $news->department)}}">{{$news->department->name}}</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{$news->title}}</li>
                </ol>
            </nav>

        </div>
    </div>
    <div class="row text-center mb-3">
        <img src="{{ asset('uploads/12144.jpg')}}" width="60%" height="90" alt="" class=" m-auto">
    </div>
    <div class="row mt-1" style="background: rgba(238, 238, 238, 0.74);">

        <div class="col-md-8 pt-3">
            <div class="row">
                <div class="col-md-12 mb-5">
                    <h4 class="text-success my-4 font-weight-bold">{{ $news->title }}
                    </h4>
                    <img src="{{ $news->main_img_path }}" class="img-fluid" alt="">
                    <p class="mt-5">{!! $news->body !!}</p>

                    @if($news->otherImgs->count() > 0)
                    @foreach ($news->otherImgs as $other_img)
                    <img src="{{ $other_img->other_img_path }}" class="img-fluid" alt="" style="margin-bottom: 5px">
                    @endforeach
                    @endif
                </div>
            </div>
        </div>
        <div class="col-md-4 ">
            <div class="list-Latest-news-title mr-0 my-3">
                <a href="" class="text-white">أخر الاخبار</a>
            </div>
            <div class="col-md-12  bg-white">
                <div class="card" style="width: 100%">
                    <ul class="list-group list-group-flush p-0" style="position: relative;">
                        @foreach ($latest_news as $latest_one)

                        <a href="{{route('news', $latest_one)}}">
                            <li class="list-group-item d-flex flex-row">
                                <img src="{{$latest_one->main_img_path}}" alt="" width="85" height="70">
                                <h6>{{$latest_one->title}}</h6>
                            </li>
                        </a>

                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-md-12 bg-white">
                <div class="h3 w-100 py-2 bg-light pr-2 text-info">اعلانات</div>
            </div>
        </div>
    </div>
</div>

@endsection
