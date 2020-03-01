<?php
namespace Modules\Service;

use Modules\Service\Models\Service;
use Modules\ModuleServiceProvider;

class ModuleProvider extends ModuleServiceProvider
{

    public function boot() {
        $this->loadMigrationsFrom(__DIR__ . '/Migrations');
    }

    /**
     * Register bindings in the container.
     *
     * @return void
     */
    public function register() {

        $this->app->register(RouterServiceProvider::class);
    }

    public static function getAdminMenu()
    {
        // if(!Service::isEnable()) return [];
        return [
            'service'=>[
                "position"=> 46,
                'url'        => 'admin/module/service',
                'title'      => __('Service'),
                'icon'       => 'ion-logo-model-s',
                // 'permission' => 'service_view',
                'children'   => [
                    'add'=>[
                        'url'        => 'admin/module/service',
                        'title'      => __('All Services'),
                        // 'permission' => 'service_view',
                    ],
                    'create'=>[
                        'url'        => 'admin/module/service/create',
                        'title'      => __('Add New Service'),
                        // 'permission' => 'service_create',
                    ],
                    'package_price'=>[
                        'url'        => 'admin/module/package/create',
                        'title'      => __('Package Price'),
                        // 'permission' => 'service_create',
                    ],
                ]
            ]
        ];
    }

    public static function getBookableServices()
    {
        if(!Service::isEnable()) return [];
        return [
            'service'=>Service::class
        ];
    }

    public static function getMenuBuilderTypes()
    {
        if(!Service::isEnable()) return [];
        return [
            'service'=>[
                'class' => Service::class,
                'name'  => __("Service"),
                'items' => Service::searchForMenu(),
                'position'=>51
            ]
        ];
    }

    // public static function getUserMenu()
    // {
    //     if(!Service::isEnable()) return [];
    //     return [
    //         'service' => [
    //             'url'   => route('service.vendor.index'),
    //             'title'      => __("Manage Service"),
    //             'icon'       => Service::getServiceIconFeatured(),
    //             'position'   => 31,
    //             'permission' => 'service_view',
    //             'children' => [
    //                 [
    //                     'url'   => route('service.vendor.index'),
    //                     'title'  => __("All Services"),
    //                 ],
    //                 [
    //                     'url'   => route('service.vendor.create'),
    //                     'title'      => __("Add Service"),
    //                     'permission' => 'service_create',
    //                 ],
    //                 [
    //                     'url'        => route('service.vendor.availability.index'),
    //                     'title'      => __("Availability"),
    //                     'permission' => 'service_create',
    //                 ],
    //                 [
    //                     'url'   => route('service.vendor.booking_report'),
    //                     'title'      => __("Booking Report"),
    //                     'permission' => 'service_view',
    //                 ],
    //             ]
    //         ],
    //     ];
    // }

    public static function getTemplateBlocks(){
        if(!Service::isEnable()) return [];
        return [
            'form_search_service'=>"\\Modules\\Service\\Blocks\\FormSearchService",
            'list_service'=>"\\Modules\\Service\\Blocks\\ListService",
            'service_term_featured_box'=>"\\Modules\\Service\\Blocks\\ServiceTermFeaturedBox",
        ];
    }
}