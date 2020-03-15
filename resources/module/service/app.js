import Vue from 'vue'

import FlashMessage from '../core/components/FlashMessage.vue';
import ManagePriceByLocation from "./components/ManagePriceByLocation.vue";

var id = $('#service-location');
if (id.length) {
	new Vue({
	    el:'#service-location',
	    components: {
	    	FlashMessage,
	    	ManagePriceByLocation,
	    },
	});
}