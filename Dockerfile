#-------------- normal docker file for node project --------------------
# version of project node
FROM node:21

# Create app directory and work here
WORKDIR /app

# copy code from local to container
COPY . .

# install dependencies
RUN npm install

# expose port 3000  depends on project dev server
EXPOSE 3000

# start the app
CMD ["npm","start"]


#-------------- multistage docker file for node project --------------------

#------------------ stage 1 : build the image -----------------
# version of project node
FROM node:21 AS builder

# Create app directory and work here
WORKDIR /app

# copy code from local to container
COPY . .

# install dependencies
RUN npm install

#------------------------ stage 2 : run the image ---------------------

# version of project node in multistage
FROM node:21-slim 

# Create app directory and work here
WORKDIR /app

# copy the above stage as compressed image
COPY --from=builder /app .

# expose the port 3000  depends on project dev server
EXPOSE 3000

# start the app
CMD ["npm","start"]
