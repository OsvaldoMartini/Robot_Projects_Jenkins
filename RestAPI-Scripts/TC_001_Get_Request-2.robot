*** Settings ***
Library  RequestsLibrary

*** Variables ***
${Base_URL}  http://thetestingworldapi.com 

*** Test Cases ***
TC_001_Get_Request
	create session  Get_Student_Details  ${Base_URL}
	${response}=  get request  Get_Student_Details  api/studentsDetails
	log to console  ${response}
	log to console  ${response.content}
