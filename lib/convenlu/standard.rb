# frozen_string_literal: true

require 'convenlu/convention_file'
require 'convenlu/reader'

module Convenlu
  class Standard
    def self.commit_types
      commit_types_file = Reader.read_file(ConventionFile.path('convention.json'))
      convention = Reader.read_json(commit_types_file)
      convention.map do |type|
        "#{type.keys.join}: #{type.values.join}"
      end
    end

    def self.rules
      rules_file = Reader.read_file(ConventionFile.path('rules.json'))
      Reader.read_json(rules_file)
    end
  end
end
