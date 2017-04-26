module Fastlane
  module Helper
    class LoadJsonHelper
      # class methods that you define here become available in your action
      # as `Helper::LoadJsonHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the load_json plugin helper!")
      end
    end
  end
end
