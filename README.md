# 📱 Aplicativo de Informações Pessoais

Aplicativo desenvolvido em **Flutter utilizando Dart**, com uma interface simples para exibição de informações pessoais. O projeto utiliza widgets básicos do Flutter e diferentes propriedades de estilização para criar uma tela visualmente personalizada.

## 🔎 Sobre o código

A aplicação começa pela função `main()`, que executa o widget `MeuAplicativo` através do `runApp()`.

A classe `MeuAplicativo` utiliza `StatelessWidget` e configura o `MaterialApp`, definindo:

* O título da aplicação como **"Meu App Flutter"**;
* A remoção do banner de debug;
* Uma cor principal personalizada no `ThemeData`;
* A `TelaInicial` como página inicial.

## 🖥️ Tela Inicial

A `TelaInicial` também é um `StatelessWidget` e utiliza o `Scaffold` para estruturar a interface.

A tela possui:

* **Fundo roxo** definido pela cor `#66087D`;
* **AppBar verde** utilizando `#087D66`;
* Título **"Informações Pessoais"** centralizado;
* Texto do título em amarelo `#F1C40F`.

## 📋 Card de Informações

No centro da tela existe um `Container` responsável por apresentar as informações pessoais.

O `Container` possui:

* `padding` de **24 pixels**;
* `margin` de **16 pixels**;
* Fundo na cor `#7D6608`;
* Bordas arredondadas com raio de **16 pixels**;
* Sombra utilizando `BoxShadow`;
* Conteúdo centralizado.

Dentro do `Container`, um `Column` organiza verticalmente os textos utilizando `SizedBox` para definir os espaçamentos.

## 👤 Informações apresentadas

O aplicativo exibe as seguintes informações:

**Nome:** Davi Saraiva
**Instituição:** Sesi - 400
**Cidade:** São Roque
**Data:** Agosto de 2026
**Informação adicional:** Walter

Cada informação possui uma configuração própria de tamanho, cor e estilo de fonte.

O nome, por exemplo, possui **24 pixels**, está em **negrito** e utiliza a cor `#145A32`. Já "Sesi - 400" utiliza **18 pixels**, estilo **itálico** e a cor `#32145A`.

## 🛠️ Tecnologias utilizadas

* **Flutter**
* **Dart**
* **Material Design**

## 📚 Principais widgets utilizados

* `MaterialApp`
* `StatelessWidget`
* `Scaffold`
* `AppBar`
* `Center`
* `Container`
* `Column`
* `Text`
* `SizedBox`
* `BoxDecoration`
* `BoxShadow`
* `TextStyle`

## 🎯 Objetivo

O objetivo do projeto é praticar a criação de interfaces utilizando **Flutter**, trabalhando principalmente com a estrutura de widgets, posicionamento de elementos, espaçamento, cores, tipografia, bordas arredondadas e sombras.
