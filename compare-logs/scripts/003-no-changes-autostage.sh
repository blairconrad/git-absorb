git commit --allow-empty --message "Initial commit"

git config --local --add absorb.autoStageIfNothingStaged true

../../../target/debug/git-absorb > "../../received/$(basename $(pwd))" 2>&1
