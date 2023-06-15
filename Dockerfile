FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p /tmp/activities

COPY . .

CMD ["sh", "-c", "garmin-backup --format fit --backup-dir=/tmp/activities --password=${GARMINPASSWORD} ${GARMINUSER}"]
