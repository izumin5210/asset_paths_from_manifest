module AssetPathsFromManifest
  class << self
    def configuration
      @config ||= Config.new
    end

    def configuration=(config)
      @config = config
    end

    def configure
      yield configuration
    end
  end

  class Config
    include ActiveSupport::Configurable

    config_accessor :manifest_json_path do
      Rails.root.join('public', 'assets', 'manifest.json')
    end
  end
end
