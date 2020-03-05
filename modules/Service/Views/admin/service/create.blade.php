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

            <li class="breadcrumb-item active"> Add Service </li>
        </ol>
    </nav>

    <div class="container-fluid">
        <div class="d-flex justify-content-between mb20">
            <div class="">
                <h1 class="title-bar">Add new service</h1>
            </div>
        </div>

        <form
            action="{{ route('admin.service.store') }}"
            method="post">

            {{ csrf_field() }}

            <div class="lang-content-box">
                <div class="row">

                    <div class="col-md-9">
                        <div class="panel">
                            <div class="panel-title">
                                <strong>Service Content</strong>
                            </div>

                            <div class="panel-body">
                                <div class="form-group">
                                    <label>Title</label>
                                    <input
                                        type="text"
                                        class="form-control"
                                        placeholder="Name of the car"
                                        name="title"
                                    >
                                </div>

                                <div class="form-group">
                                    <label class="control-label">Description</label>
                                    <textarea
                                        cols="30"
                                        rows="5"
                                        name="description"
                                        class="form-control"></textarea>
                                </div>

                                <div class="form-group">
                                    <label class="control-label">Banner Image</label>
                                    <div class="form-group-image">
                                        {!! \Modules\Media\Helpers\FileHelper::fieldUpload('banner_image_id', null) !!}
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{{__("Gallery")}}</label>
                                    {!! \Modules\Media\Helpers\FileHelper::fieldGalleryUpload('gallery', null) !!}
                                </div>
                            </div>
                        </div>

                        <div class="panel">
                            <div class="panel-title"><strong>Packages</strong></div>
                            <div class="panel-body">
                                <div class="form-group-item">
                                    <label class="control-label">Packages</label>
                                    <div class="g-items-header">
                                        <div class="row">
                                            <div class="col-md-11">Package Details</div>
                                            <div class="col-md-1"></div>
                                        </div>
                                    </div>

                                    <div class="g-items"></div>

                                    <div class="text-right">
                                        <span class="btn btn-info btn-sm btn-add-item"><i class="icon ion-ios-add-circle-outline"></i> Add item</span>
                                    </div>

                                    <div class="g-more hide">
                                        <div class="item">
                                            <div class="row">
                                                <div class="col-md-11">
                                                    <div class="form-group">
                                                        <label class="control-label">Banner Image</label>
                                                        <div class="form-group-image">
                                                            {!! \Modules\Media\Helpers\FileHelper::fieldUpload('package_banner_image_id[]', null) !!}
                                                        </div>
                                                    </div>
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        placeholder="Title"
                                                        name="package_title[]">
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        placeholder="Sub Title"
                                                        name="package_subtitle[]">
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        placeholder="Default Price"
                                                        name="package_price[]">
                                                    <textarea
                                                        class="form-control"
                                                        placeholder="Package Details"
                                                        name="package_detail[]"></textarea>
                                                </div>
                                                <div class="col-md-1">
                                                    <span
                                                        class="btn btn-danger btn-sm btn-remove-item">
                                                        <i class="fa fa-trash"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="panel">
                        <div class="panel-title"><strong>Publish</strong></div>
                            <div class="panel-body">
                                <div>
                                    <button
                                        class="btn btn-primary"
                                        type="submit">
                                        <i class="fa fa-save"></i> Save Changes
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
