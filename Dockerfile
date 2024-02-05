# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /app 

VOLUME ["/app"]

# Copy the application files into the container
COPY index.html .
COPY style.css .
COPY script.js .
COPY data.json .
COPY The_Visualizer_Logo.png .

# Expose port 80 to allow external access
EXPOSE 80 443

# Define the command to run the application when the container starts
CMD ["nginx", "-g", "daemon off;"]
