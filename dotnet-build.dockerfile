FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine

ENV PUBLISH_PATH ${PUBLISH_PATH}
ENV VSTEST_TEST_FILES ${VSTEST_TEST_FILES}

WORKDIR /app

VOLUME /app

RUN dotnet --info; \
  dotnet tool install --global coverlet.console && \
  dotnet tool install --global dotnet-sonarscanner

ENTRYPOINT dotnet --info; \
  dotnet build $PUBLISH_PATH; \
  dotnet vstest $VSTEST_TEST_FILES /Logger:trx || exit 1; \
  dotnet publish $PUBLISH_PATH -c Release -o /app/out /p:IsTransformWebConfigDisabled=true

