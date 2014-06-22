require "spec_helper"

module Jekyll
  module AssetsPlugin
    describe Environment do
      context "#asset_path of context" do
        it "should properly handle query params" do
          css = @site.assets["vapor.css"].to_s
          expect(css).to match(/fonts\/vapor-[a-f0-9]{32}\.eot\?#iefix/)
          expect(css).to match(/fonts\/vapor-[a-f0-9]{32}\.svg#iefix/)
        end

        it "should properly handle relative paths" do
          css = @site.assets["lib/relative.css"].to_s
          expect(css).to match(%r{/assets/fonts/vapor-[a-f0-9]{32}\.eot\?#iefix})
          expect(css).to match(%r{/assets/fonts/vapor-[a-f0-9]{32}\.svg#iefix})
          puts css
        end
      end
    end
  end
end
