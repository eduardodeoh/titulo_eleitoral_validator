# encoding: utf-8

require_relative 'test_helper'

class TestPerson < TestModel
  validates :numero_inscricao, titulo_eleitoral: true
end

class TestPersonAllowsNil < TestModel
  validates :numero_inscricao, titulo_eleitoral: {allow_blank: true}
end

class TestPersonAllowsNilFalse < TestModel
  validates :numero_inscricao, titulo_eleitoral: {allow_blank: false}
end

class TestPersonWithMessage < TestModel
  validates :numero_inscricao, titulo_eleitoral: {message: 'número de inscrição inválido'}
end

describe TituloEleitoralValidator do
  describe 'com número de inscrição válido' do
    it 'deve ser válido ' do
      model = TestPerson.new(numero_inscricao: 292379620159)
      model.valid?.must_equal true
    end
  end

  describe 'com número de inscrição inválido' do
    it 'deve ser inválido' do
      model = TestPerson.new(numero_inscricao: 29237962015)
      model.valid?.must_equal false
    end
  end

  describe 'mensagens de erro' do
    describe 'quando a mensagem não é definida' do
      it 'deve retornar mensagem padrão' do
        model = TestPerson.new(numero_inscricao: 29237962015)
        model.valid?
        model.errors[:numero_inscricao].must_include 'is invalid'
      end
    end

    describe 'quando a mensagem é definida' do
      it 'deve exibir a mensagem customizada' do
        model = TestPersonWithMessage.new(numero_inscricao: 29237962015)
        model.valid?
        model.errors[:numero_inscricao].must_include 'número de inscrição inválido'
      end
    end
  end

  describe 'número de inscrição blank/nil' do
    it 'não deve ser válido quando a opção allow_blank: true não está presente' do
      model = TestPerson.new(numero_inscricao: '')
      model.valid?.must_equal false
    end

    it 'deve ser válido quando a opção allow_blank: true está presente' do
      model = TestPersonAllowsNil.new(numero_inscricao: '')
      model.valid?.must_equal true
    end

    it 'deve ser falso quando a opção allow_blank: false está presente' do
      model = TestPersonAllowsNilFalse.new(numero_inscricao: '')
      model.valid?.must_equal false
    end
  end
end