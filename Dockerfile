FROM node:15.2.1-alpine3.10
RUN mkdir -p /opt/app
WORKDIR /opt/app
RUN adduser --disabled-password app
COPY compendium/ .
RUN chown -R app:app /opt/app
USER app
RUN npm install
EXPOSE 3000
CMD ["npm", "run", "pm2"]

