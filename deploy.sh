ssh -o StrictHostKeyCheking=no azureuser@135.233.113.158 <<HEREDOC

  cd /home/azureuser/cf-github-actions-desarrollo-moderno-github

  git pull --rebase origin master
  
HEREDOC