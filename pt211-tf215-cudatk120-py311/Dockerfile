#!/bin/bash

# ==================================================================
# Initial setup
# ------------------------------------------------------------------

    FROM paperspace/gradient-base:pt211-tf215-cudatk120-py311-20240202

    ENV APT_INSTALL="apt-get install -y --no-install-recommends"
    ENV PIP_INSTALL="python3 -m pip --no-cache-dir install --upgrade"
    ENV GIT_CLONE="git clone --depth 10"

# ==================================================================
# Update some modules
# ------------------------------------------------------------------

    RUN $PIP_INSTALL ipykernel jupyter jupyterlab notebook

# ==================================================================
# Startup
# ------------------------------------------------------------------

    EXPOSE 8888 6006

    CMD jupyter lab --allow-root --ip=0.0.0.0 --no-browser --ServerApp.trust_xheaders=True --ServerApp.disable_check_xsrf=False --ServerApp.allow_remote_access=True --ServerApp.allow_origin='*' --ServerApp.allow_credentials=True