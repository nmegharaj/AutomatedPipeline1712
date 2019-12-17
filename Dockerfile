ARG version="18.0.4"
FROM ubuntu:$version
RUN echo "version... "$version
ARG licensekey="100..2000"
# First Dockerfile...
LABEL MAINTAINER naveen.megharaj@oracle.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "License key is..."$licensekey
RUN echo "Image is built at 'date'"
#ENTRYPOINT ["sh", "/code/Sample.sh"]
#CMD ["/code/testfile"]
CMD echo "Container being built"
CMD env
