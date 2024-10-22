
Feature: Customer Search and Purchase item form the application.
		 In this feature a customer will come to my application, login, search
		 do payment and logout
		 
	Background:
		Given	User open browser, enter URL, and navigate to login page
		
		
	Scenario Outline: Verify Login and logout functionality with multiple user data
		When	User enters username "<Username>"
		And		User enters password "<Password>"
		And		User clicks on signin button
		Then	User should be logged In
		When	User clicks on Signout link
		Then	User should be logged out
	
	
	Examples:
			|Username|Password|
			| User1	 | Pass1 |
			| User2	 | Pass2 |
			| User3	 | Pass3 |
			| User4	 | Pass4 |
			
	
		 
	Scenario: New User(Unregistered User) comes to application, Search, Register, and Purchase
		When	User enter data in Search field
		And		User click on Search button
		And		User click on Add to cart for the first test result
		And		User click on my Cart button
		Then	User should get added item in Cart
		And		User should get price of item in front of Item name
		When	User click on Purchase button
		And 	User Select payment mode is Credit Card
	
	
	Scenario: Register User, Search Item, Add to cart and Purchase
		When	User enter "Mobile Phone" in Searh field
		And		User click on Search button
		And		User click on Add to cart for the first search result
	
	
	Scenario: Registered User, Search, Add to Cart, Change Address and payment
		When	User enter "Smart TV" in Searh field
		And		User click on Search button
		And		User click on Add to cart for the first search result