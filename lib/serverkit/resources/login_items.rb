require "serverkit/resources/base"

module Serverkit
  module Resources
    # A resource class for Mac OS X login items.
    class LoginItems < Base

      # @example '/Applications/Alfred 2.app'
      attribute :path, required: true, type: String

      # @example true
      attribute :hidden, default: false, type: [TrueClass, FalseClass]

      def apply
        run_command("osascript -e 'tell application \"System Events\" to make login item at end with properties { path: \"#{path}\", hidden: #{hidden} }'")
      end

      # @note Override
      # @return [true, false]
      def check
        login_item_names.include?(item_name)
      end

      private

      def item_name
        @item_name ||= path.split('/').last.split('.').first
      end

      def login_item_names
        list_all.stdout.split(',').map(&:strip)
      end

      def list_all
        run_command("osascript -e 'tell application \"System Events\" to get the name of every login item'")
      end
    end
  end
end
