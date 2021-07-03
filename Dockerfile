from ubuntu

RUN apt update && \
    apt upgrade -y && \
    apt install git python3-pip -y
WORKDIR /app
RUN git clone https://github.com/anfederico/Flaskex  /app && \
    pip install -r requirements.txt 
EXPOSE 5000
cmd [ "python3", "app.py"]