FROM racket/racket:8.3

WORKDIR /app

COPY info.rkt .
RUN raco pkg install --auto --name rpaste

COPY . .

RUN raco setup rpaste

VOLUME /db

ENTRYPOINT /app/entrypoint.sh
