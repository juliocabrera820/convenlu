# frozen_string_literal: true

require 'json'
require_relative 'version'

module Convenlu
  class Reader
    def self.read_json
      relative_path = File.join(Dir.pwd, 'lib', 'convenlu', 'convention.json')
      if Dir.pwd.split('/')[-1] == 'convenlu'
        file = File.read(relative_path)
      elsif File.exist?(relative_path)
        file = File.read(relative_path)
      else
        convention_absolute_path = File.join(Gem.dir, 'gems', "convenlu-#{Convenlu::VERSION}", 'lib', 'convenlu',
                                             'convention.json')
        file = File.read(convention_absolute_path)
      end
      convention = JSON.parse(file)
      convention.map do |type|
        "#{type.keys.join}: #{type.values.join}"
      end
    end
  end
end
