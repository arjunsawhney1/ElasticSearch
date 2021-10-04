#!/bin/bash
set -e
set -x

ES_IP="127.0.0.1:9200"
INDEX_MAPPING="C:\Users\arjun\Desktop\Whatfix\ElasticSearch\IndexMapping.json"
DATA_LOC="C:\Users\arjun\Desktop\Whatfix\ElasticSearch\data\output.json"

echo "Cleaning ALL indices from Elasticsearch running at: $ES_IP..."
curl.exe -XDELETE "http://$ES_IP/_all"

echo -e "\nAttempting to create indices using mapping at: $INDEX_MAPPING"

curl.exe -XPUT "http://$ES_IP/online_v3" -H "Content-Type: application/json" -d "@$INDEX_MAPPING"

echo -e "\nIndex created successfully. Creating aliases..."

echo -e "\nAliases created. Populating data..."

curl.exe -XPOST "localhost:9200/online_v3/_doc/_bulk?pretty&refresh" -H "Content-Type: application/json" --data-binary "@$DATA_LOC"

echo -e "Complete. Check the response of individual commands to assess success."
# curl.exe -XGET localhost:9200/online_v3/_settings
