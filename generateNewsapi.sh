MODULE="Modules/NewsAPI/Sources/NewsAPI/"

openapi-generator generate -i "newsapi.yaml" -g swift5 -o "newsapi"
rm -r $MODULE""*
cp -R "newsapi/OpenAPICLient/Classes/OpenAPIs/". $MODULE
rm -r "newsapi"
