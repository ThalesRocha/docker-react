# Setup the base image and tag the phase
FROM node:alpine as builder
WORKDIR '/app'
COPY ./package.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx
# We should add this information then Elastic Beanstalk can found this information and foward the port.
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html