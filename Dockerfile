FROM python:2
ADD test_cases  /
ADD test.py /
RUN pip install pystrich
RUN pip install xmlrunner
RUN pip install pylint
CMD [ "python", "./randomgen.py" ]
CMD [ "python", "./test.py" ]

