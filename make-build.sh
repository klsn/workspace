#!/bin/sh

touch build.sh
chmod +x build.sh

echo "#!/bin/sh" >> build.sh
echo "cd build" >> build.sh
echo "cmake .." >> build.sh
echo "cp compile_commands.json ../" >> build.sh 
echo "cp compile"
echo "make all" >> build.sh
echo echo ------------------------------------ >> build.sh
echo echo >> build.sh
echo ./$1 >> build.sh
echo echo >> build.sh
echo echo ------------------------------------ >> build.sh


