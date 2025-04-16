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

../../../target/debug/git-absorb --dry-run > "../../received/$(basename $(pwd))" 2>&1
