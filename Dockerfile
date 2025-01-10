FROM node:18-alpine
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY * .
RUN ls -la
COPY package.json ./
RUN ls -la
EXPOSE 8091
CMD ["npm", "run", "start"]