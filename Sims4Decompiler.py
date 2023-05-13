import requests as Requests, json as JSON, os as OS, time as Time
from glob import iglob as IGlob

APIUrl = "https://api.toolnb.com/Tools/Index/PycRun.html"
Files = [File for File in IGlob("simulation/**/**/**", recursive=True) if OS.path.isfile(File)]
FoldersPrinted = []

def GetFileAsBinary(FileName):
	with open(FileName, "rb") as File:
		return File.read()

def ConvertToPayload(Binary):
	return {"file": ("file.pyc", Binary)}

def ParseRequest(Request):
	Data = JSON.loads(Request)["data"]

	return "\n".join(Data.split("\n")[6:])

def MakeRequest(Payload):
	return ParseRequest(Requests.post(url=APIUrl, files=Payload).text)

for File in Files:
	ScriptDirectory = File.replace("simulation/", "simulation_decompiled/")
	ScriptDirectory = ScriptDirectory.replace(".pyc", ".py")
	FolderDirectory = OS.path.dirname(ScriptDirectory) + "/"
	
	try:
		Binary = GetFileAsBinary(File)
		Payload = ConvertToPayload(Binary)
		Response = MakeRequest(Payload)

		if OS.path.isdir(FolderDirectory):
			if FolderDirectory != "simulation_decompiled/" and not FolderDirectory in FoldersPrinted:
				FoldersPrinted.append(FolderDirectory)
				print(f"Folder exists: {FolderDirectory}")
			
			if not OS.path.isfile(ScriptDirectory):
				with open(ScriptDirectory, "w") as NewFile:
					NewFile.write(Response)

				print(f"Created script: {ScriptDirectory}")
			else:
				print(f"Script exists: {ScriptDirectory}")
		else:
			OS.mkdir(FolderDirectory)

			print(f"Created folder: {FolderDirectory}")

			if not OS.path.isfile(ScriptDirectory):
				with open(ScriptDirectory, "w") as NewFile:
					NewFile.write(Response)

				print(f"Created script: {ScriptDirectory}")
	except Exception:
		print(f"Error with: {ScriptDirectory} ({Exception})")
		
		pass

	Time.sleep(1)
