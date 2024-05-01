module Convenlu
  class Format
    class << self
      # Class to format commit message output
      def to_plain_text(commit)
        full_commit = ""
        full_commit << commit[:type].split(":")[0]
        full_commit << "(#{commit[:scope]})" if commit.key?(:scope)
        full_commit << ": #{commit[:title]}"
        full_commit << "\n\n#{commit[:description]}"
        full_commit << "\n\n#{commit[:footer]}" if commit.key?(:footer)
        full_commit
      end
    end
  end
end
