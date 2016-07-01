FROM selenium/base:2.53.0
MAINTAINER mrorgues

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

USER root

#==================
# Timezone settings
# Force to "UTC"
#==================
ENV TZ "UTC"
RUN \
  echo "${TZ}" > /etc/timezone && \
  dpkg-reconfigure --frontend noninteractive tzdata

#=============================
# Scripts to run Selenium Node
#=============================
COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh

#=====================================================
# Phantomjs - Custom Edition (install and clean up)
# https://github.com/mrorgues/phantomjs_custom_edition
#=====================================================
ENV PHANTOMJS_VERSION 2.1.1

RUN  \
  apt-get update -qqy && \
  apt-get install bzip2 libfreetype6 libfontconfig1 net-tools -qqy && \
  wget -q https://raw.githubusercontent.com/mrorgues/phantomjs_custom_edition/builds/phantomjs-$PHANTOMJS_VERSION-linux-x86_64-workaround_issue_394.tar.bz2 && \
  tar -xvjf phantomjs-$PHANTOMJS_VERSION-linux-x86_64-workaround_issue_394.tar.bz2 && rm phantomjs-$PHANTOMJS_VERSION-linux-x86_64-workaround_issue_394.tar.bz2 && \
  mv /phantomjs-$PHANTOMJS_VERSION-linux-x86_64-workaround_issue_394 /usr/local/phantomjs-$PHANTOMJS_VERSION-linux-x86_64-workaround_issue_394 && \
  ln -s /usr/local/phantomjs-$PHANTOMJS_VERSION-linux-x86_64-workaround_issue_394/bin/phantomjs /usr/local/bin/phantomjs && \
  apt-get clean && \
  rm -rf /tmp/* /var/lib/apt/lists/*

#=================
# Run shell script
#=================
USER seluser

CMD ["/opt/bin/entry_point.sh"]
