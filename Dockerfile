FROM panovvv/hadoop-hive-spark:2.5.2

RUN apk add --no-cache \
    py3-pip \
    python3-dev \
    build-base \
    libffi-dev \
    jpeg-dev \
    zlib-dev \
    freetype-dev \
    lcms2-dev \
    openjpeg-dev \
    tiff-dev \
    tk-dev \
    tcl-dev \
    harfbuzz-dev \
    fribidi-dev

RUN python3 -m venv /myenv && \
    source /myenv/bin/activate && \
    pip install --upgrade pip && \
    apk add --no-cache build-base libffi-dev && \
    pip install pypandoc==1.3 && \
    pip install pyspark==2.4.5 && \
    pip install numpy==1.21.0 && \
    pip install --no-cache-dir pillow notebook pandas matplotlib==3.5.3
