FROM node:lts-buster

RUN apt-get update && \
  git clone https://github.com/sulaiman0851/OCTOPUS-BOTZZ-V2 \
  cd OCTOPUS-BOTZZ-V2 \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm i

COPY . .

CMD ["node", "."]
