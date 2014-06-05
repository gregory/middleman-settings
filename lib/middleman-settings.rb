# Require core library
require 'middleman-core'
require 'middleman-settings/version'

# Register extensions which can be activated
# Make sure we have the version of Middleman we expect
# Name param may be omited, it will default to underscored
# version of class name

::Middleman::Extensions.register(:settings) do
  require 'middleman-settings/extension'
  ::Middleman::Settings::SettingsExtension
end
