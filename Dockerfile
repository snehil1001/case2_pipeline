FROM python:2
USER root
ADD test_cases  /
ADD test.py /
RUN pip install pystrich
RUN pip install xmlrunner
RUN pip install pylint
RUN pip install pep8
RUN pip install pycodestyle
RUN pip install ansible
CMD [ "python", "./randomgen.py" ]
CMD [ "python", "./test.py" ]

