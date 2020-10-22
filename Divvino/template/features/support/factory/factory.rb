require 'faker'
require 'cpf_faker'

class Factory
  def self.user
    {
      cpf: Faker::CPF.pretty,
      apelido: Faker::Space.planet,
      nome: "Test Automation #{Faker::Name.first_name}",
      email: "teste.#{Faker::Name.first_name}.#{round(99)}@mailsac.com",
      celular: "5499999#{round(9999)}",
      telefone: "543380#{round(9999)}",
      nascimento: Faker::Date.birthday(min_age: 18, max_age: 65).strftime('%d/%m/%Y')
    }
  end

  def self.address
    {
      cep: '99010051',
      logradouro: 'Rua Coronel Chicuta',
      numero: '575',
      bairro: 'Centro'
    }
  end

  def self.card
    {
      numero: '5155901222280001',
      titular: "Test Automation #{Faker::Name.first_name}",
      validade: '1228',
      cvv: '258'
    }
  end
end
