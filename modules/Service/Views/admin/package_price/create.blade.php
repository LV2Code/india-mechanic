<div class="form-group">
    <label>Package</label>
    <select
        name="pacakge"
        class="form-control">
        @foreach($packages as $package)
            <option value="{{ $package->id }}"> {{ $package->title }} </option>
        @endforeach
    </select>
</div>

<div class="form-group">
    <label>Location</label>
    <select
        name="location"
        class="form-control">
        @foreach($locations as $location)
            <option value="{{ $location->id }}"> {{ $location->name }} </option>
        @endforeach
    </select>
</div>

<div class="form-group">
    <label>Price</label>
    <input
        type="text"
        class="form-control"
        name="price">
</div>