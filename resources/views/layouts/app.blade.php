<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{ asset('css/fontawesome-all.min.css')}}">
    <link rel="stylesheet" href="{{ asset('css/slick.css')}}">
    <link rel="stylesheet" href="{{ asset('css/slick-theme.css')}}">
    <link rel="stylesheet" href="{{ asset('css/main.css')}}">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/droidarabickufi?ver=1.0" type="text/css"
        media="all">

    <!-- Styles -->
    {{-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> --}}
</head>

<body class="text-right" style="direction: rtl;">

    <header>
        <div class="row bg-dark m-0">
            <div class="col-md-6">
                <div class="time text-white pr-5 text-right pt-2" style="font-size: 0.8em;"></div>
            </div>
            <div class="col-md-6">
                <div class=" text-dark top-nav pl-5 text-left pt-2">
                    <a href="en-index.html" class="text-white ">English</a>
                </div>
            </div>
        </div>

        <div class=" logo   w-100">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-white" style="line-height: 100px;"><a href="#"
                            style="display: inline-block;"><img src="{{asset('uploads/logo.png')}}" height="130"
                                width="170"></a>تجريبي
                    </div>
                    <div class="col-md-6 text-left">
                        <div class="live"
                            style="color: #fff; display: inline-block; margin-right: 50%; text-align: center; margin-top: 20px;">
                            <i class="fas fa-tv fa-2x text-danger" style="font-size: 30px;"></i>
                            <h5>بث مباشر</h5>
                        </div>
                    </div>
                </div>


                {{-- <div class="h2 logo-text text-dark" style="width: 150px; text-align: center; margin-right: 0px;">الخبرية
                </div> --}}


            </div>
        </div>
        <nav class=" navbar navbar-expand-lg navbar-light nav-bg-color p-0" style="z-index: 10;">
            <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav p-0">
                        <li class="nav-item ">
                            <a class="nav-link aa" href="/">الرئيسية
                                <div class="show-link"></div>
                            </a>
                        </li>
                        @foreach ($departments as $index=>$department)
                        @if($index < 6) <li class="nav-item">
                            <a class="nav-link aa"
                                href="{{ route('department', $department->id) }}">{{$department->name}}
                                <div class="show-link"></div>
                            </a>
                            </li>
                            @endif
                            @endforeach
                    </ul>
                    <div class="search m-auto " style="padding-left: 80px !important;">
                        <i class="fas fa-search fa-2x" style="color: #022f66;"></i>
                    </div>
                </div>
        </nav>

    </header>

    @yield('content')


    <footer class="mt-5 py-3 bg-white">
        <div class="container">
            <div class="row">
                <div class="col-md-3 text-center">
                    <img src="{{asset('uploads/logo.png')}}" width="150" height="150" alt="">
                    <ul class="contact text-center" style="list-style: none;">

                        <li style="background: #4167b2;">
                            <a href="#">
                                <i class="fab fa-facebook-f fa-xm"></i>
                            </a>
                        </li>
                        <li style="background: #54a8e5">
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li style="background: red">
                            <a href="#">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </li>
                        <li style="background: #e05440">
                            <a href="#">
                                <i class="fab fa-google-plus-g"></i>
                            </a>
                        </li>
                        <li style="background: #ffe35f">
                            <a href="#">
                                <i class="fab fa-snapchat-ghost"></i>
                            </a>
                        </li>
                        <li style="background: #b24eba">
                            <a href="#">
                                <i class="fab fa-instagram fa-1x"></i>
                            </a>
                        </li>
                    </ul>
                    <br>
                    <p style="font-size: 0.7em;">© جميع الحقوق محفوظة لقناة الخبرية 2018
                    </p>
                </div>
                <div class="col-md-3">

                    <ul style="list-style: none;">
                        <li style="color: rgb(17, 125, 226); font-size: 1.2em; margin-bottom: 10px;   ">الاقسام</li>
                        @foreach ($departments as $department)

                        <li>
                            <a href="{{route('department', $department)}}">{{$department->name}}</a>
                        </li>

                        @endforeach
                    </ul>
                </div>
                <div class="col-md-3">

                    <ul style="list-style: none;">
                        <li style="color: rgb(17, 125, 226);; font-size: 1.2em; margin-bottom: 10px;   ">المواضيع</li>
                        @foreach ($topics as $topic)

                        <li>
                            <a href="#">{{$topic->name}}</a>
                        </li>

                        @endforeach
                    </ul>
                </div>
                <div class="col-md-2">

                    <ul style="list-style: none;">
                        <li style="color: rgb(17, 125, 226);; font-size: 1.2em; margin-bottom: 10px;   ">اخبار الدول
                        </li>
                        <li>
                            <a href="#">مصر</a>
                        </li>
                        <li>
                            <a href="#">السعودية</a>
                        </li>
                        <li>
                            <a href="#">امريكا</a>
                        </li>
                        <li>
                            <a href="#">المغرب</a>
                        </li>
                        <li>
                            <a href="#">اليمن</a>
                        </li>
                        <li>
                            <a href="#">العراق </a>
                        </li>
                    </ul>
                </div>


                <div class="col-md-12 text-center pt-2" style="direction: ltr; text-align: left">
                    <a href="#">
                        <p style="display: inline-block; font-size: 0.9em;">© Copyright 2018 bragma.com </p>
                        <img src="{{ asset('uploads/bragmalogo.png')}}" height="30" width="70" alt="bragma">
                    </a>
                </div>
            </div>
        </div>
    </footer>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.slick-slider').slick({
                slidesToShow: 4,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 2000,

            });
        });

    </script>
</body>

</html>
