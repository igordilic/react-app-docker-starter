# base image that has node and yarn and it is built on alpine edge
FROM igorilic/node-base
# variables
ENV APP_DIR=/usr/src/app PORT=3000
# setting up workdir
RUN mkdir -p ${APP_DIR}
WORKDIR ${APP_DIR}
# copy mandatory files for setup
COPY ["./package.json", "./yarn.lock", "./"]
# install node_modules
RUN ["yarn", "install"]
# copy src
COPY . ${APP_DIR}
# expose development port
EXPOSE ${PORT}
