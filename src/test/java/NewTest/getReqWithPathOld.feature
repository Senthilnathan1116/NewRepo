Feature: Test get call Path 

Background: 
	Given url "https://simple-tool-rental-api.glitch.me" 
	
Scenario: Test the get call with path 

	Given path "/status" 
	And header Accept = "application/json" 
	When method get 
	Then status 200 
	And print response 
	
	
Scenario: Test matcher exact match

	Given url "https://simple-tool-rental-api.glitch.me" 
	And path "/status" 
	And header Accept = "application/json" 
	When method get 
	Then status 200 
	And print response 
	And match response == 
		"""
	{
    "status": "UP"
}
	"""