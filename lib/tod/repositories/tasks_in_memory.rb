module Tod
  module Repositories
    class TasksInMemory
      def initialize
        @tasks = {}
        @id = 0
      end

      def persist(task)
        @id += 1
        tasks[@id] = task
      end

      def count
        tasks.length
      end

      private

      attr_reader :tasks
    end
  end
end
