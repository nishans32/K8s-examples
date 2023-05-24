FROM mcr.microsoft.com/dotnet/sdk:6.0 as fullbuild

RUN apk update && apk add bash

COPY BasicApi/BasicApi.csproj /app/
WORKDIR /app
RUN dotnet restore

COPY /BasicApi .

run dotnet publish -o  ./out -c Release

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime

workdir /app

COPY --from=fullbuild /app/out .

RUN apk update && apk add bash
RUN sudo apt install curl
ENTRYPOINT ["dotnet", "BasicApi.dll"]