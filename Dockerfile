FROM microsoft/dotnet:1.1.1-runtime

MAINTAINER Tavisca Solutions

ADD publish app
WORKDIR /app

EXPOSE 5000

ENV ASPNETCORE_ENVIRONMENT Development

CMD /usr/bin/dotnet /app/Travel.Connectors.Hotel.dll --server.urls http://*:5000 --environment $ASPNETCORE_ENVIRONMENT