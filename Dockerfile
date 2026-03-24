# Usa uma imagem oficial e leve do Python
FROM python:3.10-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Instala as bibliotecas base e as exigidas pela sua metodologia
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir jupyter pandas numpy scikit-learn tensorflow keras

# Expõe a porta padrão que o Jupyter Notebook utiliza
EXPOSE 8888

# Comando padrão que será executado ao iniciar o contêiner
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]