# frozen_string_literal: true

require 'tty-prompt'
require 'convenlu/reader'

module Convenlu
  class Prompt
    def self.start
      prompt = TTY::Prompt.new
      prompt.collect do
        response_scope = prompt.yes?('do you want to add a scope?', default: false)
        key(:scope).ask('enter the commit scope') if response_scope
        key(:type).select('select the commit type', Reader.read_json)
        key(:title).ask('write a short title', required: true)
        key(:description).ask('provide a longer description', required: true)
        response_footer = key(:footer).yes?('do you want to add a footer?', default: false)
        key(:footer).ask('write the commit footer', required: true) if response_footer
      end
    end
  end
end
