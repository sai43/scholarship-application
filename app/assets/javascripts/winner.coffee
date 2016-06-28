app = angular.module('Raffler', ["ngResource"])

app.factory "User", ($resource) ->
	$resource("/users/:id", {id: "@id"}, {update: {method: "PUT"}})

app.controller "RaffleCtrl", (User, $scope) ->
	$scope.users = User.query()

	$scope.addEntry = ->
		entry = User.save($scope.newUser)
		$scope.users.push($scope.newUser)
		$scope.newUser = {}

	$scope.drawWinner = ->
		pool = []
		angular.forEach $scope.users, (user) ->
			pool.push(user) if !user.winner
		if pool.length > 0
			user = pool[Math.floor(Math.random()*pool.length)]
			user.winner = true
			user.$update()
			$scope.lastWinner = user
