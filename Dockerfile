FROM python:3 
WORKDIR /code
COPY ./menu/ /code/menu/
COPY ./burger.ico /code/burger.ico
COPY ./main.py /code/main.py
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
