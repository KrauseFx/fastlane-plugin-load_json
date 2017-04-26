module Fastlane
  module Actions
    class LoadJsonAction < Action
      def self.run(params)
        require 'json'

        data = File.read(params[:json_path])
        return JSON.parse(data)
      end

      def self.description
        "Loads a local JSON file and parses it"
      end

      def self.authors
        ["KrauseFx"]
      end

      def self.return_value
        "Content of the JSON file to load"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :json_path,
                                  env_name: "LOAD_JSON_JSON_PATH",
                               description: "The relative path to the JSON file",
                                  optional: false,
                                      type: String,
                              verify_block: proc do |value|
                                              value = File.expand_path(value)
                                              UI.user_error!("Couldn't find JSON at path '#{value}'") unless File.exist?(value)
                                            end)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
