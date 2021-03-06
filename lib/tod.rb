require 'tod/version'
require 'tod/entities/task'
require 'tod/tasks_repository/in_memory'
require 'tod/use_cases/add_task'

module Tod
  class << self
    attr_accessor :repo

    def configure
      yield self
    end

    def repo
      @repo ||= TasksRepository::InMemory.new
    end

    def add_task(title)
      UseCases::AddTask.add(title)
    end
  end
end
