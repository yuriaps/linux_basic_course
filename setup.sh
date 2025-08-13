# Cleaning previus setups
rm -rf ~/linux_course

# basic setup
mkdir ~/linux_course
cp -r ./resources ~/linux_course/resources
cd ~/linux_course
mkdir level_{1..20}


#lvl 1
lvl_n=1
cd level_$lvl_n
echo "Hi this is the" > file_1
echo "course of linux." > file_2
cd ..

#lvl 2
lvl_n=2
cd level_$lvl_n
cp ../level_1/file_1 ../level_1/file_2 .
cp ../resources/lvl$lvl_n/tmp3 .tmp_3
cp ../resources/lvl$lvl_n/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 3
lvl_n=3
cd level_$lvl_n
cp ../resources/lvl$lvl_n/file1 file_1 
cp ../resources/lvl$lvl_n/tmp .tmp
cp ../resources/lvl$lvl_n/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 4
lvl_n=4
cd level_$lvl_n
cp ../resources/lvl$lvl_n/file1 file_1 
cp ../resources/lvl$lvl_n/tmp .tmp
cp ../resources/lvl$lvl_n/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 5
lvl_n=5
cd level_$lvl_n
chmod +x ../resources/lvl$lvl_n/create_files.sh
bash ../resources/lvl$lvl_n/create_files.sh
cd ..

#lvl 6
lvl_n=6
cd level_$lvl_n
chmod +x ../resources/lvl$lvl_n/create_files.sh
bash ../resources/lvl$lvl_n/create_files.sh
cd ..





