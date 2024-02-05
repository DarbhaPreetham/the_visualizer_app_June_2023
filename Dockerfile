# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the application files into the container
COPY index.html .
COPY style.css .
COPY script.js .
COPY data.json .
COPY The_Visualizer_Logo.png .
COPY account.html .
COPY help.html .
COPY home.html .
COPY processing.html .
COPY results.html .
COPY upload.html . 


# Expose port 80 to allow external access
EXPOSE 80

# Define the command to run the application when the container starts
CMD ["nginx", "-g", "daemon off;"]
