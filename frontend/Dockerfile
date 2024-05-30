FROM node:14
WORKDIR /home/adiya/Documens/intern_exam/recruitment-2024/frontend
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start"]