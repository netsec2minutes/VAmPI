FROM python:3.14.0a1-alpine

RUN mkdir /vampi
RUN apk --update add bash nano

ENV vulnerable=1
ENV tokentimetolive=60

COPY . /vampi
WORKDIR /vampi

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
