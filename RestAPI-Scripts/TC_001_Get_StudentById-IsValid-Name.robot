*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections 

*** Variables ***
${App_Base_URL}  http://thetestingworldapi.com 
${StudentID}  145902

*** Test Cases ***
TC_001_Fetch_Student_details_by_id
	create session  Fetch_Data  ${App_Base_URL}
	${response}=  get request  Fetch_Data  api/studentsDetails/${StudentID}
	${actual_code}=	convert to string	${response.status_code}
	should be equal	${actual_code}	200
	${json_res}=  to json  ${response.content}
	${first_name_list}=  get value from json  ${json_res}  data.first_name
	${first_name}=  get from list  ${first_name_list}  0
	log to console  ${first_name}
	should be equal  ${first_name}  Littin Jomon
	${last_name_list}=  get value from json  ${json_res}  data.last_name
	${last_name}=  get from list  ${last_name_list}  0
	log to console  ${last_name}
	should be equal  ${last_name}  Jomon
	