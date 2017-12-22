FROM microsoft/aspnetcore:2
MAINTAINER Joel Fogue <joelfoit@gmail.com>

WORKDIR /app
COPY bin/Debug/netcoreapp2.0/publish/ .
ENTRYPOINT ["dotnet" , "api.dll"]
