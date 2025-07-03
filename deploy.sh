BRANCH=$1

if [ "$BRANCH" == "master" ]; then
  DEPLOY_PATH="/home/azureuser/cf-github-actions-desarrollo-moderno-github"
else
  DEPLOY_PATH="/home/azureuser/stage"
fi

ssh -o StrictHostKeyChecking=no azureuser@135.233.113.158 <<HEREDOC

  cd $DEPLOY_PATH

  git pull --rebase origin $BRANCH

HEREDOC