# Dockerfile
FROM node:18

# Create app directory
WORKDIR /app

# Copy and install dependencies
COPY package*.json ./
RUN npm install

# Copy everything else
COPY . .

# Set working directory to where server.js lives
WORKDIR /app/src

# Expose Express port
EXPOSE 3000

# Run Express app
CMD ["node", "server.js"]