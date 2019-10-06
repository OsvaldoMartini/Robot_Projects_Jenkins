*** Settings ***
Library  RequestsLibrary

*** Variables ***
${App_Base_URL}  http://thetestingworldapi.com 
${StudentID}  145902

*** Test Cases ***
TC_002_Fetch_StudentDetails_by_Id
	create session  Fetch_Data  ${App_Base_URL}
	${response}=  get request  Fetch_Data  api/studentsDetails/${StudentID}
	${actual_code}=	convert to string	${response.status_code}
	should be equal	${actual_code}	200
	log to console  ${response.status_code}
	log to console  ${response.content}
