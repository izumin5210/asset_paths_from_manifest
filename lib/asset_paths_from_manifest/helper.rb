require "asset_paths_from_manifest/manifest"

module AssetPathsFromManifest
  module Helper
    def asset_path_from_manifest(name, **options)
      asset_path(lookup(name), **options)
    end

    def javascript_include_tag_from_manifest(name, **options)
      javascript_include_tag(lookup(name, type: :javascript), **options)
    end

    def stylesheet_link_tag_from_manifest(name, **options)
      stylesheet_link_tag(lookup(name, type: :stylesheet), **options)
    end

    private

    def lookup(name, type: nil)
      name_with_extname = "#{name}#{compute_asset_extname(name, type: type)}"
      AssetPathsFromManifest.manifest.lookup(name_with_extname)
    end
  end
end
