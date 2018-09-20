# modified ubuntu https://github.com/phusion/baseimage-docker
FROM phusion/baseimage
CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y \
    wget

RUN wget --no-verbose https://download.screamingfrog.co.uk/products/seo-spider/screamingfrogseospider_10.0_all.deb && \
    dpkg -i /screamingfrogseospider_10.0_all.deb && apt-get install -f -y

CMD ["/usr/bin/screamingfrogseospider"]
