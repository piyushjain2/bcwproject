FROM node:alpine3.17

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Set environment variables
ENV API_KEY=value

# Expose the port that your app will run on
EXPOSE 3000

# Command to run your application
CMD ["node", "app.js"]
