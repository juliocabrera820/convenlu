# frozen_string_literal: true

require 'json'

module Convenlu
  class Reader
    def self.read_file(path)
      File.read(path)
    end

    def self.read_json(file)
      JSON.parse(file)
    end
  end
end
