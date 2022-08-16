FROM python:3 
WORKDIR /code
COPY ./Menu/ /code
COPY ./Burger.ico /code/Burger.ico
COPY ./main.py /code/main.py
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
