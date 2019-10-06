##  Jenkins Install Steps

* dowloand Generic Javapackage.war

> https://jenkins.io/download/

run :

````java
	java -jar jenkins.war --httpPort=9595
````

### Get the Password

### Define the Plugins to be installed


### Define the Admin User
User: martini
Password: martini383940

### Create a New Job
	* Free Style with the name RobotTests

### Select the Project on GitHub

### Some configurations

General Tab

### Source Code Management > Select 'Git'

### Advanced > Use custom workspace > Select Some Directory

### Build Triggers >  Poll SCM > Schedulle > 'To creates schedulinng for a Git Hub Already Selected above'

## Important

### Build

* Select "Execute Windows batch command"

Command:
* It runs all tests cases

````
d:
cd D:\Projetos\JenkinsWorkspace\RestAPI-Scripts
robot ????
echo Complete
````

### Or
* Run Specific TestCase

````
d:
cd D:\Projetos\Robot-Framework\JenkinsWorkspace
robot RestAPI-Scripts\TC_007_ValidateStatusCode_Keyword.robot
echo Complete
````

### Add 'RobotFramework' Plugins on Jenkins

* Menu > Jenkins > Manage Jenkins > Manage Plugins > Available (section) > 

> Search For "robot" > 'Select and Install Without Restart'
 
### Return to the Project

* Configure  > Post-built Actions (tab) > 'Add post-built action' > 'Publish Robot Framework test results'

* Directory of Robot output > "D:\Projetos\JenkinsWorkspace\RestAPI-Scripts\Reports"

### Check "Robot Results"

## Importante: Search on line for "Jenkins Configuring Content Security Policy"

> https://wiki.jenkins.io/display/JENKINS/Configuring+Content+Security+Policy

* Copy and Run

* For Some Privilegies Problems

> 'System.setProperty("hudson.model.DirectoryBrowserSupport.CSP", "")'

* For Javascript Problems

> System.setProperty("hudson.model.DirectoryBrowserSupport.CSP","sandbox allow-scripts; default-src 'none'; img-src 'self' data: ; style-src 'self' 'unsafe-inline' data: ; script-src 'self' 'unsafe-inline' 'unsafe-eval' ;")


### Menu Jenkins > Manage Jenkins > Script Console > Copy the content of 'System.setProperty("hudson.model.DirectoryBrowserSupport.CSP", "")'

### Build Triggers

* Build periodically > Check the 'Help Icon'

### Check Jenkins Build Pipeline

> https://www.youtube.com/watch?v=zf6ogW0HKLY

* Installing Jenkins Pipeline Plugin

* Menu Jenkins > Manage Jenkins > Manage Plugins > Available (tab) . Search for 'build pipeline'

### Add Pipeline View

* Return to the Dashboar
* Click in the "+" (plus bluetab)
* Give a name in the 'View Name' > "BuildPipelineTest" > Select 'Build Pipeline View'
* In Pipeline Flow > Upstream / downstream config > Select 'Select Initial Job' > RobotWorkspace > Apply > Ok
* The View will be empty if the jobs do not have any run
* Click on 'Configure' > Display Options > 	No Of Displayed Builds > 1...10 for example > Apply > OK
* Click on 'Run'
* Click on the Link of the Job > '#10 RobotWorkspace'
* Click on the small 'cmd icon'
* Click on 'Configute' > Display Options > Console Output Link Style > New window
* Click on the small 'green arrow' to Re-Run a particular 'Job'
* click on 'History' to see all history of the jobs
* Click on 'Add Step' to add new job
* Click on 'Delete' to delete the current View
* Click on 'Manage' but it will take you to the 'Manage of Jenkins workplace'



### Check the web Site 

> https://automationstepbystep.com/