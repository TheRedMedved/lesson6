FROM python

WORKDIR /src_trm

COPY ./requirements.txt /src_trm/requirements.txt

RUN pip install -r requirements.txt

COPY ./ /src_trm/

ENV FLASK_APP program.py

CMD flask run -h 0.0.0.0 