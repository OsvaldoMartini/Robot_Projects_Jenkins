*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Variables ***
#${App_Base_URL}  http://thetestingworldapi.com 
${App_Base_URL}  http://localhost:9095 

*** Test Cases ***
TC_004 User Login Resource
	create session  UserLogin  ${App_Base_URL}
	${header}=  create dictionary  Content-Type=application/json
	${body}=  create dictionary  username=osvaldo.martini@gmail.com  password=martini
	
	${response}  post request  UserLogin  /api/users/login  data=${body}  headers=${header}
	log to console  ${response.content}
	${code_status}  convert to string  ${response.status_code}
	should be equal  ${code_status}  200