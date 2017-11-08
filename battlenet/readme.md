# battle.net launcher notes


## Useful commands

```
Battle.net.exe --game=wow --install
```

Substitute `wow` with one of:
- `wow` for World of Warcraft
- `diablo3` for Diablo III
- `hs_beta` for hearthstone
- `prometheus` for overwatch
- `s2` for Starcraft 2
- `heroes` for heroes of the storm



## Some random forum posting of value

```
I did some digging.

By "game selection" I assume you mean "having to click Play". This does not appear to be a feature accessible by command line at this time.

However, if you mean "Having to click on World of Warcraft in the games list, in order to then click on Play", this is available by command-line.

To select WoW: battle.net.exe --exec="launch_uid wow"
To select Diablo 3: battle.net.exe --exec="launch_uid diablo3"
Other game IDs: "hs_beta" for hearthstone, "prometheus" for overwatch, "s2" for Starcraft 2, "heroes" for heroes of the storm

You can also bring up the Settings or Friends windows:
battle.net.exe --exec="dialog settings"
battle.net.exe --exec="dialog friends"

bring up the Shop:
battle.net.exe --exec="focus shop"

force log out:
battle.net.exe --exec="logout"

shut down battle.net client:
battle.net.exe --exec="shutdown"

```