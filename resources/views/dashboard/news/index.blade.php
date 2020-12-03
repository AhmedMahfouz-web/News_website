@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.news')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i>@lang('site.dashboard')</a></li>
            <li class="active"><i class="fa fa-newspaper-o"></i> @lang('site.news')</li>
        </ol>
    </section>

    <section class="content">

        <div class="box box-outline box-primary">
            <div class="box-header with-border">

                <h2 class="box-title">@lang('site.view') @lang('site.news')</h2> <small>{{ $news->total() }}</small>

                <!-- SEARCH FORM -->
                <form class="form-inline ml-3" style="margin-top: 15px; margin-bottom: 5px"
                    action="{{ route('dashboard.news.index') }}" method="get">

                    <div class="input-group ">
                        <input class="form-control" type="search" name="search" placeholder="@lang('site.search')"
                            aria-label="Search" value="{{ request()->search }}">
                    </div>

                    <div class="form-group">
                        <select name="department_id" id="" class="form-control">
                            <option value="">@lang('site.all_departments')</option>

                            @foreach ($departments as $department)
                            <option value="{{ $department->id }}"
                                {{ request()->department_id == $department->id ? 'selected' : ''}}>
                                {{ $department->name }}</option>
                            @endforeach

                        </select>
                    </div>

                    <button class="btn btn-primary" type="submit">
                        <i class="fa fa-search"></i> @lang('site.search')
                    </button>

                    @foreach ($departments as $department)

                    @php
                    $department_name = ucwords(str_replace(' ', '_', $department->name)) ;
                    @endphp
                    @if (auth()->user()->hasRole(['monetor', 'writer'], $department_name . '_team'))

                    <a href="{{route('dashboard.news.create')}}" class="btn btn-primary"><i class="fa fa-plus"></i>
                        @lang('site.add')</a>

                    @endif

                    @endforeach

                    @if (auth()->user()->hasRole('super_admin'))

                    <a href="{{route('dashboard.news.create')}}" class="btn btn-primary"><i class="fa fa-plus"></i>
                        @lang('site.add')</a>

                    @endif

                </form> <!-- End search form -->

            </div>

            <div class="box-body table-responsive p-0">
                <table class="table table-hover text-nowrap">

                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>@lang('site.news_title')</th>
                            <th>@lang('site.main_img')</th>
                            <th>@lang('site.descreption')</th>
                            <th>@lang('site.writer')</th>
                            <th>@lang('site.department')</th>
                            <th>@lang('site.created_at')</th>
                            <th>@lang('site.action')</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($news as $new)
                        <tr>
                            <td>{{$new->id}}</td>
                            <td>{{$new->title}}</td>
                            <td><img src="{{ $new->main_img_path }}" style="width: 100px" class="img-thumbnail" alt="">
                            </td>
                            <td>{!! Str::limit($new->body, 70) !!}</td>
                            <td>{{$new->user->first_name . ' ' . $new->user->last_name}}</td>
                            <td>{{$new->department->name}}</td>
                            <td>{{$new->created_at}}</td>
                            <td>

                                @if (auth()->user()->hasPermission('update_news'))

                                <a class="btn btn-warning btn-sm" href="{{route('dashboard.news.edit', $new->id)}}"><i
                                        class="fa fa-edit"></i> @lang('site.edit')</a>

                                @else

                                <a class="btn btn-warning btn-sm disabled" href="#"><i class="fa fa-edit"></i>
                                    @lang('site.edit')</a>

                                @endif

                                @if (auth()->user()->hasPermission('delete_news'))

                                <form action="" method="POST" style="display:inline-block">
                                    {{ csrf_field() }}
                                    {{ method_field('delete') }}
                                    <button type="submit" class="btn btn-danger btn-sm delete"><i
                                            class="fa fa-trash"></i>
                                        @lang('site.delete')</button>
                                </form>

                                @else

                                <button class="btn btn-danger btn-sm disabled"><i class="fa fa-trash"></i>
                                    @lang('site.delete')</button>

                                @endif
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>

                {{ $news->appends(request()->query())->links() }}

            </div>

    </section><!-- end of content -->

</div><!-- end of content wrapper -->

@endsection
