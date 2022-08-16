#!/bin/bash


versvers=$(spcomp64 -v | grep "Compiler" --color=never | cut -d " " -f 3)


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
pushd ./addons/sourcemod/scripting

mkdir ../plugins/disabled -p || true


for target in "${nv_plugs[@]}"; do
    spcomp64 -i"./include/" "${target}" -o ../plugins/"${target}".smx
done

for target in "${nv_plugins_disabled[@]}"; do
    spcomp64 -i"./include/" "${target}" -o ../plugins/disabled/"${target}".smx
done

popd

mkdir build || true
7za a -r build/nativevotes_sm_"${versvers}".zip scripting/ translations/ plugins/
rm plugins/ -rfv
ls -la

