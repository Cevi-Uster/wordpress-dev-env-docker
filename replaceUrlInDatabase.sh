#!/bin/bash
sed -i "" "s|https://www.cevi-uster.ch|http://127.0.0.1:8000|g" ./data/database/database.sql
sed -i "" "s|http://www.cevi-uster.ch|http://127.0.0.1:8000|g" ./data/database/database.sql
sed -i "" "s|http:\/\/www.cevi-uster.ch|http:\/\/127.0.0.1:8000|g" ./data/database/database.sql
sed -i "" "s|www.cevi-uster.ch|127.0.0.1|g" ./data/database/database.sql
