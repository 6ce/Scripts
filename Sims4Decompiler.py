## just decompiles all the .pyc (python compiled) scripts in "simulation" in "C:\Program Files (x86)\Origin Games\The Sims 4\Data\Simulation\Gameplay"

import requests as Requests, json as JSON, os as OS, time as Time ## import requests, json, os, and time
from glob import iglob as IGlob ## import iglob

APIUrl = "https://api.toolnb.com/Tools/Index/PycRun.html" ## declare api url
Files = [File for File in IGlob("simulation/**/**/**", recursive=True) if OS.path.isfile(File)] ## declare list of every single file
FoldersPrinted = [] ## declare already printed folders

def GetFileAsBinary(FileName): ## declare function to return file contents
	with open(FileName, "rb") as File:
		return File.read()

def ConvertToPayload(Binary): ## declare function to convert file contents to request payload
	return {"file": ("file.pyc", Binary)}

def ParseRequest(Request): ## declare function to get decompiled script & remove first 6 lines
	Data = JSON.loads(Request)["data"]

	return "\n".join(Data.split("\n")[6:])

def MakeRequest(Payload): ## make request to get decompiled script & parse the request json
	return ParseRequest(Requests.post(url=APIUrl, files=Payload).text)

for File in Files: ## iterate through all files
	ScriptDirectory = File.replace("simulation/", "simulation_decompiled/") ## declare new root directory
	ScriptDirectory = ScriptDirectory.replace(".pyc", ".py") ## encode files as .py not .pyc
	FolderDirectory = OS.path.dirname(ScriptDirectory) + "/" ## declare folder directory and add / at the end
	
	try: ## try to run this code cuz its errored before idk why
		Binary = GetFileAsBinary(File) ## declare binary contents of file
		Payload = ConvertToPayload(Binary) ## declare binary payload for request
		Response = MakeRequest(Payload) ## declare the decompiled code

		if OS.path.isdir(FolderDirectory): ## does the folder directory exist
			if not FolderDirectory in FoldersPrinted: ## if we havent already printed this folder directory
				FoldersPrinted.append(FolderDirectory) ## add the current directory to the already printed list
				print(f"Folder exists: {FolderDirectory}") ## print folder directory
			
			if not OS.path.isfile(ScriptDirectory): ## check if decompiled already exists (matters if we run multiple times)
				with open(ScriptDirectory, "w") as NewFile: ## create a new file with the path we declared before
					NewFile.write(Response) ## write the decompiled code as the files contents

				print(f"Created script: {ScriptDirectory}") ## show we created a script at this directory
			else:
				print(f"Script exists: {ScriptDirectory}") ## print that script exists
		else: ## the folder does not exist
			OS.mkdir(FolderDirectory) ## create the folder directory

			print(f"Created folder: {FolderDirectory}") ## log that we created it

			if not OS.path.isfile(ScriptDirectory): ## check if decompiled already exists (matters if we run multiple times)
				with open(ScriptDirectory, "w") as NewFile: ## create a new file with the path we declared before
					NewFile.write(Response) ## write the decompiled code as the files contents

				print(f"Created script: {ScriptDirectory}") ## show we created a script at this directory
	except Exception: ## why did this error
		print(f"Error with: {ScriptDirectory} ({Exception})") ## log the error
		
		pass ## still we move fr

	Time.sleep(1) ## wait 1 second to protect against ratelimiting
