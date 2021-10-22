FROM rayproject/ray:latest-gpu
RUN sudo apt-get update && sudo apt-get install -y supervisor
RUN sudo mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY src/ .

CMD ["/usr/bin/supervisord"]