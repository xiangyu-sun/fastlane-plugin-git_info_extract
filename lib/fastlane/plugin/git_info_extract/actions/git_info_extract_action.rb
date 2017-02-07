module Fastlane
  module Actions
    class GitInfoExtractAction < Action
      def self.run(params)
        
        author = params[:author]

        latestSquashCommitLog = sh ("git log -n 1 --date-order --pretty='%B' --branches=develop* --author=#{{author}}*").chomp

        latestSquashCommitLog
      end

      def self.description
        "Extract JIRA information from git merge"
      end

      def self.authors
        ["alexander sun"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "using git log to get infomation"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :author,
                                  env_name: "GIT_INFO_EXTRACT_AUTHOR",
                               description: "commit author",
                                  optional: false,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        [:ios, :mac, :android].include?(platform)
      end
    end
  end
end
