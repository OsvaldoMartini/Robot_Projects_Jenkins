*** Settings ***
Library  RequestsLibrary

*** Variables ***
${Application_URL}  http://thetestingworldapi.com 

*** Test Cases ***
TC_001_Set_Variables
	${URL}=  set variable  HelloWorld
	log to console  ${Application_URL}
	log to console  ${url}
