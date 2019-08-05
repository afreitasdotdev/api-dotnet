FROM microsoft/dotnet:2.2-sdk-alpine AS build-env
WORKDIR /app
#ENV ASPNETCORE_URLS http://0.0.0.0:5000
# Copiar csproj e restaurar dependencias
COPY source/*.csproj ./
RUN dotnet restore

# Build da aplicacao
COPY source/ ./
RUN dotnet publish -c Release -o out

# Build da imagem
FROM microsoft/dotnet:2.2-aspnetcore-runtime-alpine
WORKDIR /app
COPY --from=build-env /app/out .
#ENTRYPOINT ["dotnet",  "devops-test.dll"]
#ENTRYPOINT ["dotnet", "run"]
EXPOSE 5000
ENV ASPNETCORE_ENVIRONMENT Development
ENV ASPNETCORE_URLS http://+:5000
ENTRYPOINT ["dotnet", "devops-test.dll"]


