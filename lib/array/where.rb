class Array
  module Where
    require_relative "where/version"

    def where(query)
      self.select do |item|
        query.all? do |method, value|
          item.send(method) == value
        end
      end
    end

    def wherein(query)
      self.select do |item|
        query.all? do |method, value|
          value.call(item.send(method))
        end
      end
    end
  end
end
