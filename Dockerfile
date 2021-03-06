FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install python2.7 -y
RUN apt-get install python-pip -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y

RUN python2
RUN python3

WORKDIR /calculator
COPY * ./
RUN pip install .

ENTRYPOINT ["python", "my_first_calculator.py"]