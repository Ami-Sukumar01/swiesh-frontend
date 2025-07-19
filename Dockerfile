# Use a lightweight Node base
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy source
COPY . .

# Build Next.js app
RUN npm run build

# Expose port
EXPOSE 3000

# Run
CMD ["npm", "start"]
