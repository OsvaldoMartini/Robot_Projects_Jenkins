*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Variables ***
${Base_URL}  http://thetestingworldapi.com 

*** Keywords ***
Fetch and Validate Get Status Code
	[Arguments]  ${studentId}  ${expectedStatusCode}
	create session  SName  ${Base_URL}
	${response}=  get request  SName  api/studentsDetails/${studentId}
	${actual_code}=	convert to string	${response.status_code}
	should be equal	${expectedStatusCode}  ${actual_code}
	log to console  ${response.status_code}
	log to console  ${response.content}

Fetch and Return Get Response
	[Arguments]  ${studentId}
	create session  SName  ${Base_URL}
	${response}=  get request  SName  api/studentsDetails/${studentId}
	[Return]  ${response}
