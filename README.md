# Template base - Ruby On Rails

Template base criado para o desenvolvimento de sistemas.

## Tecnologias

Abaixo são listadas as principais tecnologias presentes neste template.

- Ruby: 3.1.1;
- Rails: 7.0.3;
- PostgreSQL;
- Bootstrap 5;
- Bootstrap Icons;
- ApexCharts: 3.35.5;
- Yarn.

## Instalação

Inicialmente, você deve instalar a versão do Ruby usada no projeto. Neste caso, usa-se o `rbenv`, que é um gerenciador de versões do Ruby.

    $ rbenv install 3.1.1

Depois que a versão for instalada, instale as dependências com:

    $ bundle

Por fim, instale os plugins utilizados para padronizar código JavaScript, com:

    $ yarn

## Padrões de código

Dois principais analisadores e formatadores de código foram adicionados ao projeto: Rubocop e ESLint. Para Ruby e JavaScript, respectivamente. O Rubocop utiliza é uma gem, e usa o arquivo de configuração `.rubocop.yml` e uma extensão no VSCode chamada `ruby-rubocop`.

O ESLint usa alguns pacotes (que foram instalados ao rodar o comando *yarn*), o arquivo de configuração `eslintrc.json` e a extensão `ESLint`.

Recomenda-se usar uma distribuição Linux durante o desenvolvimento, pois erros de configuração podem ser apresentados ao utilizar estes recursos em ambientes como Windows ou WSL.

## Template

Os recursos (layouts e plugins) foram retirados do template NiceAdmin, feito com base no Bootstrap 5. O demo do template original está disponível em: [NiceAdmin Bootstrap Template Demo](https://bootstrapmade.com/demo/NiceAdmin/).

Alguns plugins foram deixados de fora, por não serem úteis ou dependerem de outros plugins, como jQuery.
