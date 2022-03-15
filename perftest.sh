host="fafabmedical-562473.mongo.cosmos.azure.com"
username="fabmedical-562473"
password="mongodb://fabmedical-562473:bOpLjboQE3wM6fgGfXHFteNJeyWPZhKhexxIczI9ZHxvnlQ9yaIWbztZZ51mM4m3Ksdlv3d3lo0eGyaGWSDwNA==@fabmedical-562473.mongo.cosmos.azure.com:10255/?ssl=true&replicaSet=globaldb&retrywrites=false&maxIdleTimeMS=120000&appName=@fabmedical-562473@"
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done