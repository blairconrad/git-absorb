git commit --allow-empty --message "Initial commit"

../../../target/debug/git-absorb > "../../received/$(basename $(pwd))" 2>&1
