var cartApp = angular.module('cartApp', []);
 
cartApp.controller('cartCtrl',  function ($scope, $http) {
	
	$scope.refreshCart = function(cartId) {
		  						$http.get('/pipaoils/rest/cart/'+$scope.cartId)
		  						 	 .success(function(data) {
		  						 		 		$scope.cart = data;
		  						 	 		});
		  					};
		  					
	$scope.clearCart = function() {
		  						$http.delete('/pipaoils/rest/cart/'+$scope.cartId)
		  							 .success($scope.refreshCart($scope.cartId));
		  						
	  					  };
	  					  
	$scope.initCartId = function(cartId) {
		  					$scope.cartId=cartId;
		  					$scope.refreshCart($scope.cartId);
	  						};
	  						
	  $scope.addToCart = function(id) {
		  						$http.put('/pipaoils/rest/cart/add/'+id)
		  						 	 .success(function(data) {
		  						 		 		$scope.refreshCart($http.get('/pipaoils/rest/cart/get/cartId'));
		  						 		 		alert("Uspěšně jste přidali produkt do nákupního košíku!");
		  						 	 		});
		  					};
	  $scope.removeFromCart = function(productId) {
			  						$http.put('/pipaoils/rest/cart/remove/'+id)
			  						 	 .success(function(data) {
			  						 		 	$scope.refreshCart($http.get('/pipaoils/rest/cart/get/cartId'));
			  						 	 		});
			  					};
	  });
