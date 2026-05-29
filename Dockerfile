FROM golang:1.26.3-alpine3.23 AS build

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64\
    go build -o /myapp ./main.go

FROM alpine:3.23 AS run

COPY --from=build /myapp /myapp

EXPOSE 8080

CMD ["/myapp"]