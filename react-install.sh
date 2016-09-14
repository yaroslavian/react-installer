#!/bin/bash

#!!! CURRENT VERSION IS INCOMPLETE AND NEVER BEEN TESTED !!!

#Run this script inside future ReactJS project directory
#TEMPLATESDIR=//.. INSERT TEMPLATES DIRECTORY PATH HERE ..//

npm init && \
npm install --save-dev react react-dom && \
npm install --save-dev babel-core babel-loader babel-preset-react && \
npm install --save-dev webpack webpack-dev-server html-webpack-plugin && \
touch .babelrc && \

cp $TEMPLATESDIR/babelrc.tmp ./.babelrc && \
cp $TEMPLATESDIR/wepback.config.js.tmp ./webpack.config.js && \

mkdir ./app && \
touch ./app/index.html && \
touch ./app/index.js && \

mkdir ./app/components && \
touch ./app/components/App.js && \
echo "INSTALLATION COMPLETE!"
