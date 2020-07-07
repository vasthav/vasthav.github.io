
# Add changes to git.
echo '[INFO] Adding all files to Git'
echo '[INFO] RUNNING COMMAND >>> git add -A'
git add -A

# Commit changes.
echo '[INFO] Updating vasthav.github.com Repo directory'
echo $PWD

msg="chore: Updating repo - Rebuilding site - $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi

echo '[INFO] GIT STAGED FILES'
echo '[INFO] RUNNING COMMAND >>> git status'
git status

echo '[INFO] GIT COMMITING'
echo '[INFO] RUNNING COMMAND >>> git commit -m "<message>"'
git commit -m "$msg"

# Push source and build repos.
echo '[INFO] PUSHING GIT CHANGES'
echo '[INFO] RUNNING COMMAND >>> git push origin master'
git push origin master

echo '[SUCCESS]'