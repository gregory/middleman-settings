# Middleman-Settings
`middleman-settings` is an extension for the [Middleman](https://github.com/middleman/middleman) static site generator that allows you manage your config variables from a config file

## Installation

If you're just getting started, install the `middleman` gem and generate a new project:

```bash
gem install middleman
middleman init MY_PROJECT
```

If you already have a Middleman project: Add `gem "middleman-settings"` to your `Gemfile` and run `bundle install`.


## Configuration

```ruby
activate :settings #this will load the config files from the config folder from your root app
```

exemple of config file:


    build:
      api_key: <% ENV['FOO_API_KEY'] %>
    development:
      api_key: "foobar"

You can also change the defaule directory:

```ruby
activate :settings, :config_folder => 'my_super_config_folder'
```

## Helper

The extension adds a new `code` helper to Middleman that you can use from your templates:

```erb
<% middleman_settings['facebook']['client_token'] %>
```

You can also use it directly from config.rb

```ruby
middleman_settings['new_relic']['api_key']
```

## Contributing

1. Fork it ( http://github.com/gregory/rpx/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
