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
EXPOSE 80

# Copy build directory to the nginx
COPY --from=nodeBuilder /app/build /usr/share/nginx/html