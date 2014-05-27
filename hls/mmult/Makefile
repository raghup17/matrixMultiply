TOP=mmult_top
XML_FILE_PATH=`find . -iname "component.xml"
version=`grep -o "${TOP}_v[0-9]*" ${XML_FILE_PATH} | grep -o "[0-9][0-9]*" | uniq`

all:
	echo "Version is ${version}"
#	vivado_hls -f hls.tcl
