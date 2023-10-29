using System;
using System.Diagnostics;
using System.IO;
using System.IO.Pipes;
using System.Net;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using Newtonsoft.Json.Linq;

namespace WeAreDevs_API
{
	// Token: 0x02000002 RID: 2
	public class ExploitAPI
	{
		// Token: 0x06000002 RID: 2
		[DllImport("kernel32.dll", CharSet = CharSet.Auto, SetLastError = true)]
		[return: MarshalAs(UnmanagedType.Bool)]
		private static extern bool WaitNamedPipe(string name, int timeout);

		// Token: 0x06000003 RID: 3 RVA: 0x00002058 File Offset: 0x00000258
		public static bool NamedPipeExist(string pipeName)
		{
			bool result;
			try
			{
				int timeout = 0;
				if (!ExploitAPI.WaitNamedPipe(Path.GetFullPath(string.Format("\\\\.\\pipe\\{0}", pipeName)), timeout))
				{
					int lastWin32Error = Marshal.GetLastWin32Error();
					if (lastWin32Error == 0)
					{
						return false;
					}
					if (lastWin32Error == 2)
					{
						return false;
					}
				}
				result = true;
			}
			catch (Exception)
			{
				result = false;
			}
			return result;
		}

		// Token: 0x06000004 RID: 4 RVA: 0x000020B0 File Offset: 0x000002B0
		private void SMTP(string pipe, string input)
		{
			if (ExploitAPI.NamedPipeExist(pipe))
			{
				try
				{
					using (NamedPipeClientStream namedPipeClientStream = new NamedPipeClientStream(".", pipe, PipeDirection.Out))
					{
						namedPipeClientStream.Connect();
						using (StreamWriter streamWriter = new StreamWriter(namedPipeClientStream))
						{
							streamWriter.Write(input);
							streamWriter.Dispose();
						}
						namedPipeClientStream.Dispose();
					}
					return;
				}
				catch (IOException)
				{
					MessageBox.Show("Error occured sending message to the game!", "Connection Failed!", MessageBoxButtons.OK, MessageBoxIcon.Hand);
					return;
				}
				catch (Exception ex)
				{
					MessageBox.Show(ex.Message.ToString());
					return;
				}
			}
			MessageBox.Show("Error occured. Did the dll properly inject?", "Oops", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
		}

		// Token: 0x06000005 RID: 5 RVA: 0x0000217C File Offset: 0x0000037C
		private string ReadURL(string url)
		{
			return this.client.DownloadString(url);
		}

		// Token: 0x06000006 RID: 6 RVA: 0x0000218C File Offset: 0x0000038C
		private JObject GetLatestData()
		{
			string text = this.ReadURL("https://cdn.wearedevs.net/software/exploitapi/latestdata.json");
			if (text.Length <= 0)
			{
				text = this.ReadURL("https://raw.githubusercontent.com/WeAreDevs-Official/backups/master/wrdeapi.json");
			}
			return JObject.Parse(text);
		}

		// Token: 0x06000007 RID: 7 RVA: 0x000021C0 File Offset: 0x000003C0
		public bool IsUpdated()
		{
			JObject latestData = this.GetLatestData();
			if (!latestData.HasValues)
			{
				MessageBox.Show("Could not check for the latest version. Did your fireall block us?", "Error");
				return false;
			}
			return !(bool)latestData["exploit-module"]["patched"];
		}

		// Token: 0x06000008 RID: 8 RVA: 0x00002210 File Offset: 0x00000410
		private bool DownloadLatestVersion()
		{
			JObject latestData = this.GetLatestData();
			if (File.Exists("deleteme"))
			{
				File.Delete("deleteme");
			}
			if (File.Exists("WeAreDevs_API.dll") && (int)latestData["csapi"]["version"] > this.WRDAPIVersion)
			{
				File.Move("WeAreDevs_API.dll", "deleteme");
				this.client.DownloadFile((string)latestData["csapi"]["download"], "WeAreDevs_API.dll");
			}
			string text = (string)latestData["exploit-module"]["download"];
			if (text.Length > 0)
			{
				if (File.Exists("exploit-main.dll"))
				{
					File.Delete("exploit-main.dll");
				}
				this.client.DownloadFile(text, "exploit-main.dll");
			}
			return File.Exists("exploit-main.dll");
		}

		// Token: 0x06000009 RID: 9 RVA: 0x000022FB File Offset: 0x000004FB
		public bool isAPIAttached()
		{
			return ExploitAPI.NamedPipeExist(this.luapipe);
		}

		// Token: 0x0600000A RID: 10 RVA: 0x00002310 File Offset: 0x00000510
		public bool LaunchExploit()
		{
			if (ExploitAPI.NamedPipeExist(this.luapipe))
			{
				return true;
			}
			if (!this.IsUpdated())
			{
				MessageBox.Show("Exploit is currently patched... Please wait for the developers to fix it! Meanwhile, check wearedevs.net for updates/info.", "Error");
			}
			if (!this.DownloadLatestVersion())
			{
				MessageBox.Show("Could not download the latest version! Did your firewall block us?", "Error");
			}
			JObject latestData = this.GetLatestData();
			if (!File.Exists("qdRFzx.exe"))
			{
				this.client.DownloadFile((string)latestData["qdRFzx_exe"], "qdRFzx.exe");
			}
			if (!File.Exists("Indicium Supra.dll"))
			{
				this.client.DownloadFile((string)latestData["Indicium_Supra_dll"], "Indicium Supra.dll");
			}
			if (!File.Exists("qdRFzx.exe") || !File.Exists("Indicium Supra.dll"))
			{
				MessageBox.Show("A depedency is missing even after being redownloaded. Please be sure yout anti-virus is disabled then restart the exploit.");
				return false;
			}
			new Process
			{
				StartInfo = 
				{
					FileName = "qdRFzx.exe"
				}
			}.Start();
			return true;
		}

		// Token: 0x0600000B RID: 11 RVA: 0x000023FC File Offset: 0x000005FC
		public bool LegacyLaunchExploit()
		{
			if (ExploitAPI.NamedPipeExist(this.luapipe))
			{
				return true;
			}
			if (!this.IsUpdated())
			{
				MessageBox.Show("Exploit is currently patched... Please wait for the developers to fix it! Meanwhile, check wearedevs.net for updates/info.", "Error");
			}
			if (!this.DownloadLatestVersion())
			{
				MessageBox.Show("Could not download the latest version! Did your firewall block us?", "Error");
			}
			if (this.injector.InjectDLL())
			{
				return true;
			}
			MessageBox.Show("DLL failed to inject", "Error");
			return false;
		}

		// Token: 0x0600000C RID: 12 RVA: 0x00002468 File Offset: 0x00000668
		[Obsolete("SendScript is deprecated, please use SendLuaCScript instead.")]
		public void SendScript(string script)
		{
			this.SendLuaCScript(script);
		}

		// Token: 0x0600000D RID: 13 RVA: 0x00002474 File Offset: 0x00000674
		public void SendLuaCScript(string Script)
		{
			foreach (string input in Script.Split("\r\n".ToCharArray()))
			{
				try
				{
					this.SMTP(this.luacpipe, input);
				}
				catch (Exception ex)
				{
					MessageBox.Show(ex.Message.ToString());
				}
			}
		}

		// Token: 0x0600000E RID: 14 RVA: 0x000024D8 File Offset: 0x000006D8
		[Obsolete("SendLimitedLuaScript is deprecated, please use SendLuaScript instead.")]
		public void SendLimitedLuaScript(string script)
		{
			this.SendLuaScript(script);
		}

		// Token: 0x0600000F RID: 15 RVA: 0x000024E1 File Offset: 0x000006E1
		public void SendLuaScript(string Script)
		{
			this.SMTP(this.luapipe, Script);
		}

		// Token: 0x06000010 RID: 16 RVA: 0x000024F0 File Offset: 0x000006F0
		public void LuaC_getglobal(string service)
		{
			this.SendLuaCScript("getglobal " + service);
		}

		// Token: 0x06000011 RID: 17 RVA: 0x00002503 File Offset: 0x00000703
		public void LuaC_getfield(int index, string instance)
		{
			this.SendLuaCScript("getglobal " + index.ToString() + " " + instance);
		}

		// Token: 0x06000012 RID: 18 RVA: 0x00002522 File Offset: 0x00000722
		public void LuaC_setfield(int index, string property)
		{
			this.SendLuaCScript("setfield " + index.ToString() + " " + property);
		}

		// Token: 0x06000013 RID: 19 RVA: 0x00002541 File Offset: 0x00000741
		public void LuaC_pushvalue(int index)
		{
			this.SendLuaCScript("pushvalue " + index.ToString());
		}

		// Token: 0x06000014 RID: 20 RVA: 0x0000255A File Offset: 0x0000075A
		public void LuaC_pushstring(string text)
		{
			this.SendLuaCScript("pushstring " + text);
		}

		// Token: 0x06000015 RID: 21 RVA: 0x0000256D File Offset: 0x0000076D
		public void LuaC_pushnumber(int number)
		{
			this.SendLuaCScript("pushnumber " + number.ToString());
		}

		// Token: 0x06000016 RID: 22 RVA: 0x00002588 File Offset: 0x00000788
		public void LuaC_pcall(int numberOfArguments, int numberOfResults, int ErrorFunction)
		{
			this.SendLuaCScript(string.Concat(new string[]
			{
				"pushnumber ",
				numberOfArguments.ToString(),
				" ",
				numberOfResults.ToString(),
				" ",
				ErrorFunction.ToString()
			}));
		}

		// Token: 0x06000017 RID: 23 RVA: 0x000025DC File Offset: 0x000007DC
		public void LuaC_settop(int index)
		{
			this.SendLuaCScript("settop " + index.ToString());
		}

		// Token: 0x06000018 RID: 24 RVA: 0x000025F5 File Offset: 0x000007F5
		public void LuaC_pushboolean(string value = "false")
		{
			this.SendLuaCScript("pushboolean " + value);
		}

		// Token: 0x06000019 RID: 25 RVA: 0x00002608 File Offset: 0x00000808
		public void LuaC_gettop()
		{
			this.SendLuaCScript("gettop");
		}

		// Token: 0x0600001A RID: 26 RVA: 0x00002615 File Offset: 0x00000815
		public void LuaC_pushnil()
		{
			this.SendLuaCScript("pushnil");
		}

		// Token: 0x0600001B RID: 27 RVA: 0x00002622 File Offset: 0x00000822
		public void LuaC_next(int index)
		{
			this.SendLuaCScript("next");
		}

		// Token: 0x0600001C RID: 28 RVA: 0x0000262F File Offset: 0x0000082F
		public void LuaC_pop(int quantity)
		{
			this.SendLuaCScript("pop " + quantity.ToString());
		}

		// Token: 0x0600001D RID: 29 RVA: 0x00002648 File Offset: 0x00000848
		public void DoBTools(string username = "me")
		{
			this.SendLuaScript("loadstring(game:HttpGet(\"https://cdn.wearedevs.net/scripts/BTools.txt\"))()");
		}

		// Token: 0x0600001E RID: 30 RVA: 0x00002655 File Offset: 0x00000855
		public void Suicide(string username = "me")
		{
			this.SendLuaScript("game:GetService(\"Players\").LocalPlayer.Character:BreakJoints()");
		}

		// Token: 0x0600001F RID: 31 RVA: 0x00002662 File Offset: 0x00000862
		public void AddForcefield(string username = "me")
		{
			this.SendLuaScript("Instance.new(\"ForceField\", game:GetService(\"Players\").LocalPlayer.Character)");
		}

		// Token: 0x06000020 RID: 32 RVA: 0x0000266F File Offset: 0x0000086F
		public void RemoveForceField(string username = "me")
		{
			this.SendLuaScript("game:GetService(\"Players\").LocalPlayer.Character.ForceField:Destroy()");
		}

		// Token: 0x06000021 RID: 33 RVA: 0x0000267C File Offset: 0x0000087C
		public void ToggleFloat(string username = "me")
		{
			this.SendLuaScript("loadstring(game:HttpGet(\"https://cdn.wearedevs.net/scripts/Float Character.txt\"))()");
		}

		// Token: 0x06000022 RID: 34 RVA: 0x00002689 File Offset: 0x00000889
		public void RemoveLimbs(string username = "me")
		{
			this.SendLuaScript("loadstring(game:HttpGet(\"https://cdn.wearedevs.net/scripts/Remove Arms.txt\"))()");
			this.SendLuaScript("loadstring(game:HttpGet(\"https://cdn.wearedevs.net/scripts/Remove Legs.txt\"))()");
		}

		// Token: 0x06000023 RID: 35 RVA: 0x000026A1 File Offset: 0x000008A1
		public void RemoveArms(string username = "me")
		{
			this.SendLuaScript("loadstring(game:HttpGet(\"https://cdn.wearedevs.net/scripts/Remove Arms.txt\"))()");
		}

		// Token: 0x06000024 RID: 36 RVA: 0x000026AE File Offset: 0x000008AE
		public void RemoveLegs(string username = "me")
		{
			this.SendLuaScript("loadstring(game:HttpGet(\"https://cdn.wearedevs.net/scripts/Remove Legs.txt\"))()");
		}

		// Token: 0x06000025 RID: 37 RVA: 0x000026BB File Offset: 0x000008BB
		public void AddFire(string username = "me")
		{
			this.SendLuaScript("Instance.new(\"Fire\", game:GetService(\"Players\").LocalPlayer.Character.HumanoidRootPart)");
		}

		// Token: 0x06000026 RID: 38 RVA: 0x000026C8 File Offset: 0x000008C8
		public void RemoveFire(string username = "me")
		{
			this.SendLuaScript("game:GetService(\"Players\").LocalPlayer.Character.HumanoidRootPart.Fire:Destroy()");
		}

		// Token: 0x06000027 RID: 39 RVA: 0x000026D5 File Offset: 0x000008D5
		public void AddSparkles(string username = "me")
		{
			this.SendLuaScript("Instance.new(\"Sparkles\", game:GetService(\"Players\").LocalPlayer.Character.HumanoidRootPart)");
		}

		// Token: 0x06000028 RID: 40 RVA: 0x000026E2 File Offset: 0x000008E2
		public void RemoveSparkles(string username = "me")
		{
			this.SendLuaScript("game:GetService(\"Players\").LocalPlayer.Character.HumanoidRootPart.Sparkles:Destroy()");
		}

		// Token: 0x06000029 RID: 41 RVA: 0x000026EF File Offset: 0x000008EF
		public void AddSmoke(string username = "me")
		{
			this.SendLuaScript("Instance.new(\"Smoke\", game:GetService(\"Players\").LocalPlayer.Character.HumanoidRootPart)");
		}

		// Token: 0x0600002A RID: 42 RVA: 0x000026FC File Offset: 0x000008FC
		public void RemoveSmoke(string username = "me")
		{
			this.SendLuaScript("game:GetService(\"Players\").LocalPlayer.Character.HumanoidRootPart.Smoke:Destroy()");
		}

		// Token: 0x0600002B RID: 43 RVA: 0x00002709 File Offset: 0x00000909
		public void DoBlockHead(string username = "me")
		{
			this.SendLuaScript("game:GetService(\"Players\").LocalPlayer.Character.Head.Mesh:Destroy()");
		}

		// Token: 0x0600002C RID: 44 RVA: 0x00002716 File Offset: 0x00000916
		public void ConsolePrint(string text = "")
		{
			this.SendLuaScript("rconsoleprint " + text);
		}

		// Token: 0x0600002D RID: 45 RVA: 0x00002729 File Offset: 0x00000929
		public void ConsoleWarn(string text = "")
		{
			this.SendLuaScript("rconsolewarn " + text);
		}

		// Token: 0x0600002E RID: 46 RVA: 0x0000273C File Offset: 0x0000093C
		public void ConsoleError(string text = "")
		{
			this.SendLuaScript("rconsoleerr " + text);
		}

		// Token: 0x0600002F RID: 47 RVA: 0x0000274F File Offset: 0x0000094F
		public void SetWalkSpeed(string username = "me", int value = 100)
		{
			this.SendLuaScript("game:GetService(\"Players\").LocalPlayer.Character.Humanoid.WalkSpeed = " + value.ToString());
		}

		// Token: 0x06000030 RID: 48 RVA: 0x00002768 File Offset: 0x00000968
		public void ToggleClickTeleport()
		{
			this.SendLuaScript("loadstring(game:HttpGet(\"https://cdn.wearedevs.net/scripts/Click Teleport.txt\"))()");
		}

		// Token: 0x06000031 RID: 49 RVA: 0x00002775 File Offset: 0x00000975
		public void SetFogStart(int value = 0)
		{
			this.SendLuaScript("game:GetService(\"Lighting\").FogStart = " + value.ToString());
		}

		// Token: 0x06000032 RID: 50 RVA: 0x0000278E File Offset: 0x0000098E
		public void SetFogEnd(int value = 0)
		{
			this.SendLuaScript("game:GetService(\"Lighting\").FogEnd = " + value.ToString());
		}

		// Token: 0x06000033 RID: 51 RVA: 0x000027A7 File Offset: 0x000009A7
		public void SetJumpPower(int value = 100)
		{
			this.SendLuaScript("game:GetService(\"Players\").LocalPlayer.Character.Humanoid.JumpPower = " + value.ToString());
		}

		// Token: 0x06000034 RID: 52 RVA: 0x000027C0 File Offset: 0x000009C0
		public void TeleportToPlayer(string targetUsername = "me")
		{
			this.SendLuaScript("game:GetService(\"Players\").LocalPlayer.Character:MoveTo(game:GetService(\"Players\"):FindFirstChild(" + targetUsername + ").Character.HumanoidRootPart.Position)");
		}

		// Token: 0x04000001 RID: 1
		private WebClient client = new WebClient();

		// Token: 0x04000002 RID: 2
		private ExploitAPI.BasicInject injector = new ExploitAPI.BasicInject();

		// Token: 0x04000003 RID: 3
		private int WRDAPIVersion = 4;

		// Token: 0x04000004 RID: 4
		private string luapipe = "WeAreDevsPublicAPI_Lua";

		// Token: 0x04000005 RID: 5
		private string luacpipe = "WeAreDevsPublicAPI_LuaC";

		// Token: 0x02000003 RID: 3
		private class BasicInject
		{
			// Token: 0x06000036 RID: 54
			[DllImport("kernel32", CharSet = CharSet.Ansi, SetLastError = true)]
			internal static extern IntPtr LoadLibraryA(string lpFileName);

			// Token: 0x06000037 RID: 55
			[DllImport("kernel32", CharSet = CharSet.Ansi, ExactSpelling = true, SetLastError = true)]
			internal static extern UIntPtr GetProcAddress(IntPtr hModule, string procName);

			// Token: 0x06000038 RID: 56
			[DllImport("kernel32.dll", SetLastError = true)]
			[return: MarshalAs(UnmanagedType.Bool)]
			internal static extern bool FreeLibrary(IntPtr hModule);

			// Token: 0x06000039 RID: 57
			[DllImport("kernel32.dll")]
			internal static extern IntPtr OpenProcess(ExploitAPI.BasicInject.ProcessAccess dwDesiredAccess, [MarshalAs(UnmanagedType.Bool)] bool bInheritHandle, int dwProcessId);

			// Token: 0x0600003A RID: 58
			[DllImport("kernel32.dll", ExactSpelling = true, SetLastError = true)]
			internal static extern IntPtr VirtualAllocEx(IntPtr hProcess, IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);

			// Token: 0x0600003B RID: 59
			[DllImport("kernel32.dll", SetLastError = true)]
			internal static extern bool WriteProcessMemory(IntPtr hProcess, IntPtr lpBaseAddress, byte[] lpBuffer, uint nSize, out UIntPtr lpNumberOfBytesWritten);

			// Token: 0x0600003C RID: 60
			[DllImport("kernel32.dll")]
			internal static extern IntPtr CreateRemoteThread(IntPtr hProcess, IntPtr lpThreadAttributes, uint dwStackSize, UIntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, out IntPtr lpThreadId);

			// Token: 0x0600003D RID: 61
			[DllImport("kernel32.dll", SetLastError = true)]
			internal static extern bool ReadProcessMemory(IntPtr hProcess, IntPtr lpBaseAddress, [Out] byte[] lpBuffer, int dwSize, out int lpNumberOfBytesRead);

			// Token: 0x0600003E RID: 62 RVA: 0x00002814 File Offset: 0x00000A14
			public bool InjectDLL()
			{
				if (Process.GetProcessesByName("RobloxPlayerBeta").Length == 0)
				{
					return false;
				}
				Process process = Process.GetProcessesByName("RobloxPlayerBeta")[0];
				byte[] bytes = new ASCIIEncoding().GetBytes(AppDomain.CurrentDomain.BaseDirectory + "exploit-main.dll");
				IntPtr hModule = ExploitAPI.BasicInject.LoadLibraryA("kernel32.dll");
				UIntPtr procAddress = ExploitAPI.BasicInject.GetProcAddress(hModule, "LoadLibraryA");
				ExploitAPI.BasicInject.FreeLibrary(hModule);
				if (procAddress == UIntPtr.Zero)
				{
					return false;
				}
				IntPtr intPtr = ExploitAPI.BasicInject.OpenProcess(ExploitAPI.BasicInject.ProcessAccess.AllAccess, false, process.Id);
				if (intPtr == IntPtr.Zero)
				{
					return false;
				}
				IntPtr intPtr2 = ExploitAPI.BasicInject.VirtualAllocEx(intPtr, (IntPtr)0, (uint)bytes.Length, 12288U, 4U);
				UIntPtr uintPtr;
				IntPtr intPtr3;
				return !(intPtr2 == IntPtr.Zero) && ExploitAPI.BasicInject.WriteProcessMemory(intPtr, intPtr2, bytes, (uint)bytes.Length, out uintPtr) && !(ExploitAPI.BasicInject.CreateRemoteThread(intPtr, (IntPtr)0, 0U, procAddress, intPtr2, 0U, out intPtr3) == IntPtr.Zero);
			}

			// Token: 0x02000004 RID: 4
			[Flags]
			public enum ProcessAccess
			{
				// Token: 0x04000007 RID: 7
				AllAccess = 1050235,
				// Token: 0x04000008 RID: 8
				CreateThread = 2,
				// Token: 0x04000009 RID: 9
				DuplicateHandle = 64,
				// Token: 0x0400000A RID: 10
				QueryInformation = 1024,
				// Token: 0x0400000B RID: 11
				SetInformation = 512,
				// Token: 0x0400000C RID: 12
				Terminate = 1,
				// Token: 0x0400000D RID: 13
				VMOperation = 8,
				// Token: 0x0400000E RID: 14
				VMRead = 16,
				// Token: 0x0400000F RID: 15
				VMWrite = 32,
				// Token: 0x04000010 RID: 16
				Synchronize = 1048576
			}
		}
	}
}
