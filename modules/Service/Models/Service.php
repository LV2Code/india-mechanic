<?php

namespace Modules\Service\Models;

use Modules\Service\Models\Package;
use Modules\Media\Helpers\FileHelper;
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
    protected $appends = ['starting_price'];


    public static function isEnable() {
        return;
    }

    public function packages() {
        return $this->hasMany(Package::class);
    }

    public function getStartingPriceAttribute() {
        return $this->packages->min('price');
    }


    public function getGallery($featuredIncluded = false) {
        if (empty($this->gallery)) {
            return $this->gallery;
        }

        $list_item = [];

        if ($featuredIncluded and $this->image_id) {
            $list_item[] = [
                'large' => FileHelper::url($this->image_id, 'full'),
                'thumb' => FileHelper::url($this->image_id, 'thumb')
            ];
        }

        $items = explode(",", $this->gallery);

        foreach ($items as $k => $item) {
            $large = FileHelper::url($item, 'full');
            $thumb = FileHelper::url($item, 'thumb');
            $list_item[] = [
                'large' => $large,
                'thumb' => $thumb
            ];
        }
        return $list_item;
    }
}
