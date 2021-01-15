# frozen_string_literal: true

require 'tty-spinner'

module Convenlu
  class Spinner
    def self.start_animation
      spinner = TTY::Spinner.new('[:spinner] Creating commit ...', format: :spin_2)
      spinner.auto_spin
      sleep(1)
      spinner.stop('Done!')
    end
  end
end
