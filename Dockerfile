FROM keymetrics/pm2:latest-alpine
LABEL maintainer="groge <groge.choi@gmail.com>"

# Install pm2
# RUN npm install pm2 -g
RUN npm install -g pm2 node-gyp

ENV NODE_ENV production

# Expose ports needed to use Keymetrics.io
EXPOSE 3000 43554

WORKDIR /app

# Start pm2.json process file
CMD ["pm2-runtime", "start", "pm2.json"]
