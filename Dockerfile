FROM scratch
COPY echo /echo
ENTRYPOINT ["/echo"]
