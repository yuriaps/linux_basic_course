# Cleaning previus setups
rm -rf ~/linux_course

# basic setup
mkdir ~/linux_course
cp -r ./resources ~/linux_course/resources
cd ~/linux_course
mkdir level_{1..20}


#lvl 1
lvl=1
cd level_$lvl
echo "Hi this is the" > file_1
echo "course of linux." > file_2
cd ..

#lvl 2
lvl=2
cd level_$lvl
cp ../level_1/file_1 ../level_1/file_2 .
cp ../resources/lvl$lvl/tmp3 .tmp_3
cp ../resources/lvl$lvl/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 3
lvl=3
cd level_$lvl
cp ../resources/lvl$lvl/file1 file_1 
cp ../resources/lvl$lvl/tmp .tmp
cp ../resources/lvl$lvl/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 4
lvl=4
cd level_$lvl
cp ../resources/lvl$lvl/file1 file_1 
cp ../resources/lvl$lvl/tmp .tmp
cp ../resources/lvl$lvl/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 5
lvl=5
cd level_$lvl
chmod +x ../resources/lvl$lvl/create_files.sh
bash ../resources/lvl$lvl/create_files.sh
cd ..

#lvl 6
lvl=6
cd level_$lvl
chmod +x ../resources/lvl$lvl/create_files.sh
bash ../resources/lvl$lvl/create_files.sh
cd ..





