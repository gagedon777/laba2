FROM gcc:latest

WORKDIR /app

COPY main.cpp .

RUN g++ -o main main.cpp

RUN mkdir -p /app/bin && cp main /app/bin/

VOLUME /app/bin
