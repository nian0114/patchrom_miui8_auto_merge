
start=$(date "+%s")
rm -rf out
make out/$1.jar
cd out
apktool d $1.jar
cd ..
now=$(date "+%s")
time=$((now-start))
echo "time used:$time seconds"
