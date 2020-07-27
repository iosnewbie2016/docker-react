#Use existing image
From node:alpine

WORKDIR '/app'
COPY package.json .

#Download and install a dependency
RUN npm install

COPY . .

#What to do when container starts
CMD ["npm","run", "build"]