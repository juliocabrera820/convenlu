# frozen_string_literal: true

require 'convenlu/version'

module Convenlu
  class ConventionFile
    def self.path(json_file)
      development_path = File.join(Dir.pwd, 'lib', 'convenlu', json_file)
      if Dir.pwd.split('/')[-1] == 'convenlu' || File.exist?(development_path)
        development_path
      else
        File.join(Gem.dir, 'gems', "convenlu-#{Convenlu::VERSION}", 'lib', 'convenlu',
                  json_file)
      end
    end
  end
end
