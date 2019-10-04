FROM alpine:edge

RUN apk --no-cache add ca-certificates rsync openssh

# Install dependencies for libvips
RUN apk add --update --no-cache gcc g++ make libc6-compat
RUN apk add --no-cache vips-dev fftw-dev build-base \
        --repository https://dl-3.alpinelinux.org/alpine/edge/testing/ \
        --repository https://dl-3.alpinelinux.org/alpine/edge/main \
        --repository https://dl-3.alpinelinux.org/alpine/edge/community