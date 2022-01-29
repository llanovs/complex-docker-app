# BUILD PHASE
# Specify a base image
FROM node:alpine as nodeBuilder

WORKDIR "/app"
# Install some depenendencies

COPY ./package.json /app/
RUN npm install
COPY .. /app
RUN npm run build


# RUN PHASE
# Specify a base image
FROM nginx
EXPOSE 3000

# Copy build directory to the nginx
COPY ./ngnix/default.conf /etc/nginx/conf.d/default.conf
COPY --from=nodeBuilder /app/build /usr/share/nginx/html