# Use a base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json /app/package.json
RUN npm install

# Copy the application code
COPY . /app

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
