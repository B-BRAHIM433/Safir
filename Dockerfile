# Stage 1: Build the Flutter web application
FROM ghcr.io/cirruslabs/flutter:latest AS build-env

# Enable Flutter web support
RUN flutter config --enable-web
RUN flutter doctor

# Set working directory and copy project files
WORKDIR /app
COPY . /app/

# Get Flutter dependencies
RUN flutter pub get

# Build the Flutter web app for release
# Use --web-renderer html for broader compatibility if needed
RUN flutter build web --release

# Stage 2: Serve the built application with Nginx
FROM nginx:1.26-alpine3.19-slim

# Copy the built Flutter web assets to the Nginx serving directory
COPY --from=build-env /app/build/web /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
