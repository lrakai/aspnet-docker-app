# The `FROM` instruction specifies the base image. You are
# extending the `microsoft/aspnet` image.

FROM microsoft/aspnet

# The final instruction copies a published into the container.

COPY ./ASPNET Docker app/PublishOutput/ /inetpub/wwwroot

# No ENTRYPOINT is needed since the IIS process is the default