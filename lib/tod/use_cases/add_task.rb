module Tod
  module UseCases
    class AddTask
      def self.add(title)
        task = Entities::Task.new(title: title)

        if task.valid?
          Tod.repo.persist(task)
        else
          false
        end
      end
    end
  end
end
