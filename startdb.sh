docker run --rm --name mydb \
-dp 5432:5432 \
--network my-network \
-v $(pwd)/pgdata:/var/lib/postgresql/data \
-e POSTGRES_PASSWORD=1234 \
postgres
