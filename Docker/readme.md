NOTE: Before update it is needed to change versions on create-images scripts.

There are docker files for creating such images as:
1. backend on ASP-core itself (file `ember-flexberry-stand-backend/Dockerfile`).
2. database on Postgres (file `SQL/Dockerfile.PostgreSql`).
3. database on MSSql (file `SQL/Dockerfile.MSSql`) - not checked, commited as Flexberry Designer generated.
4. database on MSSql (file `SQL/Dockerfile.Oracle`) - not checked, commited as Flexberry Designer generated.

Proper backend needs ASP-core application with database. Such pairs are created throught create-images scripts (so TWO images will be created at once):
1. `create-image-ember-flexberry-stand-postgres.cmd` - backend on ASP-core + database on Postgres.
2.
3.

Settings for such pairs are kept at corresponding yml-files:
1. `ember-flexberry-stand-postgres.yml` (container is created and started by `run-postgres.cmd` and stopped by `stop-postgres.cmd`).
2.
3.


In order to push image on docker hub:
1) Build image with version tag (for example "1.0.1-beta01-backend").
2) Execute `docker tag image_name:x.x.x image_name`

For example, 
`docker tag flexberry/ember-flexberry-stand-postgres:1.0.1-beta01-postgresql flexberry/ember-flexberry-stand-postgres`
`docker tag flexberry/ember-flexberry-stand-backend:1.0.1-beta01-backend flexberry/ember-flexberry-stand-backend`

3) Push this image to docker hub without version (or with tag `latest`).

`docker push flexberry/ember-flexberry-stand-postgres`
`docker push flexberry/ember-flexberry-stand-backend`

If access is denied, send images to person who has access.
`docker save -o e:\tmp\ember-flexberry-stand-postgres.tar flexberry/ember-flexberry-stand-postgres`
`docker save -o e:\tmp\ember-flexberry-stand-backend.tar flexberry/ember-flexberry-stand-backend`
