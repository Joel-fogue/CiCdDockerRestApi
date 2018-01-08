FROM microsoft/aspnetcore-build:2 AS build-env

MAINTAINER <Joel Fogue - joelfoit@gmail.com>

WORKDIR /aspRestApiPipeline

#restore api project
COPY api/api.csproj ./api/
RUN dotnet restore api/api.csproj

#restore tests project
COPY tests/tests.csproj ./tests/
RUN dotnet restore tests/tests.csproj

#list out all the files that have been copied onto the container
#RUN ls -alR

#copy src
COPY . .

#test
RUN dotnet test tests/tests.csproj

#publish
RUN dotnet publish api/api.csproj -o /publish


#Runtime Stage
FROM microsoft/aspnetcore:2
COPY --from=build-env /publish /publish
WORKDIR /publish
ENTRYPOINT ["dotnet", "api.dll"]
