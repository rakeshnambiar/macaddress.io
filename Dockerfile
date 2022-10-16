FROM python:3.10
RUN pip install --upgrade pip

WORKDIR /app
COPY . /app

RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser
ENV PATH="/home/appuser/.local/bin:$PATH"

RUN pip install -r requirements.txt

CMD ["python", "MacAddressFinder.py"]