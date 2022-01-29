# Specify a base image
FROM node:alpine

WORKDIR "/app"

# Install some depenendencies
COPY ./package.json /app/
RUN npm install
COPY ./ /app

# Default command
CMD ["npm", "run", "start"]