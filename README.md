# Instructions:
1. Copy `server/server_env.example` to `server/server_env`
1. Run `./update_server` to install
1. After the server is up, run `./get_server_join_code` to get the six-digit join code
1. If the server software needs to be updated, re-run `./update_server`

Backups are stored in `backups`. To decompress them, copy them to an empty directory and run `tar -xzf [name].gz`

# More verbose:
This project requires Docker to run

Before running, copy `server/server_env.example` to `server/server_env` and modify it as you see fit.  If you do not do this, it will be copied automatically on first run and use the default values

Run `./update_server` from its directory to install the server and run it as desired to update to the latest Valheim server software.  This will take some time initially but will be faster on subsequent runs


`./update_server` will create a docker instance of `steamcmd`, logged in as `anonymous`, and pull the necessary server files from the steam library.
It will then create a backup of the important server files and world saves, move `server/` to `server.old` (any previous `server.old/` will be deleted), before copying all of the new server files to `server/` along with any files that are modified for this project.


Run `./backup_server` to stop the running server, create a backup, and then bring it up again.  To do this without the down/up, run `./backup_server --no-docker`

Once a server is running, run `./get_server_join_code` to get the six-digit server join code

This project is not associated with IronGate, Valheim, Valve, or Steam in any way
