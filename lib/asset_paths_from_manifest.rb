require "asset_paths_from_manifest/version"

module AssetPathsFromManifest
  class << self
    attr_reader :manifest

    def bootstrap
      @manifest = Manifest.load
    end
  end
end

require "asset_paths_from_manifest/railtie" if defined?(Rails)
