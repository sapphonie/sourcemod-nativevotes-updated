#!/bin/bash
spcomp="/home/steph/tfTEST/tf2/tf/addons/sourcemod/scripting/spcomp64"
outdir="/home/steph/tfTEST/tf2/tf/addons/sourcemod/plugins"

scriptdir="addons/sourcemod/scripting"

nv_plugs=("nativevotes")
nv_plugs+=("nativevotes.sp")
nv_plugs+=("nativevotes-basecommands.sp")
nv_plugs+=("nativevotes_mapchooser.sp")
nv_plugs+=("nativevotes_nominations.sp")
nv_plugs+=("nativevotes_rockthevote.sp")

nv_plugins_disabled=("nativevotes_votetest.sp")
nv_plugins_disabled+=("nativevotes_votemanager_test.sp")
nv_plugins_disabled+=("csgo_votestart_test.sp")
nv_plugins_disabled+=("votedelay_changelevel.sp")
nv_plugins_disabled+=("votediagnostics.sp")
nv_plugins_disabled+=("votefailed.sp")

# we start in git root
pushd ${scriptdir}


for target in "${nv_plugs[@]}"; do
    ${spcomp} -i"./include/" "${target}" -o "${outdir}"/"${target}".smx || exit 1
done

for target in "${nv_plugins_disabled[@]}"; do
    ${spcomp} -i"./include/" "${target}" -o ${outdir}/disabled/"${target}".smx || exit 1
done
