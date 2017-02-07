module Fastlane
  module Helper
    class GitInfoExtractHelper
      # class methods that you define here become available in your action
      # as `Helper::GitInfoExtractHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the git_info_extract plugin helper!")
      end
    end
  end
end
