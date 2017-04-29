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
      javascript_include_tag(lookup(name, type: :javascript), **options)
    end

    private

    def lookup(name, type: nil)
      name_with_extname = compute_asset_extname(name, type)
      manifest.lookup(name_with_extname)
    end

    def manifest
      AssetPathsFromManifest.manifest
    end
  end
end
