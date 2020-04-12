FROM python:3


COPY ./extract_data/* ./

COPY ./dgs-reports-archive ./dgs-reports-archive

ADD ./data.csv /

RUN pip install pandas numpy textract

CMD [ "python", "extract_dataset.py" ]
