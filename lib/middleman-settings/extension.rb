
module Middleman
  module Settings
    class SettingsExtension < Extension
      option :config_folder, 'config', 'The config folder relative path'

      def initialize(app, options_hash={}, &block)
        super
        @app = app
        app.set :config_folder, options.config_folder
        settings_h = Hash.new do |h, key|
          h[key] = raw_settings(key.to_s)[app.environment.to_s]
        end
        app.set :middleman_settings, settings_h
      end

      private

      def raw_settings(file_name)
        path = file_path(file_name)
        if File.file?(path)
          YAML::load(ERB.new(File.read(file_path(file_name))).result)
        else
          logger.error "[middleman_settings] Error> #{path} does not exist"
          {}
        end
      end

      def file_path(file_name)
        File.join(@app.root, @app.config_folder, "#{file_name}.yml")
      end

      def logger
        @logger ||= Middleman::Logger.singleton
      end
    end
  end
end
