NOTE: Before update it is needed to change versions on create-images scripts.

There are docker files for creating such images as:
1. backend on ASP-core itself (file `ember-flexberry-stand-backend/Dockerfile`).
2. database on Postgres (file `SQL/Dockerfile.PostgreSql`).
3. database on MSSql (file `SQL/Dockerfile.MSSql`).
4. database on MSSql (file `SQL/Dockerfile.Oracle`).

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
`docker tag flexberry/github-generation-environment:1.0.0 flexberry/github-generation-environment`

3) Push this image to docker hub without version (or with tag `latest`).