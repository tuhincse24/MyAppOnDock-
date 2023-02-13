# Use the SDK image to build and publish the website
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["MyUmbracoAppOnDocker.csproj", "."]
RUN dotnet restore "MyUmbracoAppOnDocker.csproj"
COPY . .
RUN dotnet publish "MyUmbracoAppOnDocker.csproj" -c Release -o /app/publish

# Copy the published output to the final running image
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "MyUmbracoAppOnDocker.dll"]