Stored Procedures são um grupo de instruções SQL que são armazenadas no banco de dados. Elas são usadas para encapsular lógicas de negócio complexas que podem ser reutilizadas por diferentes programas e usuários. 
Stored Procedures são executadas no servidor de banco de dados e podem retornar resultados para o cliente que as chamou.

Principais características das Stored Procedures:

- Encapsulamento de Lógica: Permitem agrupar várias instruções SQL em um único bloco, facilitando a manutenção e o reuso de código.

- Melhoria de Performance: Como são pré-compiladas, podem oferecer melhor desempenho em comparação com múltiplas chamadas de consultas SQL individuais.

- Redução de Tráfego na Rede: Executadas no servidor, reduzem a quantidade de dados enviados pela rede.

- Segurança: Podem ser usadas para garantir que os usuários acessem os dados de maneira controlada, sem expor detalhes da estrutura do banco de dados.

- Suporte a Transações: Permitem o uso de transações, garantindo que uma série de operações seja completada com sucesso ou que todas falhem em conjunto.

- Parâmetros de Entrada e Saída: Aceitam parâmetros, o que as torna flexíveis e reutilizáveis. Os parâmetros podem ser de entrada (input), de saída (output) ou ambos.

- Manutenção: Facilitam a manutenção do código, pois mudanças podem ser feitas em um único local.

- Programabilidade: Permitem a utilização de lógica de programação, como loops e condicionais, dentro do banco de dados.

- Independência de Plataforma: São executadas no servidor de banco de dados, o que as torna independentes da plataforma do cliente.

- Retorno de Conjuntos de Dados: Podem retornar resultados na forma de conjuntos de dados, que podem ser tratados por aplicações cliente.

Usos comuns:

Realizar operações CRUD (Create, Read, Update, Delete) de forma eficiente.
Realizar operações complexas que envolvem múltiplas tabelas.
Implementar regras de negócio complexas.
Automatizar tarefas comuns de manutenção do banco de dados.
Fazer validações e cálculos complexos.
