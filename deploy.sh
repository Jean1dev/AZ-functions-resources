buildpath=node_modules
if [ - d "$buildpath" ]; then
  echo 'baixando modulos'
  npm install
fi

func azure functionapp publish fnc-teste-jean
