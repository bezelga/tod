module Tod
  module Entities
    class Task
      def initialize(attributes)
        @attributes = attributes
      end

      def valid?
        String(title).length > 0
      end

      private

      attr_reader :attributes

      def title
        attributes[:title]
      end
    end
  end
end
