#!/bin/bash


versvers=$(spcomp64 -v | grep "Compiler" --color=never | cut -d " " -f 3)


nv_plugs=("nativevotes")
nv_plugs+=("nativevotes-basecommands")
nv_plugs+=("nativevotes_mapchooser")
nv_plugs+=("nativevotes_nominations")
nv_plugs+=("nativevotes_rockthevote")

nv_plugins_disabled=("nativevotes_votetest")
nv_plugins_disabled+=("nativevotes_votemanager_test")
nv_plugins_disabled+=("csgo_votestart_test")
nv_plugins_disabled+=("votedelay_changelevel")
nv_plugins_disabled+=("votediagnostics")
nv_plugins_disabled+=("votefailed")

# we start in git root
pushd ./addons/sourcemod/scripting

mkdir ../plugins/disabled -p || true


for target in "${nv_plugs[@]}"; do
    spcomp64 -i"./include/" "${target}".sp -o ../plugins/"${target}".smx || exit 1
done

for target in "${nv_plugins_disabled[@]}"; do
    spcomp64 -i"./include/" "${target}".sp -o ../plugins/disabled/"${target}".smx || exit 1
done

popd

mkdir build || true
7za a -r build/nativevotes_sm_"${versvers}".zip scripting/ translations/ plugins/
rm plugins/ -rfv
ls -la

