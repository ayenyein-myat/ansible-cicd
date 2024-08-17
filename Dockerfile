FROM node:20-alpine

LABEL maintainer="ayenyeinmyat2012@gmail.com"
LABEL description="Docker Image for Next.js app"

#Set working directory
WORKDIR /app

#Copy package.json file and package-lock.json
COPY package*.json ./

#Install Dependencies
RUN npm install

#Copy all app code except .dockerignore
COPY . . 

#Build the Next.js app
RUN npm run build

#Expose port 
EXPOSE 3000

#Command to run the app
CMD [ "npm", "start" ]
