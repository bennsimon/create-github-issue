FROM curlimages/curl:7.87.0

COPY create-github-issue /scripts/

USER root

RUN chmod +x /scripts/create-github-issue

RUN apk update && apk add jq

USER curl_user

ENTRYPOINT [ "sh", "./scripts/create-github-issue" ]
