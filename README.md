# TituloEleitoralValidator

Validador customizado para validar o número de inscrição do título eleitoral no Rails 4

## Instalação

Insira esta linha no arquivo Gemfile da sua aplicação Rails:

    gem 'titulo_eleitoral_validator'

Então execute:

    $ bundle

## Uso

Adicione no seu model que possui atributo número de inscrição do título eleitoral:

    validates :meu_atributo_numero_inscricao, titulo_eleitoral: true

## Contribuindo

1. Faça um Fork
2. Crie um branch para a nova funcionalidade (`git checkout -b minha-nova-funcionalidade`)
3. Faça o commit de suas alterações  (`git commit -am 'Adicionada nova funcionalidade'`)
4. Faça um push da sua nova funconalidade (`git push origin minha-nova-funcionalidade`)
5. Submeta uma nova Pull Request