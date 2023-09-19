FROM unit:php
RUN docker-php-ext-install -j$(nproc) pdo_mysql
COPY ./php.json /docker-entrypoint.d/
COPY ./bundle.pem /docker-entrypoint.d/
WORKDIR  /phpapp
COPY thinkphp /phpapp/
RUN chown -R unit:unit /phpapp
EXPOSE 443/tcp
