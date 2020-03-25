FROM python

LABEL "com.github.actions.name"="runnig Flake8 and black"
LABEL "com.github.actions.description"="run flake8 command and use black"
LABEL maintainer = "itssvinayak@gmail.com"
LABEL "com.github.actions.icon"="code"
LABEL "repository"="https://github.com/itsvinayak/pylint-and-format.git"
LABEL "homepage"="https://github.com/itsvinayak/pylint-and-format"


RUN pip install --upgrade pip
RUN pip install flake8
RUN pip install black


COPY entrypoint.sh /entrypoint.sh
RUN pwd
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
