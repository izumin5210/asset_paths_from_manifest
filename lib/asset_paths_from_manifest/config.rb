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
    attr_accessor :manifest_json_path

    def initialize
      @manifest_json_path = Rails.root.join('public', 'assets', 'manifest.json')
    end
  end
end
