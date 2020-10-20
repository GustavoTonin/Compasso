# frozen_string_literal: true

require 'mongo'

class DAO
  attr_accessor :client

  Mongo::Logger.logger = Logger.new('log/mongo.log')

  def initialize
    @client = Mongo::Client.new(['localhost'], database: 'markdb')
  end

  def get_tarefa(nome, email)
    user = get_user(email)
    tasks = @client[:tasks]
    tasks.find('title' => nome, 'createdBy' => user[:_id])
  end

  def get_user(email)
    user = @client[:users]
    user.find('profile.email' => email).first
  end

  def remover_tarefa(nome, email)
    user = get_user(email)

    tasks = @client[:tasks]
    tasks.delete_many('title' => nome, 'createdBy' => user[:_id])
  end
end
