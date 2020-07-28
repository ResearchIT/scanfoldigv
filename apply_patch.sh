if [ ! -f lib/VARNAv3.jar ]; then
    ./prepare_varna.sh
fi
./clean_submodule.sh
cp lib/VARNAv3.jar igv/lib
ln -s ../../../../../../../src igv/src/main/java/org/broad/igv/scanfold
pushd igv
patch -p1 < ../scanfoldmenu.patch
popd