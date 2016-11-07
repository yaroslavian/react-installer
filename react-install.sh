#!/bin/bash

#!!! CURRENT VERSION IS INCOMPLETE AND NEVER BEEN TESTED !!!

#Run this script inside future ReactJS project directory
TEMPLATESDIR=./templates

npm init
npm install --save react react-dom
npm install --save-dev babel-core babel-loader babel-preset-react
npm install --save-dev webpack webpack-dev-server html-webpack-plugin 
touch .babelrc
echo "{ presets: ['react'] }" > .babelrc

cp $TEMPLATESDIR/wepback.config.js.tmp ./webpack.config.js 

node -e 'var conf = require("./package.json"); conf.scripts={build:"webpack", start:"webpack-dev-server"}; console.log(JSON.stringify(conf, null, " "));' > package.json

mkdir ./app 
touch ./app/index.html 
printf '<!DOCTYPE html>\n<html lang="en">\n<head>\n\t<meta charset="UTF-8">\n\t<title>Local React App</title>\n</head>\n<body>\n\t<div id="app"></div>\n</body>\n</html>' > ./app/index.html

touch ./app/index.js 
printf "var React = require('react');\nvar ReactDom = require('react-dom');\nvar App = require('./components/App');\n\nReactDom.render(\n\t<App />,\ndocument.getElementById('app')\n);" > ./add/index.js

mkdir ./app/components
touch ./app/components/App.js


npm run build
npm run start

echo "INSTALLATION COMPLETE!"
