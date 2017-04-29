require "rails/railtie"

require "asset_paths_from_manifest/helper"

class AssetPathsFromManifest::Engine < ::Rails::Engine
  initializer :asset_paths_from_manifest do |app|
    ActiveSupport.on_load :action_controller do
      ActionController::Base.helper AssetPathsFromManifest::Helper
    end

    ActiveSupport.on_load :action_view do
      include AssetPathsFromManifest::Helper
    end

    AssetPathsFromManifest.bootstrap
  end
end
