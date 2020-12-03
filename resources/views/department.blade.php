@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row my-5">
        <div class="col-md-9 bg-white">
            <h2 class=" text-success w-100 bg-light py-2">{{$department->name}}</h2>
            <hr>
            <div class="row newspage">
                @foreach ($news as $single_news)

                <div class="col-md-4">
                    <div class="card border-0 w-100">
                        <a href="{{ route('news', $single_news) }}">
                            <img class="card-img-top" src="{{$single_news->main_img_path}}" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text mt-5" style="color: #b1b1b1;">{!! Str::limit($news[0]->body, 50)
                                    !!}</p>
                            </div>
                        </a>
                        <p class="type">{{$single_news->topic->name}}</p>
                    </div>
                </div>

                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection
