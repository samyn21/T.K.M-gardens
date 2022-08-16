FROM python:3 
WORKDIR /code
COPY ./Menu/ /code
COPY ./Burger.ico /code/Burger.ico
RUN export DISPLAY=0.0
RUN export  xhost +
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./main.py /code/main.py
CMD ["python", "main.py", "--host", "0.0.0.0", "--port", "80"]

