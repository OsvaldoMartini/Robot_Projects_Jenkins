import json
#import simplejson as json

json.dumps(['foo', {'bar': ('baz', None, 1.0, 2)}])

def read_request_content(fileName):
	file = open('D:/Projetos/Robot_Projects_Jenkins/RestAPI-Scripts/Resources/'+fileName,'r');
	json_file = file.read();
	json_content = json.loads(json_file);
	#json_content = json.dumps({'4': 5, '6': 7}, sort_keys=True, indent=4)
	return json_content
	
#x=read_request_content()
#print(x)	