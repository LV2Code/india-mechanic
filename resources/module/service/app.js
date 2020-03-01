import Vue from 'vue'

import FlashMessage from '../core/components/FlashMessage.vue';
import ManagePriceByLocation from "./components/ManagePriceByLocation.vue";

const app = new Vue({
    el:'#app',
    components: {
    	FlashMessage,
    	ManagePriceByLocation,
    },
});
