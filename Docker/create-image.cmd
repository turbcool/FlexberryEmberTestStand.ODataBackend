docker build --no-cache -f SQL\Dockerfile.PostgreSql -t emberflexberry/postgre-sql ../SQL

docker build --no-cache -f Dockerfile -t emberflexberry/app ..
