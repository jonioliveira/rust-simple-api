FROM rustlang/rust:nightly-slim

ENV ROCKET_ADDRESS=0.0.0.0
ENV ROCKET_PORT=8080

COPY src /app/src
COPY Cargo.toml /app

WORKDIR /app

RUN cargo build

CMD ["cargo", "run"]