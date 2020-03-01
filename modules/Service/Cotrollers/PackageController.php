<?php
namespace Modules\Service\Controllers;

use Illuminate\Http\Request;
use Modules\Service\Models\Package;
use Modules\Location\Models\Location;
use App\Http\Controllers\Controller;

class PackageController extends Controller
{

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('Service::admin.package_price.details', [
            'form' => [
                'data' => [],
                'method' => 'post',
                'endpoint' => route('admin.package.store'),
            ],
            'rows' => Package::all(),
            'locations' => Location::select(['id', 'name'])->get(),
            'packages' => Package::select(['id', 'title', 'price'])->get(),
            'existinGroupings' => \DB::table('location_package')->get(['location_id', 'package_id'])->toArray()
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
        $package = Package::find($request->package);

        $package->locations()->attach($request->location, ['price'=> $request->price]);

        $request->session()->flash('success', 'Package Added Successfully.');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Package $package, $location)
    {
        $formData = [
            'location' => (int) $location,
            'package' => $package->id,
            'price' => $package->locations()->find($location)->pivot->price,
        ];

        return view('Service::admin.package_price.details', [
            'form' => [
                'data' => $formData,
                'method' => 'put',
                'endpoint' => route('admin.package.update', ['id' => $package->id]),
            ],
            'rows' => Package::all(),
            'locations' => Location::select(['id', 'name'])->get(),
            'packages' => Package::select(['id', 'title', 'price'])->get(),
            'existinGroupings' => \DB::table('location_package')->get(['location_id', 'package_id'])->toArray()
        ]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Package $service)
    {
        $package = Package::find($request->package);

        $package->locations()->updateExistingPivot($request->location, ['price'=> $request->price]);

        $request->session()->flash('success', 'Package Updated Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Package $package, $location_id)
    {
        $package->locations()->detach($location_id);

        return redirect()
            ->route('admin.package.create')
            ->with('success', 'Package Removed Successfully.');
    }
}
