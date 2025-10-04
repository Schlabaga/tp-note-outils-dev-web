FROM redocly/cli AS build
WORKDIR /usr/src/app
COPY src/openAPI.yaml .
RUN redocly build-docs --output index.html openAPI.yaml

FROM nginx
COPY --from=build /usr/src/app/index.html /usr/share/nginx/html 
EXPOSE 80
