<?php
namespace Modules\Service\Controllers;

use Illuminate\Http\Request;
use Modules\Service\Models\Service;
use Modules\Service\Models\Package;
use App\Http\Controllers\Controller;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('Service::admin.service.index', [
            'rows' => Service::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Service::admin.service.create', [
            'row' => []
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $service = new Service;
        $service->title = $request->title;
        $service->gallery = $request->gallery;
        $service->description = $request->description;
        $service->banner_image_id = $request->banner_image_id;
        $service->save();

        Package::makeServicePackages(
            $service->id,
            $request->only([
                'package_title',
                'package_price',
                'package_detail',
                'package_subtitle',
                'package_banner_image_id'
            ])
        );

        return back()->with('success',  'Service created.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Service $service)
    {
        return view('Service::admin.service.edit', [
            'row' => $service
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Service $service)
    {
        $service->title = $request->title;
        $service->gallery = $request->gallery;
        $service->description = $request->description;
        $service->banner_image_id = $request->banner_image_id;
        $service->save();

        $service->packages()->delete();

        Package::makeServicePackages(
            $service->id,
            $request->only([
                'package_title',
                'package_price',
                'package_detail',
                'package_subtitle',
                'package_banner_image_id'
            ])
        );
        return back()->with('success',  'Service updated.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Service $service)
    {
        $service->delete();

        return back()->with('success',  'Service deleted.');
    }
}
