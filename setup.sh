rm -rf ~/linux_course

mkdir ~/linux_course
cp -r ./resources ~/linux_course/resources
cd ~/linux_course
mkdir level_{1..20}


#lvl 1
cd level_1
echo "Hi this is the" > file_1
echo "course of linux." > file_2
cd ..

#lvl 2
cd level_2
cp ../level_1/file_1 ../level_1/file_2 .
cp ../resources/lvl2/tmp3 .tmp_3
cp ../resources/lvl2/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 3
cd level_3
cp ../resources/lvl3/file1 file_1 
cp ../resources/lvl3/tmp .tmp
cp ../resources/lvl3/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 4
cd level_4
cp ../resources/lvl4/file1 file_1 
cp ../resources/lvl4/tmp .tmp
cp ../resources/lvl4/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 5
cd level_5
chmod +x ../resources/lvl5/create_files.sh
bash ../resources/lvl5/create_files.sh
cd ..

#lvl 6
cd level_6
chmod +x ../resources/lvl6/create_files.sh
bash ../resources/lvl6/create_files.sh
cd ..





