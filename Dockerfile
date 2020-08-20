FROM python:3.8.3-alpine3.10

LABEL maintainer="Mritunjay Sharma" <mritunjaysharma394@Qgmail.com>
LABEL repository="https://github.com/mritunjaysharma394/autosed"
LABEL homepage="https://github.com/mritunjaysharma394/autosed"

LABEL com.github.actions.name="autosed"
LABEL com.github.actions.description="Still thinking tbh."
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="blue"

COPY LICENSE README.md /

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
