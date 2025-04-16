cat <<EOF > file1.txt
1
2
3
4
EOF

git add file1.txt
git commit --message "Initial commit"

cat <<EOF > file1.txt
0
1
2
3
4
5
EOF
git add file1.txt

git config --local user.name "User 2"
git config --local user.email "user2@example.com"

../../../target/debug/git-absorb > "../../received/$(basename $(pwd))" 2>&1
