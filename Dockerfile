FROM alpine:3.11

ENV TARGET=lower_envs

RUN mkdir /input-files
RUN apk add --no-cache curl bash
COPY ["run-perf-check.sh", "entrypoint.sh", "/"]
RUN chmod +x /entrypoint.sh /run-perf-check.sh

CMD bash ./entrypoint.sh
