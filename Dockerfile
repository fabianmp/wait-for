FROM alpine:3.16

ENV TARGET https://www.google.de
ENV TIMEOUT 0
RUN wget https://raw.githubusercontent.com/eficode/wait-for/4df3f9262d84cab0039c07bf861045fbb3c20ab7/wait-for && \
    chmod +x wait-for

CMD [ "sh", "-c", "echo \"waiting for ${TARGET} to become available\"; ./wait-for --timeout=${TIMEOUT} ${TARGET} -- echo \"${TARGET} is available\"" ]
