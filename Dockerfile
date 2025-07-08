FROM node:23-alpine
RUN apk add --no-cache curl
RUN npm install -g @11ty/eleventy --unsafe-perm
#RUN curl -LO https://raw.githubusercontent.com/dennisfarmer/dotfiles/refs/heads/main/dennisfj.sh
#COPY dennisfj.sh /_site
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
