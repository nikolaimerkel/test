FROM centos:centos7

RUN mkdir /mydata
RUN whoami
RUN ls -l /mydata
ADD run.sh /run.sh

RUN chgrp -R 42 /mydata \
  && chown -R 42 /mydata \
  && chmod -R g+rwX /mydata

RUN chgrp 42 /run.sh \
  && chown 42 /run.sh \
  && chmod g+rwx /run.sh

USER 42
RUN whoami
CMD ["/run.sh"]
