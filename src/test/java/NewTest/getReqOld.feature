Feature: Test get call 

Scenario: Test the get call 

	Given url "https://simple-tool-rental-api.glitch.me/status" 
	When method get 
	Then status 200
	And print response