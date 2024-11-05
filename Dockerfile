# Use the official Node.js image from the Docker Hub
FROM node:14
# Set the working directory inside the container
WORKDIR /usr/src/app
# Copy package.json and package-lock.json (if available)
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of your application code
COPY . .
# Expose the port the app runs on
EXPOSE 3111
# Command to run the application
CMD ["node", "app.js"] 
