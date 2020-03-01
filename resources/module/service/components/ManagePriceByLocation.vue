<template>
    <div class="panel">
        <div class="panel-title"> Add New Package-Price </div>
        <div class="panel-body">
            <form @submit.prevent="onSubmit">
                <div class="form-group">
                    <label>Package</label>
                    <select
                        class="form-control"
                        v-model="form.package">
                        <option
                            v-for="pkg in packages"
                            :value="pkg.id"
                            v-text="pkg.title"></option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Location</label>
                    <select
                        class="form-control"
                        v-model="form.location">
                        <option
                            v-for="location in availabelLocations"
                            :value="location.id"
                            v-text="location.name"></option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Price</label>
                    <input
                        type="text"
                        class="form-control"
                        v-model="form.price">
                </div>

                <div>
                    <button
                        type="submit"
                        class="btn btn-primary" >Add New</button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
    import axios from 'axios';

    export default {
        props: {
            packages: Array,
            locations: Array,
            endpoint: String,
            editing: Object|Array,
            method: String,
            existinGroupings: Array,
        },

        data() {
            return {
                form: {
                    price: this.packages[0].price,
                    package: this.packages[0].id,
                    location: null,
                }
            }
        },

        computed: {
            isEditing() {
                return !!(this.editing && !Array.isArray(this.editing));
            },

            groupings() {
                return this.existinGroupings.reduce((group,row) => {
                    group = group || {}
                    group[row.package_id] = [...(group[row.package_id]|| []), row.location_id]
                    return group;
                }, {});
            },

            availabelLocations() {
                return this.locations.filter(location => {
                    return location.id == this.editing.location ||
                        !(this.groupings[this.form.package] || []).includes(location.id);
                })
            }
        },

        watch: {
            editing: {
                handler(newValue) {
                    if(!this.isEditing) {return}

                    this.$set(this.$data, 'form', newValue);
                },
                immediate: true,
            },

            availabelLocations: {
                handler(newValue) {
                    this.$set(this.form, 'location', newValue[0].id);
                },
                immediate: true,
            },

            'form.package': {
                handler(newValue) {
                    this.form.price = this.packages.find(pkg => pkg.id === newValue).price;
                },
            },
        },

        methods: {
            onSubmit() {
                axios[this.method](this.endpoint, this.form)
                .finally((response) => location.reload());
            }
        }
    }
</script>
