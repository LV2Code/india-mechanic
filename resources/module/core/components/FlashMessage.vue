<template>
    <div
    	v-if="message"
    	:class="classList[type]"
    	class="alert alert-block">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>{{ message }}</strong>
    </div>
</template>


<script>

	export default {
		props: {
			type: String,
			message: String,
		},

		data() {
			return {
				classList: {
					'success': 'alert-success ',
					'error': 'alert-danger ',
				}
			}
		}
	}

</script>