#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage $0 <hlsProjName> <hlsTop>"
	exit -1
fi
export float_scale=2
function float_eval()
{
    local stat=0
    local result=0.0
    if [[ $# -gt 0 ]]; then
        result=$(echo "scale=$float_scale; $*" | bc -q 2>/dev/null)
        stat=$?
        if [[ $stat -eq 0  &&  -z "$result" ]]; then stat=1; fi
    fi
    echo $result
    return $stat
}

hlsProj=$1
hlsTop=$2
solName=solution1

echo "HLS top is $hlsTop"
componentFile=`find ${hlsProj} -iname "component.xml"`
version="0.0"
if [ -n "$componentFile" ]; then
    echo "Component file exists, using version data from there"
    version=`grep -o "${hlsTop}_v[0-9]*" ${componentFile} | grep -o "[0-9][0-9]*" | uniq`
fi
newVersion=$(float_eval "$version + 1.0")
echo "IP will be upgraded from version ${version} -> ${newVersion}"

hlsScriptName=hls.tcl
# Create a script AND remove existing impl directory
rm -f $hlsScriptName
rm -rf $hlsProj/$solName/impl

# echo "cd ${projectsHome}/${vivadoFolderName}/hls" >> $hlsScriptName
echo "open_project $hlsProj" >> $hlsScriptName
echo "open_solution $solName" >> $hlsScriptName
echo "csynth_design" >> $hlsScriptName
echo "export_design -format ipxact -version \"$newVersion\"" >> $hlsScriptName
echo "exit" >> $hlsScriptName

# Invoke the script from vivado_hls -f
vivado_hls -f $hlsScriptName

if [ $? -ne 0 ]; then
	echo "Vivado HLS error, quitting!"
	exit $?
fi

## Clean up
rm -f $hlsScriptName

