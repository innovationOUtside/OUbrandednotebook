#!/bin/bash -e

THISDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# EVERYTHING BELOW HERE SHOULD JUST WORK....


#------- PROFILE: tm112MT -------
#------- Jupyter does not have a notion of profiles -------

###

JUPYTERCONFIGDIR=$(jupyter --config-dir)


echo "Ensuring default jupyter directories available"
#Ensure directories are available
mkdir -p $JUPYTERCONFIGDIR
echo "Created dir: $JUPYTERCONFIGDIR"

echo "Ensuring required jupyter sub-directories available"
mkdir -p $JUPYTERCONFIGDIR/custom
echo "Created dir: $JUPYTERCONFIGDIR/custom"

#Styling and branding extensions
echo "Ensuring jupyter customisation files available"
cp $THISDIR/custom/* $JUPYTERCONFIGDIR/custom/
