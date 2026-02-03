FROM nginx:alpine

# Remove default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Copy our static html
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
