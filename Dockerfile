FROM python:3.9

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements.txt
RUN pip install jupyterlab

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]