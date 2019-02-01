FROM nginx:1.12.2
COPY [ "dist", "/home/dist/" ]
RUN mkdir -p /var/www/angular_test_app/ && \
    mv /home/dist/* /var/www/angular_test_app/ && \
    cd /var/www/angular_test_app && \
    find ./ -name "*.js" -type f -exec gzip {} \; && \
    find ./ -name "*.css" -type f -exec gzip {} \;
EXPOSE 80
