FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
CMD csmith
RUN apt update && apt install -y build-essential cmake m4
WORKDIR /csmith
COPY . .
RUN cmake . && make && make install
WORKDIR /
RUN rm -rf csmith
