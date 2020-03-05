@extends('admin.layouts.app')

@section('content')
    <nav class="main-breadcrumb" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="/admin">
                    <i class="fa fa-home"></i> Dashboard
                </a>
            </li>

            <li class="breadcrumb-item">
                <a href="/admin/module/car">Services</a>
            </li>

            <li class="breadcrumb-item active"> All Services </li>
        </ol>
    </nav>

    <div class="container-fluid">
        <div class="d-flex justify-content-between mb20">
            <div class="">
                <h1 class="title-bar">All Services</h1>
            </div>
        </div>

        <div class="lang-content-box">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th width="250px"> {{ __('Name')}}</th>
                                        <th> {{ __('Description')}}</th>
                                        <th width="50px"> {{ __('Packages')}}</th>
                                        <th width="200px"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($rows as $row)
                                            <tr>
                                                <td>{{ $row->title }}</td>
                                                <td>{{ $row->description }}</td>
                                                <td>
                                                    <a
                                                        target="_blank"
                                                        href="{{ route('admin.service.edit',['id' => $row->id]) }}"
                                                        class="review-count-approved">
                                                        {{ $row->packages->count() }}
                                                    </a>
                                                </td>
                                                <td>
                                                    <a
                                                        href="{{ route('admin.service.edit', ['id' => $row->id]) }}"
                                                        class="btn btn-primary btn-sm">
                                                        <i class="fa fa-edit"></i> Edit
                                                    </a>

                                                    <form
                                                        method="POST"
                                                        action="{{route('admin.service.destroy', ['service'=> $row->id])}}"
                                                        style="display: inline;">

                                                        {{ csrf_field() }}
                                                        {{ method_field('DELETE') }}

                                                        <button
                                                            type="submit"
                                                            class="btn btn-sm btn-danger">
                                                            <i class="fa fa-trash"></i> Delete
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach

{{--                                         <tr>
                                            <td colspan="7">{{__("No car found")}}</td>
                                        </tr> --}}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
