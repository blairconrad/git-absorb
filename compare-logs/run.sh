if [ ! -e received ]
then
    mkdir --parents received
fi

for f in scripts/*.sh
do
    basename=$(basename "$f")
    nameWithoutExtension="${basename%.*}"
    echo "Running $nameWithoutExtension"
    if [ -d "repos/$nameWithoutExtension" ]
    then
        rm --recursive --force "repos/$nameWithoutExtension"
    fi
    mkdir --parents "repos/$nameWithoutExtension"
    pushd "repos/$nameWithoutExtension" 

    git init --initial-branch master
    git config --local user.name "User 1"
    git config --local user.email "user1@example.com"

    bash "../../$f"
    popd

done
