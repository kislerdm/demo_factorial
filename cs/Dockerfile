FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

WORKDIR /source

COPY . .

RUN dotnet restore \
    && dotnet publish -c release -o /app --no-restore

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /user.txt

FROM mcr.microsoft.com/dotnet/runtime:6.0

WORKDIR /app

COPY --from=build /user.txt /etc/passwd
COPY --from=build /app .

USER runner

ENTRYPOINT ["dotnet", "dotnetapp.dll"]
