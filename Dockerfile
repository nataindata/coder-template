# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    sudo \
    vim \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install Apache Airflow (specify the version you want)
# Use the constraint to avoid installing unnecessary providers
ARG AIRFLOW_VERSION=2.2.3
RUN pip3 install -v "apache-airflow==${AIRFLOW_VERSION}"

# Set AIRFLOW_HOME environment variable
ENV AIRFLOW_HOME=/usr/src/app/airflow

# Initialize the database
RUN airflow db init

# Set up a non-root user with sudo access
ARG USER=coder
RUN useradd --create-home --shell /bin/bash ${USER} \
    && echo "${USER} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USER} \
    && chmod 0440 /etc/sudoers.d/${USER}

USER ${USER}
WORKDIR /home/${USER}

# Expose the default webserver port
EXPOSE 8080

# Run the webserver on container startup
CMD ["airflow", "webserver", "--port", "8080"]
