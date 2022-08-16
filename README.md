sourcemod-nativevotes-updated
=====================

### NativeVotes SourceMod plugin, with the following fixes:

@nosoop
- [Prevent NativeVote menu callback from freeing in-use forward handle](https://github.com/powerlord/sourcemod-nativevotes/pull/3)
- [Hotfix for 2022-06-22 Update](https://github.com/sapphonie/sourcemod-nativevotes-updated/pull/11)

@rowedahelicon
- [Fixed MvM mission votes from causing an Invalid forward handle](https://github.com/powerlord/sourcemod-nativevotes/pull/8)

@Blueberryy
- [Added Russian translation](https://github.com/powerlord/sourcemod-nativevotes/pull/7)

@arthurdead
- [Sourcemod 1.11 syntax update](https://github.com/arthurdead/sourcemod-nativevotes/tree/sm111-fix)

@sapphonie (me)
- [Stop memleak with FireToClient](https://github.com/powerlord/sourcemod-nativevotes/pull/9)

@justkamiii
- [Fix caps](https://github.com/sapphonie/sourcemod-nativevotes-updated/pull/7)

@HotoCocoaco
- [Add chi translation](https://github.com/sapphonie/sourcemod-nativevotes-updated/pull/8)

@fdxx
- [Fixed L4D2_VotePass](https://github.com/sapphonie/sourcemod-nativevotes-updated/pull/11)

@satanskitty
- [danish and turkish translations](https://github.com/sapphonie/sourcemod-nativevotes-updated/pull/17)

@Spaenny
- [added german translation](https://github.com/sapphonie/sourcemod-nativevotes-updated/pull/18)

@iBoonie
- [fixed a bug where you can spam invalid votes and forcibly prematurely change the level](https://github.com/sapphonie/sourcemod-nativevotes-updated/pull/20)
- [removed an unnecessary ThrowNativeError](https://github.com/sapphonie/sourcemod-nativevotes-updated/pull/21)

This repo also autoreleases all changes to master, compiled on SM 1.10 and SM 1.11. Check out the latest release [here](https://github.com/sapphonie/sourcemod-nativevotes-updated/releases/latest).

NativeVotes is a SourceMod Plugin that lets plugins use the L4D/L4D2/TF2/CSGO built-in vote screens.
It supplies an API that plugins can use to create and display these votes.

It replaces the BuiltinVotes SourceMod extension and has a few new features as well as bugfixes.
