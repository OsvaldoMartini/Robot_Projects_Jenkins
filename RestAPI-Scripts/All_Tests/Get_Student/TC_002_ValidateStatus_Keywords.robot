*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections
Resource  ../../Resources/UserKeyword.robot

*** Variables ***
${App_Base_URL}  http://thetestingworldapi.com 
${StudentID}  145902

*** Test Cases ***
TC_002_Fetch_StudentDetails_by_Id_with_Keywords
	Fetch and Validate Get Status Code  145902  200
	${response}  Fetch and Return Get Response  145902
	log to console  ${response}
	${response1}  Fetch and Return Get Response  145903
	log to console  ${response1}