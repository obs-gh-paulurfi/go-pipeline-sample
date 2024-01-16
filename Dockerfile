FROM alpine:3.12
# Add Maintainer Info
LABEL maintainer="Community Engineering Team <community-engg@harness.io.>"
# Copy the Go binary into the image. The Go binary must be
# statically compiled with CGO disabled. Use the following
# build command:
#
#
ENV FOO="bar"
ADD hello_server /bin/
# Command to run the executable
ENTRYPOINT ["/bin/hello_server"]
