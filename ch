#!/bin/bash

profile=${1:-0}
incognito=${2:-0}

if [ $profile = "gsf" ]; then
    profile="Profile 1"
elif [ $profile = "guest" ]; then
    profile="Guest Profile"
else
    profile="Default"
fi

if [ $incognito = "0" ]; then
    google-chrome --profile-directory="$profile"
else
    google-chrome --incognito --profile-directory="$profile"
fi
