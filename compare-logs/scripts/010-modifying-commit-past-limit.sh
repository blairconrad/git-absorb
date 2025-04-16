cat <<EOF > file1.txt
1
2
3
4
EOF

git add file1.txt
git commit --message "Initial commit"

for ((i=1;i<=10;i++)); do
    git commit --allow-empty --message "Empty commit $i"
done

cat <<EOF > file1.txt
0
1
2
3
4
5
EOF
git add file1.txt

../../../target/debug/git-absorb > "../../received/$(basename $(pwd))" 2>&1
