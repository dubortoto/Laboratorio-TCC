# Tarefas de Melhoria do Laboratório

Este documento lista as melhorias identificadas no final do Capítulo 5 do TCC, estruturadas em partes para permitir a implementação gradual e a comparação empírica de cada otimização no laboratório.

## 1. Redução de Dimensionalidade (Seleção de Características)
- [ ] Remover previamente características identificadoras ou enviesadas do dataset (Flow ID, Source IP, Source Port, Destination IP, Destination Port, Protocol, Timestamp e duplicatas de Fwd Header Length) para reduzir o risco de overfitting.
- [ ] Aplicar a técnica de seleção de características baseada no *Mean Decrease in Impurity* (MDI).
- [ ] Utilizar o algoritmo *Random Forest* para identificar as *features* mais relevantes do dataset.
- [ ] Treinar os modelos (com destaque para a Rede Neural Profunda - DNN) utilizando o conjunto reduzido de características de entrada.
- [ ] Comparar o tempo de treinamento e a eficácia preditiva com os resultados originais (alta dimensionalidade).

## 2. Implementação de Arquitetura Híbrida
- [ ] Desenvolver um filtro leve de primeiro estágio baseado em assinaturas (como um Filtro de Bloom).
- [ ] Configurar o filtro para identificar e descartar rapidamente o tráfego de rede estritamente benigno conhecido.
- [ ] Encaminhar exclusivamente o tráfego suspeito ou não reconhecido pelo filtro para a classificação profunda da DNN.
- [ ] Avaliar a diminuição na sobrecarga computacional e no tempo de classificação do sistema como um todo.

## 3. Substituição e Aprimoramento do Dataset
- [ ] Substituir a base de dados CICIDS2017 original por uma versão refinada e com falhas corrigidas, como o dataset **LycoS-IDS2017**.
- [ ] *(Opcional/Avançado)* Explorar o uso de Aprendizado Federado utilizando múltiplos conjuntos heterogêneos.
- [ ] Refazer os testes de estabilidade e reavaliar a capacidade de generalização dos modelos com os novos dados.

## 4. Abordagem Não Supervisionada para Detecção de Anomalias
- [ ] Transitar da classificação supervisionada para um modelo **não supervisionado** (ex: *Autoencoder* / HSAE).
- [ ] Treinar o modelo utilizando **exclusivamente** o fluxo de dados benigno, para que ele aprenda o padrão de "normalidade".
- [ ] Testar o desempenho do modelo em cenários com ataques omitidos no treinamento (como o teste sem a classe *PortScan*).
- [ ] Validar se a nova abordagem consegue flagrar ameaças inéditas (*zero-day*) como desvios do comportamento normal.
