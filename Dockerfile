FROM python:3.13-slim

# Install system dependencies
RUN apt-get update \
    && apt-get install -y tar

# Installing python dependencies
RUN pip install --upgrade pip \
    && pip install mkdocs



RUN groupadd -r mkdocs && useradd -r -g mkdocs mkdocs \
    && mkdir -p /home/mkdocs /input /output \
    && chown -R mkdocs:mkdocs /home/mkdocs /input /output

COPY run.sh /home/mkdocs
RUN  chown mkdocs:mkdocs /home/mkdocs/run.sh \
    && chmod +x /home/mkdocs/run.sh

USER mkdocs
WORKDIR /home/mkdocs
VOLUME /input_dir

# Set entrypoint
ENTRYPOINT ["/home/mkdocs/run.sh"]
