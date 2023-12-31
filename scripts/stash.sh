input=$1 #project_url
cloneDir=$2 # dir to clone all projects

timeStamp=$(echo -n $(date "+%Y-%m-%d %H:%M:%S") | shasum | cut -f 1 -d " ")

mkdir -p ./output/$timeStamp/install_logs

mainDir=$(pwd)/${cloneDir}
logDir=$(pwd)/output/$timeStamp/install_logs

exec 3>&1 4>&2
trap $(exec 2>&4 1>&3) 0 1 2 3
exec 1>$logDir/$timeStamp.log 2>&1

for info in $(cat $input); do
    url=$(echo $info | cut -d, -f1)
    sha=$(echo $info | cut -d, -f2)
    module=$(echo $info | cut -d, -f3)
    project=${url##*/}

    cd ${mainDir}/${sha}/${project}
    echo "run git stash"
    git stash
    cd ../../..
    done