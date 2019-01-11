FROM flexberry/mono-ember as backend

ENV PROJECT=EmberFlexberry

ARG TAG=1.0.0-beta01-backend

RUN	cd /backend-src ; \
	echo "#nuget restore $PROJECT.sln" ; \
	nuget restore $PROJECT.sln ; \
	echo "#msbuild /p:Configuration=Release $PROJECT.sln" ; \
	msbuild /p:Configuration=Release $PROJECT.sln 

FROM flexberry/alt.p8-apache2-mono:latest

RUN	rm -r /var/www/vhosts/test

COPY --from=backend /backend-src/ODataBackend /var/www/vhosts/test
COPY vhosts.conf /conf

