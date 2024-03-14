ssh -o StrictHostKeyChecking=no -tt devops@98.70.91.102  <<"EOF"
  cd /home/devops/Fortesting/restful-api-node-express-crud
  git stash
  git pull origin main
  git checkout main
  git reset --hard
  git pull origin main
  npm install
  mkdir src/config
  echo "const ENV = \"main\";

export default ENV;" > src/config/config.js
  npm run build
  exit
EOF
