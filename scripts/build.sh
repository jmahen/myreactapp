# BASH script

# script/builds - builds the release
echo "Start build script ..."
DEPLOY_PACKAGE_NAME=$PACKAGE_NAME_PREFIX$CIRCLE_WORKFLOW_ID.zip
echo "$(dirname "$0")/.."
#rm -rf bin/Release
ls -la
echo "Install npm dependency"
npm install
echo "Build application code ..."
npm run build
echo "List files ..."
ls -la
echo "Generate Package : "$DEPLOY_PACKAGE_NAME
cd build
zip -r ../$DEPLOY_PACKAGE_NAME ./*
cd ..
ls -la
echo "End build script ..."