 ## Executions commands Lines
 
// Execution Reports into a folder
robot -d D:\Projetos\JenkinsWorkspace\RestAPI-Scripts\Reports TC_007_ValidateStatusCode_Keyword.robot

// Post Request Login User
robot --outputdir RestAPI-Scripts\Reports --timestampoutputs RestAPI-Scripts\TC_004_Post_RequestRobot.robot

// Execution Reports into a folder TimeStamps
robot --outputdir RestAPI-Scripts\Reports --timestampoutputs RestAPI-Scripts\TC_007_ValidateStatusCode_Keyword.robot

// Post Request with file Json Content 
robot --outputdir RestAPI-Scripts\Reports --timestampoutputs RestAPI-Scripts\TC_008_Post_ReadJson.robot
