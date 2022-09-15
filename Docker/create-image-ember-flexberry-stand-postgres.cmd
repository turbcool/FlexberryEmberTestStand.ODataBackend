docker build --no-cache -f SQLDocker\Dockerfile.PostgreSql -t flexberry/ember-flexberry-stand-postgres:1.0.1-beta01-postgresql ../SQL

docker build --no-cache -f ember-flexberry-stand-backend\Dockerfile -t flexberry/ember-flexberry-stand-backend:1.0.1-beta01-backend ..
