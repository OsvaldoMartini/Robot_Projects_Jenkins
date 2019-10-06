*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections
Resource  Resources/UserKeyword.robot

*** Variables ***
${App_Base_URL}  http://localhost:9095 

*** Test Cases ***
TC_008 User Login Resource
	create session  UserLogin  ${App_Base_URL}
	${header}=  create dictionary  Content-Type=application/json
	${json_content}=  Fetch Request Content  UsersLogin.json
	
	log to console  ${json_content}
	
	${response}  post request  UserLogin  /api/users/login  data=${json_content}  headers=${header}
	log to console  ${response.content}
	${code_status}  convert to string  ${response.status_code}
	should be equal  ${code_status}  200