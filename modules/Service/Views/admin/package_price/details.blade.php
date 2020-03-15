@extends('admin.layouts.app')
@section('content')

{{-- <example-component></example-component> --}}

    <div
        id="service-location"
        class="container-fluid">
        <div class="d-flex justify-content-between mb20">
            <h1 class="title-bar"> Package Prices </h1>
        </div>

        <flash-message
            :type="'success'"
            :message="'{{session()->get('success')}}'"></flash-message>

        <div class="row">
            <div class="col-md-4 mb40">
                <manage-price-by-location
                    :method="'{{ $form['method'] }}'"
                    :endpoint="'{{ $form['endpoint'] }}'"
                    :editing="{{ json_encode($form['data']) }}"
                    :packages="{{ json_encode($packages) }}"
                    :locations="{{ json_encode($locations) }}"
                    :existin-groupings="{{ json_encode($existinGroupings) }}"
                    ></manage-price-by-location>
            </div>

            <div class="col-md-8">
                <div class="panel">
                    <div class="panel-title">All Packages</div>
                    <div class="panel-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Package</th>
                                <th>Location</th>
                                <th>Price</th>
                                <th class="">Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($rows as $package)
                                    @foreach($package->locations as $location)
                                        <tr>
                                            <td class="title">
                                                {{ $package->title }}
                                            </td>
                                            <td class="title">
                                                {{ $location->name }}
                                            </td>
                                            <td> {{ $location->pivot->price }} </td>
                                            <td>
                                                <a
                                                    href="{{ route('admin.package.edit', ['package'=>$package->id, 'location'=>$location->id]) }}"
                                                    class="btn btn-primary btn-sm">
                                                    <i class="fa fa-edit"></i> Edit
                                                </a>

                                                <form
                                                    method="POST"
                                                    action="{{route('admin.package.destroy', ['package'=>$package->id, 'location'=>$location->id])}}"
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
                                @endforeach
                                {{-- <tr v-if="noRecordsFound">
                                    <td colspan="4">No data</td>
                                </tr> --}}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
