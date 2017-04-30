# AssetPathsFromManifest
[![Build Status](https://travis-ci.org/izumin5210/asset_paths_from_manifest.svg?branch=master)](https://travis-ci.org/izumin5210/asset_paths_from_manifest)
[![Gem Version](https://badge.fury.io/rb/asset_paths_from_manifest.svg)](https://badge.fury.io/rb/asset_paths_from_manifest)
[![license](https://img.shields.io/github/license/izumin5210/asset_paths_from_manifest.svg)](https://github.com/izumin5210/asset_paths_from_manifest/blob/master/LICENSE.txt)

Provides view helpers to compute full paths for assets from manifest json file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'asset_paths_from_manifest'
```

And then execute:

    $ bundle

## Usage

This module resolves asset paths using like following manifest json file.

```json
{
  "client.js": "http://0.0.0.0:8080/client.js",
  "client.js.map": "http://0.0.0.0:8080/client.js.map"
}
```

```json
{
  "client.js": "/assets/client-8a4f666a18360aeafcfc.js"
}
```

For instance, these json files can be generated `manifest.json` using webpack via [webpack-manifest-plugin](https://www.npmjs.com/package/webpack-manifest-plugin).

This module provides `javascript_include_tag_from_manifest`, `stylesheet_link_tag_from_manifest` and `asset_paths_from_manifest` view helpers.
You can use these helpers instead of `ActionView::Helpers::AssetTagHelper`'s helpers to resolve asset paths.

```erb
<%= javascript_include_tag_from_manifest 'index' %>
<%= stylesheet_link_tag_from_manifest 'index' %>
```

This module use `public/assets/manifest.json` in default.
You can modify manifest file path on initializer.

```ruby
AssetPathsFromManifest.configure do |config|
  config.manifest_json_path = Rails.root.join('public', 'client', 'manifest.json')
end
```

## Inspired
- [Squeezing Webpack into backend frameworks | Infinum](https://infinum.co/the-capsized-eight/squeezing-webpack-into-backend-frameworks)
- [webpacker/env.rb at master · rails/webpacker](https://github.com/rails/webpacker)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/asset_paths_from_manifest. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

