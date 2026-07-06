FROM rust:latest AS builder

WORKDIR /usr/src/app

COPY . .

RUN cargo build --release

FROM alpine:latest

COPY --from=builder /usr/src/app/target/release/program /opt/program

ENTRYPOINT [ "/opt/program" ]