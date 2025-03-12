# Docker repository

## Jekyll

Find the images in docker hub:
 - https://hub.docker.com/r/sylhare/jekyll/tags

Push new version with:

```bash
# alpine (from ruby version)
docker build --platform linux/amd64 -t sylhare/jekyll:alpine-3.4 .
docker push sylhare/jekyll:alpine-3.4

# latest (from alpine)
docker tag sylhare/jekyll:alpine-3.4 sylhare/jekyll:latest
docker push sylhare/jekyll:latest

# ubuntu (always latest)
docker build --platform linux/amd64 -t sylhare/jekyll:ubuntu .
docker push sylhare/jekyll:ubuntu
```

Used in a workflow to build a theme:
  - Type-on-strap [example](https://github.com/sylhare/Type-on-Strap/blob/1a78df99ecc655b70d00c44520d81c25805becee/.github/workflows/docker-build.yml)