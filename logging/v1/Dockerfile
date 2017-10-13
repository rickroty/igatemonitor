FROM hypriot/rpi-ruby:latest  

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
     apt-utils ruby-dev gcc g++ make python-pip python-setuptools

RUN gem install fluentd --no-ri --no-doc

RUN pip install fluent-logger

RUN fluent-gem install fluent-plugin-bigquery --no-ri --no-doc

RUN mkdir /etc/fluentd

RUN curl http://raw.githubusercontent.com/rickroty/igatemonitor/master/fluentd.conf > /etc/fluentd/fluentd.conf

RUN apt-get remove ruby-dev gcc g++ make -y

RUN fluentd -c /etc/fluentd/fluentd.conf -p /fluentd/plugins &

CMD ["/bin/sh"] 
