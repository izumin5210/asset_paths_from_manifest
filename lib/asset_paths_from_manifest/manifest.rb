require "asset_paths_from_manifest/config"

module AssetPathsFromManifest
  class Manifest
    class << self
      def load
        new(file_path)
      end

      def file_path
        AssetPathsFromManifest.configuration.manifest_json_path
      end
    end

    def initialize(json_path)
      @json_path = json_path
      @data = load
    end

    def load
      JSON.parse(File.read(@json_path))
    end

    def lookup(name)
      @data[name]
    end
  end
end
