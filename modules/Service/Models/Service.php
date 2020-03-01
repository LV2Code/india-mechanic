<?php

namespace Modules\Service\Models;

use Modules\Service\Models\Package;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $fillable = [
        'title',
        'gallery',
        'description',
        'banner_image_id'
    ];

    protected $with = ['packages'];


    public static function isEnable(){
        return;
    }

    public function packages()
    {
        return $this->hasMany(Package::class);
    }
}
