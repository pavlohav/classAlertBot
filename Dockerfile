

# # FROM --platform=linux/arm64/v8 node:14
# # FROM ubuntu:latest
# FROM ghcr.io/puppeteer/puppeteer:latest

# ENV DISCORD_TOKEN "OTEyNTUxODI0MjQwODEyMDYz.GUqsGk.xZCK2lbhjmrxHydenxyKs53yt4BWKPbOLsLGAc"
# EXPOSE 27017
# WORKDIR /home/pptruser
# COPY package*.json ./
# COPY . .
# # RUN apt-get update && \
# #     apt-get install -y chromium-browser curl && \
# #     curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
# #     apt-get install -y nodejs


# # RUN npm install -g nodemon


# RUN npm install 
# # EXPOSE 9229
# # CMD ["nodemon", "--inspect", "bot.js"]
# # RUN node node_modules/puppeteer/install.js



# # Adding securityContext parameters
# USER 82
# # Uncomment the line below if you want to enable readOnlyRootFilesystem
# # RUN chown -R 82:82 /home/pptruser && chmod -R 777 /home/pptruser

# # RUN node node_modules/puppeteer/install.mjs


# CMD ["--cap-add=SYS_ADMIN"]
# CMD ["node", "bot.js"]



FROM --platform=linux/amd64 node:20
# FROM ubuntu:latest
# FROM ghcr.io/puppeteer/puppeteer:latest

ENV DISCORD_TOKEN "OTEyNTUxODI0MjQwODEyMDYz.GUqsGk.xZCK2lbhjmrxHydenxyKs53yt4BWKPbOLsLGAc"
EXPOSE 27017
# WORKDIR /home/pptruser
COPY package*.json ./
COPY . .
# RUN apt-get update && \
#     apt-get install -y chromium-browser curl && \
#     curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
#     apt-get install -y nodejs
RUN apt-get update 
RUN apt-get install -y fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-khmeros fonts-kacst fonts-freefont-ttf libxss1 dbus dbus-x11 --no-install-recommends

# RUN npm install -g nodemon


RUN npm install 
# EXPOSE 9229
# CMD ["nodemon", "--inspect", "bot.js"]
# RUN node node_modules/puppeteer/install.js



# Adding securityContext parameters
# USER 82
# Uncomment the line below if you want to enable readOnlyRootFilesystem
# RUN chown -R 82:82 /home/pptruser && chmod -R 777 /home/pptruser

# RUN node node_modules/puppeteer/install.mjs


CMD ["--cap-add=SYS_ADMIN"]
CMD ["node", "bot.js"]
