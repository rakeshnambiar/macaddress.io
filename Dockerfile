FROM python:3.10

WORKDIR /app
COPY . /app

RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser
ENV PATH="/home/appuser/.local/bin:$PATH"

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python", "MacAddressFinder.py"]
