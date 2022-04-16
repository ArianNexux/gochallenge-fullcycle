FROM golang:latest AS builder

WORKDIR /usr/app
COPY . .
RUN go mod init github.com/ArianNexux/gochallenge-fullcycle

RUN go build 

CMD [ "./gochallenge" ]

FROM scratch 

COPY --from=builder /usr/app .

CMD [ "./gochallenge-fullcycle" ]


