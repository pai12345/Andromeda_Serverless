# Base image
FROM amazon/aws-lambda-nodejs:latest

# Create working directory
WORKDIR /app

# COPY package.json && package-lock.json
COPY package*.json /

# COPY contents to app
COPY . .

# Install npm dependencies
RUN npm install

# Execute App
CMD ["index.currentdats"]

# FROM public.ecr.aws/lambda/nodejs:14
# COPY helloWorldFunction.js package*.json ./
# RUN npm install
# CMD [ "index.currentdats" ]