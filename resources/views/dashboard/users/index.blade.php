@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

    <section class="content-header">

        <h1>@lang('site.users')</h1>

        <ol class="breadcrumb">
            <li><a href="{{route('dashboard.index')}}"><i class="fa fa-th"></i>@lang('site.dashboard')</a></li>
            <li class="active"><i class="fa fa-users"></i> @lang('site.users')</li>
        </ol>
    </section>

    <section class="content">

        <div class="box box-outline box-primary">
            <div class="box-header with-border">

                <h2 class="box-title">@lang('site.view') @lang('site.users')</h2> <small>{{ $users->total() }}</small>

                <!-- SEARCH FORM -->
                <form class="form-inline ml-3" style="margin-top: 15px; margin-bottom: 5px"
                    action="{{ route('dashboard.users.index') }}" method="get">

                    <div class="input-group ">
                        <input class="form-control" type="search" name="search" placeholder="@lang('site.search')"
                            aria-label="Search" value="{{ request()->search }}">
                    </div>

                    <button class="btn btn-primary" type="submit">
                        <i class="fa fa-search"></i> @lang('site.search')
                    </button>

                    @if (auth()->user()->hasPermission('create_users'))

                    <a href="{{route('dashboard.users.create')}}" class="btn btn-primary"><i
                            class="fa fa-user-plus"></i> @lang('site.add')</a>

                    @else

                    <a href="#" class="btn btn-primary disabled"><i class="fa fa-user-plus"></i> @lang('site.add')</a>

                    @endif

                </form> <!-- End search form -->

            </div>

            <div class="box-body table-responsive p-0">
                <table class="table table-hover text-nowrap">

                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>@lang('site.first_name')</th>
                            <th>@lang('site.last_name')</th>
                            <th>@lang('site.email')</th>
                            <th>@lang('site.user_img')</th>
                            <th>@lang('site.action')</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($users as $index=>$user)
                        <tr>
                            <td>{{$index + 1}}</td>
                            <td>{{$user->first_name}}</td>
                            <td>{{$user->last_name}}</td>
                            <td>{{$user->email}}</td>
                            <td><img src="{{ $user->img_path }}" style="width: 100px" class="img-thumbnail" alt=""></td>
                            <td>

                                @if (auth()->user()->hasPermission('update_users'))

                                <a class="btn btn-warning btn-sm" href="{{route('dashboard.users.edit', $user->id)}}"><i
                                        class="fa fa-edit"></i> @lang('site.edit')</a>

                                @else

                                <a class="btn btn-warning btn-sm disabled" href="#"><i class="fa fa-edit"></i>
                                    @lang('site.edit')</a>

                                @endif

                                @if (auth()->user()->hasPermission('delete_users'))

                                <form action="{{ route('dashboard.users.destroy', $user) }}" method="POST"
                                    style="display:inline-block">
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

                {{ $users->appends(request()->query())->links() }}

            </div>

    </section><!-- end of content -->

</div><!-- end of content wrapper -->

@endsection
