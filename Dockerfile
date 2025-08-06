# Use an official Node.js runtime (Alpine for small size)
FROM node:22-alpine3.19

# Set the working directory
WORKDIR /app

# Copy only the package files first for better caching
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app source code
COPY . .

# Expose the app port (change if needed)
EXPOSE 5000

# Set environment to development (optional)
ENV NODE_ENV=production

# Start the app using pnpm (e.g., with nodemon)
CMD ["npm", "run", "dev"]
