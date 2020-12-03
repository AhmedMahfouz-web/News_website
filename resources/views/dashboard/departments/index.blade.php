@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.departments')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i>@lang('site.dashboard')</a></li>
            <li class="active"><i class="fa fa-th-list"></i> @lang('site.departments')</li>
        </ol>
    </section>

    <section class="content">

        <div class="box box-outline box-primary">
            <div class="box-header with-border">

                <h2 class="box-title">@lang('site.view') @lang('site.departments')</h2>
                {{-- <small>{{ $departments->total() }}</small> --}}

                <!-- SEARCH FORM -->
                <form class="form-inline ml-3" style="margin-top: 15px; margin-bottom: 5px"
                    action="{{ route('dashboard.departments.index') }}" method="get">

                    <div class="input-group ">
                        <input class="form-control" type="search" name="search" placeholder="@lang('site.search')"
                            aria-label="Search" value="{{ request()->search }}">
                    </div>

                    <button class="btn btn-primary" type="submit">
                        <i class="fa fa-search"></i> @lang('site.search')
                    </button>

                    @if (auth()->user()->hasPermission('create_departments'))

                    <a href="{{route('dashboard.departments.create')}}" class="btn btn-primary"><i
                            class="fa fa-plus"></i> @lang('site.add')</a>

                    @else

                    <a href="#" class="btn btn-primary disabled"><i class="fa fa-plus"></i>
                        @lang('site.add')</a>

                    @endif

                </form> <!-- End search form -->

            </div>


            <div class="box-body">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-1">#</div>
                        <div class="col-md-4">@lang('site.dep_name')</div>
                        <div class="col-md-3">@lang('site.number_of_news')</div>
                        <div class="col-md-3">@lang('site.action')</div>
                    </div>
                </div>
                @foreach ($departments as $index=>$department)
                <div class="box box-outline">

                    <div class="box-header with-border">

                        <div class="row">
                            <div class="col-md-1">
                                @if ($department->departmentChildren->count() > 0)

                                <button style="margin: 0 10px" class="btn" type="button" data-toggle="collapse"
                                    data-target="#x{{$department->id}}" aria-expanded="false"
                                    aria-controls="x{{$department->id}}"><i class="fa fa-chevron-down"></i>
                                </button>

                                @else

                                <button style="margin: 0 10px" class="btn disabled" type="button"><i
                                        class="fa fa-minus"></i>
                                </button>

                                @endif
                            </div>

                            <div class="col-md-1">{{ $index + 1}}</div>

                            <div class="col-md-4">
                                {{ $department->name }}
                            </div>

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="col-md-2">
                                        {{ $department->news->count() }}
                                    </div>
                                    <div class="col-md-8">
                                        <a href="{{ $department->news->count() > 0 ? route('dashboard.news.index', 'department_id=' . $department->id) : '#' }}"
                                            class="btn btn-info btn-sm {{ $department->news->count() > 0 ? '' : 'disabled' }}">@lang('site.show_it')</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">

                                @if (auth()->user()->hasPermission('update_departments'))

                                <a class="btn btn-warning btn-sm"
                                    href="{{route('dashboard.departments.edit', $department->id)}}"><i
                                        class="fa fa-edit"></i>
                                    @lang('site.edit')</a>

                                @else


                                <a class="btn btn-warning btn-sm disabled" href="#"><i class="fa fa-edit"></i>
                                    @lang('site.edit')</a>

                                @endif

                                @if (auth()->user()->hasPermission('delete_departments'))

                                <form action="{{ route('dashboard.departments.destroy', $department) }}" method="POST"
                                    style="display:inline-block">
                                    {{ csrf_field() }}
                                    {{ method_field('delete') }}
                                    <button type="submit" class="btn btn-danger btn-sm delete"><i
                                            class="fa fa-trash"></i>
                                        @lang('site.delete')</button>
                                </form>

                                @else

                                <button type="button" class="btn btn-danger btn-sm delete disabled"><i
                                        class="fa fa-trash"></i>
                                    @lang('site.delete')</button>

                                @endif

                                @if (auth()->user()->hasPermission('create_departments'))

                                <a href="{{ LaravelLocalization::getLocalizedURL() . '/' .$department->id .'/create'}}"
                                    class="btn btn-primary btn-sm"><i class="fa fa-plus"></i>
                                    @lang('site.add')</a>

                                @else

                                <a href="#" class="btn btn-primary btn-sm disabled"><i class="fa fa-plus"></i>
                                    @lang('site.add')</a>

                                @endif

                            </div>

                        </div>


                    </div>
                    {{-- Child start --}}
                    @if ($department->departmentChildren->count() > 0)

                    <div class="collapse" id="x{{ $department->id }}">
                        <div class="box-body" style="padding-bottom: 0px">

                            @foreach ($department->departmentChildren as $index=>$child)
                            <ul>
                                <div class="box" style="margin-bottom: 0">
                                    <div class="box-body">
                                        <div class="row">
                                            <div class="col-md-1">
                                                <button style="margin: 0 10px" class="btn disabled" type="button"><i
                                                        class="fa fa-minus"></i>
                                                </button>
                                            </div>

                                            <div class="col-md-1">{{ $index + 1}}</div>

                                            <div class="col-md-4">
                                                {{ $child->name }}
                                            </div>

                                            <div class="col-md-3">
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        {{ $child->news->count() }}
                                                    </div>
                                                    <div class="col-md-8">
                                                        <a href="#"
                                                            class="btn btn-info btn-sm">@lang('site.show_it')</a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-3">

                                                @if (auth()->user()->hasPermission('update_departments'))

                                                <a class="btn btn-warning btn-sm"
                                                    href="{{route('dashboard.departments.edit', $child->id)}}"><i
                                                        class="fa fa-edit"></i>
                                                    @lang('site.edit')</a>

                                                @else

                                                <a class="btn btn-warning btn-sm disabled" href="#"><i
                                                        class="fa fa-edit"></i>
                                                    @lang('site.edit')</a>

                                                @endif

                                                @if (auth()->user()->hasPermission('delete_departments'))

                                                <form action="{{ route('dashboard.departments.destroy', $child) }}"
                                                    method="POST" style="display:inline-block">
                                                    {{ csrf_field() }}
                                                    {{ method_field('delete') }}
                                                    <button type="submit" class="btn btn-danger btn-sm delete"><i
                                                            class="fa fa-trash"></i>
                                                        @lang('site.delete')</button>
                                                </form>

                                                @else

                                                <button type="button" class="btn btn-danger btn-sm delete disabled"><i
                                                        class="fa fa-trash"></i>
                                                    @lang('site.delete')</button>

                                                @endif

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </div>
                    </div>
                    @endforeach
                    @endif
                    {{-- End of Child --}}
                </div>
                @endforeach
            </div>


            {{ $departments->appends(request()->query())->links() }}

    </section><!-- end of content -->

</div><!-- end of content wrapper -->

@endsection
