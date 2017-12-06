myApp.factory('User', ['railsResourceFactory', function(railsResourceFactory){
	var user = railsResourceFactory({
		url: '/user',
		name: 'user'
	})
	return user;
}])

myApp.factory('Trip', ['railsResourceFactory', function(railsResourceFactory){
	var trip = railsResourceFactory({
		url: '/trip',
		name: 'trip'
	})

	trip.get_data = function(data){
		return this.$post('/trip/get_data',{data: data});
	}

	return trip;
}])

myApp.factory('POI', ['railsResourceFactory', function(railsResourceFactory){
	var poi = railsResourceFactory({
		url: '/poi',
		name: 'poi'
	})
	return poi;
}])

myApp.factory('Home', ['railsResourceFactory', function(railsResourceFactory){
	var home = railsResourceFactory({
		url: '/home',
		name: 'home'
	})
	return home;
}])

myApp.factory('Destination', ['railsResourceFactory', function(railsResourceFactory){
	var destination = railsResourceFactory({
		url: '/destination',
		name: 'destination'
	})
	return destination;
}])