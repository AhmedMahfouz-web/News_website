@extends('layouts.app')

@section('content')
<div class="container direct">
    <div class="row mt-3">
        <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">
                        الرئيسية
                    </li>
                </ol>
            </nav>

        </div>
    </div>
</div>

<div class="container pt-3">

    <div class="row text-center mb-3">
        <img src="uploads/12144.jpg" width="60%" height="90" alt="" class=" m-auto">
    </div>

    @if($news->count() > 0)
    <div class="row mb-3">

        <div class="col-md-8 pb-4">
            <div class="main-news">
                <a href="{{route('news', $news[0])}}">
                    <div class="img-main-news">
                        <img src="{{ $news[0]->main_img_path}}" alt="" class="w-100" height="430">
                    </div>
                    <div class="main-news-body">
                        <h2 class="pr-3">{{ $news[0]->title }}</h2>
                        {!! Str::limit($news[0]->body, 100) !!}
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" style="width: 100%">
                <ul class="list-group list-group-flush p-0" style="position: relative;">
                    <div class="list-Latest-news-title mr-2 mb-3"> أخر الاخبار</div>

                    @for ($i = 1; $i < 5; $i++) <a href="{{route('news', $news[$i])}}">
                        <li class="list-group-item d-flex flex-row">
                            <img src="{{ $news[$i]->main_img_path }}" alt="" width="85" height="70">
                            {{ $news[$i]->title }}
                        </li>
                        </a>
                        @endfor

                </ul>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <div class="Advertisement text-center text-white">اعلانات</div>
        <div class="Advertisement-title"></div>
    </div>
    <div class="row mb-3">
        <div class="col-md-8    bg-white mb-3">
            <div class="list-Latest-news-title mr-2 mb-3" style="right: -25px;">
                <a href="" class="text-white">الأخبار</a>
            </div>
            <div class="row px-2">
                @foreach ($news as $single_news)
                @if($single_news->department->name == 'الاخبار')

                <div class="col-md-4 col-sm-6">
                    <a href="{{ route('news', $single_news) }}">
                        <div class="card" style="width: 100%; margin-bottom:20px;">
                            <img class="card-img-top" src="{{ $single_news->main_img_path}}" height="200" width="100%"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">{{$single_news->title}}</h5>
                                <span class="card-text">{!!Str::limit($single_news->body, 75)!!}</span>
                            </div>
                        </div>
                    </a>
                </div>

                @endif
                @endforeach
            </div>
        </div>
        <div class="col-md-4 ">

            <div class="col-md-12  bg-white">
                <div class="list-Latest-news-title mr-2 mb-3" style="right: -25px;">
                    <a href="" class="text-white">الأكثر قرائة</a>
                </div>
                <div class="card" style="width: 100%">
                    <ul class="list-group list-group-flush p-0" style="position: relative;">
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="uploads/a.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="uploads/b.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="uploads/c.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="uploads/d.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="uploads/a.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="uploads/b.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="uploads/c.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران</li>
                        </a>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row Markets mt-3" style="background: rgba(238, 238, 238, 0.459);">
        <div class="col-md-6 ">
            <div class="list-Latest-news-title mr-2 my-3 mb-3" style="display: block; width: calc(100% + 8px);">
                <a href="" class="text-white">الأسواق</a>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="uploads/aa.jpg" alt="" class="w-100" height="440">
                            </div>
                            <div class="main-news-body h-25">
                                <h5 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h5>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news mb-4">
                                <img src="uploads/ab.jpg" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="uploads/ab.jpg" alt="" class="w-100" height="217">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="list-Latest-news-title mr-0 mt-3 mb-3" style="display: block; width: calc(100% + 8px);">
                <a href="" class="text-white">النشرات الاقتصادية</a>
            </div>
            <div class="main-news mb-2">
                <a href="">
                    <div class="img-main-news mb-3">
                        <img src="uploads/ac.jpg" alt="" class="w-100" height="222">
                    </div>
                    <div class="main-news-body h-25">
                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                    </div>
                </a>
            </div>
            <div class="main-news mb-2">
                <a href="">
                    <div class="img-main-news">
                        <img src="uploads/ac.jpg" alt="" class="w-100" height="200">
                    </div>
                    <div class="main-news-body h-25">
                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="row mt-5   mb-3">
        <div class="list-Latest-news-title mr-2  mb-3" style="display: block; width: calc(100% + 8px);">
            <a href="" class="text-white">السعودية</a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="uploads/ac.jpg" alt="" width="100%" height="230px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="uploads/ab.jpg" alt="" width="100%" height="230px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="uploads/ac.jpg" alt="" width="100%" height="230px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="uploads/ab.jpg" alt="" width="100%" height="230px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <div class="row mt-1" style="background: rgba(238, 238, 238, 0.74);">

        <div class="col-md-8 pt-3">
            <div class="list-Latest-news-title mr-2 mb-3">
                <a href="" class="text-white">امريكا</a>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="uploads/f.jpg" alt="" class="w-100" height="400">
                            </div>
                            <div class="main-news-body">
                                <h2 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="uploads/d.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="img/c.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 pt-5">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="img/a.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="img/b.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="img/d.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 ">
            <div class="list-Latest-news-title mr-0 my-3">
                <a href="" class="text-white">الاراء</a>
            </div>
            <div class="col-md-12  bg-white">
                <div class="card" style="width: 100%">
                    <ul class="list-group list-group-flush p-0" style="position: relative;">
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/a.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا تتطلب
                                تغيير بوصلة إيران </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/b.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا تتطلب
                                تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/c.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا تتطلب
                                تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/d.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا تتطلب
                                تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/a.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا تتطلب
                                تغيير بوصلة إيران </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/b.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا تتطلب
                                تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/c.jpg" alt="" width="85" height="70"> قرقاش: استراتيجية أميركا تتطلب
                                تغيير بوصلة إيران</li>
                        </a>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-5  bg-light mb-3">
        <div class="list-Latest-news-title mr-2  mb-3" style="display: block; width: calc(100% + 8px); ">
            <a href="" class="text-white">العراق</a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/e1.jpg" alt="" width="100%" height="250px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/e2.jpg" alt="" width="100%" height="250px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/e3.jpg" alt="" width="100%" height="250px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/e4.jpg" alt="" width="100%" height="250px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <div class="row mt-5 ">

        <div class="col-md-8 mb-3 p-0">
            <div class="list-Latest-news-title mr-2 mb-3">
                <a href="" class="text-white">الرياضة</a>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/g.jpg" alt="" class="w-100" height="400">
                            </div>
                            <div class="main-news-body">
                                <h2 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="img/h.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="img/j.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 pt-5">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="img/k.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="img/g.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="main-news">
                                <a href="">
                                    <div class="img-main-news">
                                        <img src="img/j.jpg" alt="" class="w-100" height="200">
                                    </div>
                                    <div class="main-news-body h-25">
                                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب
                                        </h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 p-0 ">
            <div class="list-Latest-news-title mr-2 mb-3">
                <a href="" class="text-white">فيس بوك</a>
            </div>
            <div class="col-md-12 ">
                <div class="card" style="width: 100%;">
                    <ul class="list-group list-group-flush p-0" style="position: relative;">

                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/face2.jpg" alt="" width="85" height="80"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/face3.jpg" alt="" width="85" height="82"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/face4.jpg" alt="" width="85" height="85"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/face1.jpg" alt="" width="85" height="85"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/face2.jpg" alt="" width="85" height="85"> قرقاش: استراتيجية أميركا
                                تتطلب تغيير بوصلة إيران</li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/c.jpg" alt="" width="85" height="85"> قرقاش: استراتيجية أميركا تتطلب
                                تغيير بوصلة إيران</li>
                        </a>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-md-8">
            <div class="Advertisement text-center">اعلانات</div>
            <div class="Advertisement-title" style="height: 650px; width: 100%; background: #fff;">

            </div>
        </div>
        <div class="col-md-4 p-0 ">
            <div class="list-Latest-news-title mr-2 mb-3 twiter" style="background: #22b1db;">
                <a href="" class="text-white">تويتر</a>
            </div>
            <div class="col-md-12 ">
                <div class="card" style="width: 100%;">
                    <ul class="list-group list-group-flush p-0" style="position: relative;">

                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="https://selfpublishingadvice.org/wp-content/uploads/2013/10/twitter-1024x1024.png"
                                    alt="" width="85" height="80"> قرقاش: استراتيجية أميركا تتطلب تغيير بوصلة إيران
                            </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ33KOQqE_5iyX0n3YKJ-woB881B91T0GXft2RK_oPbgzGZivXx"
                                    alt="" width="85" height="82"> قرقاش: استراتيجية أميركا تتطلب تغيير بوصلة إيران
                            </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZr5_qXeVvh9Q4GoL4IJ1Td-GhDVKvdypAIcHu_t0If1vfuM6x"
                                    alt="" width="85" height="85"> قرقاش: استراتيجية أميركا تتطلب تغيير بوصلة إيران
                            </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzrGysbbzHhsUf5RMMs68CsbgQ_gw6y01DAz9eN4bGaoOrlTtWjA"
                                    alt="" width="85" height="85"> قرقاش: استراتيجية أميركا تتطلب تغيير بوصلة إيران
                            </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="https://help.twitter.com/content/help-twitter/en/using-twitter/someone-blocked-me-on-twitter/_jcr_content/yang/image.img.png/1511833040186.png"
                                    alt="" width="85" height="85"> قرقاش: استراتيجية أميركا تتطلب تغيير بوصلة إيران
                            </li>
                        </a>
                        <a href="">
                            <li class="list-group-item d-flex flex-row">
                                <img src="img/c.jpg" alt="" width="85" height="85"> قرقاش: استراتيجية أميركا تتطلب
                                تغيير بوصلة إيران</li>
                        </a>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-5   mb-3" style="background: rgba(0, 0, 0, 0.082);">
        <div class="list-Latest-news-title mr-2  mb-3" style="display: block; width: calc(100% + 16px);">
            <a href="" class="text-white">اليمن</a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/a.jpg" alt="" width="100%" height="150px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/d.jpg" alt="" width="100%" height="150px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/c.jpg" alt="" width="100%" height="150px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/b.jpg" alt="" width="100%" height="150px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <div class="row mt-5  bg-light mb-3" style="background: #0005;">
        <div class="list-Latest-news-title mr-2  mb-3" style="display: block; width: calc(100% + 8px);">
            <a href="" class="text-white">المغرب</a>
        </div>
        <div class="col-md-4 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/ma.jpg" alt="" width="100%" height="300px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/mb.jpg" alt="" width="100%" height="300px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/mc.jpg" alt="" width="100%" height="300px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>

    </div>
    <div class="row">
        <div class="list-Latest-news-title mr-3 my-3 mb-3" style="display: block; width: calc(100% + 8px); ">
            <a href="" class="text-white">طب وصحة</a>
        </div>
        <div class="col-md-6">
            <div class="main-news">
                <a href="">
                    <div class="img-main-news">
                        <img src="img/l.jpg" alt="" class="w-100" height="400">
                    </div>
                    <div class="main-news-body">
                        <h2 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h2>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-6">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/m.gif" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/m.gif" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/m.gif" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/m.gif" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row program mt-5 pt-0" style="background: rgba(238, 238, 238, 0.472); overflow: hidden;">
        <div class="list-Latest-news-title mr-2 mb-3 mb-3" style="display: block; width: calc(100% + 8px); ">
            <a href="" class="text-white">جدول البرامج</a>
        </div>
        <div class="main-slider" style="direction: ltr">
            <div class="container">
                <div class="row">
                    <div class="slick-slider">
                        <div class="iteam">
                            <div class="time-news">22:00 AM</div>
                            <img src="img/mb.jpg" alt="" width="100%" height="300">
                            <div class="program-title">مع هيكل</div>
                        </div>
                        <div class="iteam">
                            <div class="time-news red">22:00 AM</div>
                            <img src="img/mb.jpg" alt="" width="100%" height="300">
                            <div class="program-title">مع هيكل</div>
                        </div>
                        <div class="iteam">
                            <div class="time-news">22:00 AM</div>
                            <img src="img/mb.jpg" alt="" width="100%" height="300">
                            <div class="program-title">مع هيكل</div>
                        </div>
                        <div class="iteam">
                            <div class="time-news">22:00 AM</div>
                            <img src="img/mb.jpg" alt="" width="100%" height="300">
                            <div class="program-title">مع هيكل</div>
                        </div>
                        <div class="iteam">
                            <div class="time-news">22:00 AM</div>
                            <img src="img/mb.jpg" alt="" width="100%" height="300">
                            <div class="program-title">مع هيكل</div>
                        </div>
                        <div class="iteam">
                            <div class="time-news">22:00 AM</div>
                            <img src="img/mb.jpg" alt="" width="100%" height="300">
                            <div class="program-title">مع هيكل</div>
                        </div>
                        <div class="iteam">
                            <div class="time-news">22:00 AM</div>
                            <img src="img/mb.jpg" alt="" width="100%" height="300">
                            <div class="program-title">مع هيكل</div>
                        </div>
                        <div class="iteam">
                            <div class="time-news">22:00 AM</div>
                            <img src="img/mb.jpg" alt="" width="100%" height="300">
                            <div class="program-title">مع هيكل</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="row all-program bg-white mt-3">
        <div class="list-Latest-news-title mr-2 mb-3" style="display: block; width: calc(100% + 8px); ">
            <a href="" class="text-white">البرامج</a>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="program-container">
                        <a href="">
                            <img src="img/fb.jpg" alt="" height="300" width="100%">
                            <p>#اسم البرنامج</p>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="program-container">
                        <a href="">
                            <img src="img/fb.jpg" alt="" height="300" width="100%">
                            <p>#اسم البرنامج</p>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="program-container">
                        <a href="">
                            <img src="img/fb.jpg" alt="" height="300" width="100%">
                            <p>#اسم البرنامج</p>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="program-container">
                        <a href="">
                            <img src="img/fb.jpg" alt="" height="300" width="100%">
                            <p>#اسم البرنامج</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-5  bg-light mb-3">
        <div class="list-Latest-news-title mr-2  mb-3" style="display: block; width: calc(100% + 8px); ">
            <a href="" class="text-white">أمريكا</a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/a.jpg" alt="" width="100%" height="150px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/d.jpg" alt="" width="100%" height="150px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/c.jpg" alt="" width="100%" height="150px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/b.jpg" alt="" width="100%" height="150px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <div class="row mt-5 social-media">
        <div class="col-md-9">
            <div class="row">
                <div class="list-Latest-news-title mr-4  mb-4" style="display: block; width: calc(100% + 8px);">
                    <a href="" class="text-white"> الخبرية ستايل</a>
                </div>

                <div class="col-md-8">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/style.gif" alt="" class="w-100" height="412 ">
                            </div>
                            <div class="main-news-body h-25">
                                <h4 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h4>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news mb-2">
                                <img src="img/style1.jpg" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                    <div class="main-news">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/style2.jpg" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="list-Latest-news-title mr-0 mb-3 mb-3" style="display: block; width: calc(100% + 8px);">
                <a href="" class="text-white">الاخيرة</a>
            </div>
            <div class="main-news">
                <a href="">
                    <div class="img-main-news mb-3">
                        <img src="img/ba.jpg" alt="" class="w-100" height="200">
                    </div>
                    <div class="main-news-body h-25">
                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                    </div>
                </a>
            </div>
            <div class="main-news">
                <a href="">
                    <div class="img-main-news">
                        <img src="img/ba.jpg" alt="" class="w-100" height="200">
                    </div>
                    <div class="main-news-body h-25">
                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                    </div>
                </a>
            </div>

        </div>
    </div>

    <div class="row mt-1  mb-3 " style="background: rgba(0, 0, 0, 0.231);">

        <div class="list-Latest-news-title mr-2  mb-3" style="display: block; width: calc(100% + 8px); z-index: 2;">
            <a href="" class="text-white">تكنولوجيا</a>
        </div>
        <div class="col-md-3 col-sm-6" style="z-index: 2;">
            <div class="main-news">
                <a href="">
                    <div class="img-main-news">
                        <img src="img/ba.jpg" alt="" class="w-100" height="300">
                    </div>
                    <div class="main-news-body h-25">
                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-3 col-sm-6" style="z-index: 2;">
            <div class="main-news">
                <a href="">
                    <div class="img-main-news">
                        <img src="img/ba.jpg" alt="" class="w-100" height="300">
                    </div>
                    <div class="main-news-body h-25">
                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-3 col-sm-6" style="z-index: 2;">
            <div class="main-news">
                <a href="">
                    <div class="img-main-news">
                        <img src="img/ba.jpg" alt="" class="w-100" height="300">
                    </div>
                    <div class="main-news-body h-25">
                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-3 col-sm-6" style="z-index: 2;">
            <div class="main-news">
                <a href="">
                    <div class="img-main-news">
                        <img src="img/ba.jpg" alt="" class="w-100" height="300">
                    </div>
                    <div class="main-news-body h-25">
                        <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                    </div>
                </a>
            </div>
        </div>

    </div>

    <div class="row mt-5   mb-3" style="background: url(./img/ff.jpg); position: relative;">
        <div class="full-background"></div>
        <div class="list-Latest-news-title mr-2  mb-3" style="display: block; width: calc(100% + 8px); z-index: 2;">
            <a href="" class="text-white">ثقافة وفن</a>
        </div>
        <div class="col-md-3 col-sm-6" style="z-index: 2;">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/fa.jpg" alt="" width="100%" height="230px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6" style="z-index: 2;">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/fb.jpg" alt="" width="100%" height="230px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6" style="z-index: 2;">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/fc.jpg" alt="" width="100%" height="230px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6" style="z-index: 2;">
            <a href="">
                <div class="card" style="width: 100%">
                    <img src="img/fb.jpg" alt="" width="100%" height="230px">
                    <div class="card-title pr-3">
                        عنوان خبر
                    </div>
                    <div class="card-body">
                        <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="list-Latest-news-title mr-0 my-3 mb-3" style="display: block; width: calc(100% + 8px); ">
                <a href="" class="text-white">علم</a>
            </div>
            <div class="row bg-white pt-3 ml-2">
                <div class="col-md-6">
                    <a href="">
                        <div class="card" style="width: 100%">
                            <img src="img/ia.jpg" alt="" width="100%" height="230px">
                            <div class="card-title pr-3">
                                عنوان خبر
                            </div>
                            <div class="card-body">
                                <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-6">
                    <a href="">
                        <div class="card" style="width: 100%">
                            <img src="img/ib.png" alt="" width="100%" height="230px">
                            <div class="card-title pr-3">
                                عنوان خبر
                            </div>
                            <div class="card-body">
                                <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="list-Latest-news-title mr-0 my-3 mb-3" style="display: block; width: calc(100% + 8px); ">
                <a href="" class="text-white">الخبرية معرفة</a>
            </div>
            <div class="row bg-white pt-3">
                <div class="col-md-6">
                    <a href="">
                        <div class="card" style="width: 100%">
                            <img src="img/ia.jpg" alt="" width="100%" height="230px">
                            <div class="card-title pr-3">
                                عنوان خبر
                            </div>
                            <div class="card-body">
                                <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-6">
                    <a href="">
                        <div class="card" style="width: 100%">
                            <img src="img/ib.png" alt="" width="100%" height="230px">
                            <div class="card-title pr-3">
                                عنوان خبر
                            </div>
                            <div class="card-body">
                                <p class="card-text">اكتب بعض التفاصيل عن الخبر اكتب بعض التفاصيل عن الخبر.</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="row Arabs-and-the-world mt-5" style="background: rgba(238, 238, 238, 0.685);">
        <div class="list-Latest-news-title mr-4  mb-3 mt-2" style="display: block; width: calc(100% + 8px); ">
            <a href="" class="text-white">العرب والعالم</a>
        </div>
        <div class="col-md-6">
            <div class="main-news mb-2">
                <a href="">
                    <div class="img-main-news">
                        <img src="img/bb.jpg" alt="" class="w-100" height="408">
                    </div>
                    <div class="main-news-body">
                        <h2 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h2>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-6">
                    <div class="main-news mb-2">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/bd.jpg" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="main-news mb-2">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/bc.jpeg" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="main-news mb-2">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/bc.jpeg" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="main-news mb-2">
                        <a href="">
                            <div class="img-main-news">
                                <img src="img/bb.jpg" alt="" class="w-100" height="200">
                            </div>
                            <div class="main-news-body h-25">
                                <h6 class="pr-3">بومبيو:12 مطلبا أميركيا من إيران أبرزها وقف دعم الإرهاب</h6>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @else

    <div class="row">
        <div class="col col-4">
            لا يوجد اخبار بعد.
        </div>
    </div>

    @endif
</div>

@endsection
