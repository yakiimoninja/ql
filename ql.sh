#! /bin/bash
export qPathToStartScript="~/.steam/steamcmd/steamapps/common/qlds/run_server_x86.sh"

gameport=27960
rconport=28960

echo "========== QuakeStart has started. =========="
echo "========= $(date) ========="
cd ~/.steam/steamcmd/steamapps/common/qlds/baseq3

exec $qPathToStartScript \
	+set g_password "" \
	+set net_port $gameport \
	+set zmq_rcon_enable 1 \
	+set zmq_rcon_password "password" \
	+set zmq_rcon_port $rconport \
	+set zmq_stats_enable 1 \
	+set zmq_stats_password "password" \
	+set zmq_stats_port $gameport \
	+set serverstartup "map aerowalk 3ntffa" \
	+set sv_mapPoolFile "mappools/mappool_3ntffa.txt" \
