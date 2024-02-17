Feature: Verify Get Call 

Background: 
	Given url 'http://localhost:9191' 
	
Scenario: Validate Get call with path parameter 

	Given path '/normal/webapi/all' 
	When method get 
	Then status 200 
	And print response 
	
Scenario: Validate Get call response - match 

	Given path '/normal/webapi/all' 
	When method get 
	Then status 200 
	#And print response 
	And match response == 
		"""
	[
    {
        "jobId": 1,
        "jobTitle": "Software Engg",
        "jobDescription": "To develop andriod application",
        "experience": [
            "Google",
            "Apple",
            "Mobile Iron"
        ],
        "project": [
            {
                "projectName": "Movie App",
                "technology": [
                    "Kotlin",
                    "SQL Lite",
                    "Gradle"
                ]
            }
        ]
    }
]
	"""
		
Scenario: Validate Get call response - match/ contains/ deep

	Given path '/normal/webapi/all' 
	When method get 
	Then status 200 
	#And print response 
	And match response.[0].project contains deep {"projectName": "Movie App"}
	And match response.[0].jobTitle == 'Software Engg'
	And match response.[0].experience[2] contains 'Mobile Iron'
	
Scenario: Validate Get call response - match arrray validation

	Given path '/normal/webapi/all' 
	When method get 
	Then status 200 
	#And print response 
	And match response.[0].project contains deep {"projectName": "Movie App"}
	And match response.[0].project[0].technology == '#[3]'
	And def tech_value = response[0].project[0].technology
	And print tech_value
	And match tech_value contains 'Kotlin'
	And match response[0].project[0].technology[*] contains 'Kotlin'
	And match response[0].project[0].technology[*] == ["Kotlin","SQL Lite","Gradle"]	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
		
	