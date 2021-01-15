# frozen_string_literal: true

require 'convenlu/prompt'
require 'convenlu/spinner'

module Convenlu
  class Interface
    def self.start_prompt
      Prompt::start
      Spinner::start_animation
    end
  end
end
