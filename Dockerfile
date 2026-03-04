FROM node

WORKDIR /app

# Copy package files first to leverage Docker cache
COPY package.json .
COPY package-lock.json .
COPY app.js .

# Install only production dependencies to keep image small
RUN npm install

# ENV PORT=3000
EXPOSE 3000

CMD ["node", "app.js"]
