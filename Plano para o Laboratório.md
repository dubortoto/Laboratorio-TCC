## Fase 1: Preparação do Ambiente Local com Docker
**Ação:** 
- Instalar o Docker Desktop (ou a engine do Docker, dependendo do seu sistema operacional) na sua máquina pessoal.
- Criar um arquivo chamado Dockerfile e/ou um docker-compose.yml. Esses arquivos funcionarão como uma "receita de bolo" para a sua máquina.
- Configurar essa receita para baixar uma imagem base do Python e instalar as bibliotecas exigidas na sua metodologia: Scikit-learn (para o Random Forest), e TensorFlow e Keras (para a Rede Neural Profunda). O Jupyter Notebook também será instalado aqui.
- Mapeamento de Volume: Você configurará o Docker para espelhar a pasta local da sua máquina (onde estão salvos os seus CSVs de treino e teste gerados anteriormente) para dentro do contêiner.
Subir o contêiner e acessar o Jupyter através do seu navegador (geralmente via localhost:8888).

**Foco de Aprendizado (O Mecanismo de Isolamento):** Nesta etapa, você aprenderá o conceito de conteinerização. O Docker cria um ambiente virtualizado isolado (o contêiner) que compartilha o kernel do sistema operacional da sua máquina, mas mantém os softwares e bibliotecas totalmente separados. Por que isso importa para o seu TCC? O seu objetivo estabelecido é avaliar a relação entre a eficácia na detecção de ameaças e o custo computacional (tempos de treinamento) dos algoritmos. Ao rodar o laboratório dentro de um Docker, você "congela" o ambiente. Isso garante que fatores externos da sua máquina pessoal não interfiram nas dependências do Python, tornando a sua comparação entre o Random Forest e a Rede Neural Profunda muito mais padronizada, justa e reprodutível.

<br>

## Fase 2: Treinando o Modelo de Machine Learning (Random Forest)
Nesta etapa, você criará o primeiro modelo utilizando a biblioteca Scikit-learn.

**Ação:** 
- Importar o dataset de treinamento, instanciar o algoritmo Random Forest e ajustá-lo (fit) aos dados. Após o treino, usar o dataset de teste para prever os ataques.

**Foco de Aprendizado (O Mecanismo):** Você aprenderá como o Random Forest funciona como um "conjunto de árvores de decisão". O objetivo é observar a premissa do estudo de que este modelo oferece um desempenho computacional mais eficiente (tempos menores de treinamento e classificação) e possui maior interpretabilidade dos resultados, o que o torna viável para ambientes com hardware limitado.

<br>

## Fase 3: Treinando o Modelo de Deep Learning (Redes Neurais Profundas - DNN)
A segunda abordagem do laboratório exige a construção de uma Rede Neural Profunda com múltiplas camadas densas usando TensorFlow e Keras.

**Ação:** 
- Definir a arquitetura da rede (camada de entrada, camadas ocultas e camada de saída), compilar o modelo definindo a função de perda e otimizador, e treiná-lo (epochs) com os dados de treinamento normalizados.

**Foco de Aprendizado (O Mecanismo):** Você aprenderá sobre a arquitetura baseada em camadas ocultas e a extração automática de características (feature extraction). O foco é entender como a rede aprende a correlacionar eventos complexos e identificar anomalias sutis a cada rodada de treinamento. A expectativa do estudo é que esse mecanismo apresente taxas superiores de detecção e menor incidência de falsos negativos frente a ataques complexos.

<br>

## Fase 4: Análise de Resultados e Comparação de Desempenho

A última etapa é colocar os dois modelos lado a lado para verificar qual oferece a melhor relação entre eficácia na detecção e custo computacional.

**Ação:** 
- Gerar as métricas de avaliação utilizando os resultados das predições feitas na Fase 2 e Fase 3.

**Foco de Aprendizado:** Entender por que a Acurácia global não é suficiente para conjuntos de dados de segurança (que costumam ser desbalanceados). Você aprenderá a interpretar a Matriz de Confusão, focando criticamente em:
- Falsos Negativos: Ataques reais que passaram despercebidos pelo modelo.
- Falsos Positivos: Tráfego benigno que disparou alarmes falsos.

Você também aprenderá a calcular e comparar as métricas de Precisão, Recall e F1-Score para descobrir qual modelo é mais robusto para cada tipo específico de ameaça.