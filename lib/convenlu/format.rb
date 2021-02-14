# frozen_string_literal: true

module Convenlu
  class Format
    def self.to_plain_text(commit)
      full_commit = ''
      full_commit << commit[:type].split(':')[0]
      full_commit << "(#{commit[:scope]})" if commit.key?(:scope)
      full_commit << ": #{commit[:title]}"
      full_commit << "\n\n#{commit[:description]}"
      full_commit << "\n\n#{commit[:footer]}" if commit.key?(:footer)
      full_commit
    end
  end
end
