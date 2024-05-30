FROM node:14
WORKDIR /home/adiya/Documens/intern_exam/recruitment-2024/backend
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 9000
CMD [ "npm", "start"]