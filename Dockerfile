FROM alpine:3.7

COPY entrypoint.sh .

RUN apk --no-cache add curl

RUN apk add --update bash

ENTRYPOINT ["entrypoint.sh"]