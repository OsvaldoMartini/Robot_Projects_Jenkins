import json

def read_request_content():
	file = open('D:/Projetos/Robot-Framework/development/robot-scripts/RestAPI-Scripts/Resources/RequestStudent.json','r')
	jsofile = file.read()
	json_content = json.loads(jsonfile)
	return json_content
	
x=read_request_content()
print(x)	