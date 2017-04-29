require "asset_paths_from_manifest/version"

module AssetPathsFromManifest
  attr_reader :manifest

  def self.bootstrap
    @manifest = Manifest.load
  end
end

require "asset_paths_from_manifest/railtie" if defined?(Rails)
