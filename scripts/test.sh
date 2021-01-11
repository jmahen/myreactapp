# BASH script

# script/builds - builds the release
echo "Start testing ..."
DEPLOY_PACKAGE_NAME=$PACKAGE_NAME_PREFIX$CIRCLE_WORKFLOW_ID.zip
echo $DEPLOY_PACKAGE_NAME
npm test
echo "End testing ..."