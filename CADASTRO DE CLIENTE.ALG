Algoritmo "cadastro de cliente"
const:MAX_CLIENTES = 50
const:MAX_DESTINOS = 100

registro: Cliente
  nome: caracter
  sobrenome: caracter
  cpf: real
fimregistro
  
registro: destino
  nome: caracter
  valor: real
fimregistro

var
  clientes: vetor[1..MAX_CLIENTES] de caracter
  destinos: vetor[1..MAX_DESTINOS] de caracter
  opcao: inteiro
  qtd_clientes: inteiro
  qtd_destinos: inteiro

// Menu principal
inicio
repita
  escrevaL(" -------- Menu Principal -------- ")
  escrevaL("1 - Cadastro de cliente")
  escrevaL("2 - Cadastro de destino")
  escrevaL("3 - Consulta de clientes")
  escrevaL("4 - Consulta de destinos")
  escrevaL("5 - Sair")
  escrevaL("---------------------------------")
  leia(opcao)

  // Op��o 1 - Cadastro de cliente
  se opcao = 1 ent�o
    se qtd_clientes >= MAX_CLIENTES ent�o
      escreval("Limite m�ximo de clientes cadastrados atingido!")
    sen�o
      escreval("Digite o nome do cliente: ")
      leia(clientes[qtd_clientes].nome)
      escreval("Digite o sobrenome do cliente: ")
      leia(clientes[qtd_clientes].sobrenome)
      escreval("Digite o CPF do cliente: ")
      leia(clientes[qtd_clientes].cpf)
      qtd_clientes <- qtd_clientes + 1
    fimSe

  // Op��o 2 - Cadastro de destino
  se opcao = 2 ent�o
    se qtd_destinos >= MAX_DESTINOS ent�o
      escreval("Limite m�ximo de destinos cadastrados atingido!")
    sen�o
      escreval("Digite o nome do destino: ")
      leia(destinos[qtd_destinos].nome)
      escreval("Digite o valor do destino: ")
      leia(destinos[qtd_destinos].valor)
      qtd_destinos <- qtd_destinos + 1
    fimSe

  // Op��o 3 - Consulta de clientes
  se opcao = 3 ent�o
    escreval(" ------ Consulta de clientes ------ ")
    para i de 0 at� qtd_clientes-1 fa�a
      escreval("Nome: ", clientes[i].nome)
      escreval("Sobrenome: ", clientes[i].sobrenome)
      escreval("CPF: ", clientes[i].cpf)
    fimPara

  // Op��o 4 - Consulta de destinos
  se opcao = 4 ent�o
    escreval(" ------ Consulta de destinos ------ ")
    para i de 0 at� qtd_destinos-1 fa�a
      escreval("Nome: ", destinos[i].nome)
      escreval("Valor: R$ ", destinos[i].valor)
    fimPara

  // Op��o 5 - Sair
  se opcao = 5 ent�o
    escreval("Saindo...")
  fimSe
at� opcao = 5

Fimalgoritmo