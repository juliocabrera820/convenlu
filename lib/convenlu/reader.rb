# frozen_string_literal: true

require 'json'

module Convenlu
  class Reader
    def self.read_json
      file = File.read("#{Dir.pwd}/convention.json")
      convention = JSON.parse(file)
      convention.map do |type|
        "#{type.keys.join}: #{type.values.join}"
      end
    end
  end
end
