FROM python:3.12-bookworm

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

RUN apt update && apt install -y vlc alsa-utils mpg123 pulseaudio

COPY ./app /code/app

RUN adduser fastapi

RUN chown -R fastapi:fastapi /code

USER fastapi

EXPOSE 8000

CMD ["fastapi", "run", "app/main.py", "--port", "8000"]
