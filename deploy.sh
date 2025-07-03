# ssh -o StrictHostKeyChecking=no azureuser@135.233.113.158 <<HEREDOC

#   cd /home/azureuser/cf-github-actions-desarrollo-moderno-github

#   git pull --rebase origin master

# HEREDOC

BRANCH=$1

if [ "$BRANCH" == "master" ]; then
  DEPLOY_PATH="/home/azureuser/prod"
else
  DEPLOY_PATH="/home/azureuser/stage"
fi

ssh -o StrictHostKeyChecking=no azureuser@135.233.113.158 <<HEREDOC

  cd $DEPLOY_PATH

  git pull --rebase origin $BRANCH

HEREDOC