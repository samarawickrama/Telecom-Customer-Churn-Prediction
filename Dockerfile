FROM python:3.8.2-slim

COPY app.py .
COPY customer_churn.csv .
COPY finalized_model.sav .
COPY logo.png .
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD streamlit run app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error