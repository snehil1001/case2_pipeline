FROM python:2
ADD pystache /
ADD test.py /
RUN pip install pystrich
RUN pip install xmlrunner
CMD [ "python", "./randomgen.py" ]
CMD [ "python", "./test.py" ]

