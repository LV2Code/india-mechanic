<?php

namespace Modules\Service\Models;

use Modules\Service\Models\Service;
use Modules\Location\Models\Location;
use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
	protected $guarded = [];

    public static function isEnable(){
        return;
    }

    public function service() {
    	return $this->belongsTo(Service::class);
    }

    public function locations() {
    	return $this->belongsToMany(Location::class)->withPivot('price');
    }

    public static function makeServicePackages($serviceId, $package_data) {
        $package_values = array_map(
            null,
            $package_data['package_detail'],
            $package_data['package_title'],
            $package_data['package_price'],
            $package_data['package_subtitle'],
            $package_data['package_banner_image_id']
        );

        array_pop($package_values);

        array_map(function($pkg) use ($serviceId) {
            Package::create(
                array_merge(
                    ['service_id' => $serviceId],
                    array_combine([
                        'detail',
                        'title',
                        'price',
                        'subtitle',
                        'banner_image_id'
                    ], $pkg)
                )
            );
        }, $package_values);
    }
}
