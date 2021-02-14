# frozen_string_literal: true

require 'git'
require 'convenlu/format'

module Convenlu
  class Repository
    attr_reader :git

    def initialize
      @git = Git.open(Dir.pwd)
    end

    def create_commit(commit)
      @formatted_commit = Format.to_plain_text(commit)
      @git.commit(@formatted_commit)
    end
  end
end
