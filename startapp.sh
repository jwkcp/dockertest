docker run --rm --name myapp \
-dp 8000:8000 \
--env-file .env \
-v $(pwd)/uploads:/codex/uploads \
-v $(pwd)/db.sqlite3:/codex/db.sqlite3 \
--network my-network \
jwkcp/myapp:postgres
