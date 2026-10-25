cask "resourcewatch" do
  version "0.4.1"
  sha256 "43ac087b23e93af3d28a668a17b24644edb738ca08b3c9e0a84c69a49d5d6613"

  url "https://github.com/3257/ResourceWatch/releases/download/v#{version}/ResourceWatch-#{version}.zip"
  name "ResourceWatch"
  desc "Menu bar monitor for CPU, memory, storage and network"
  homepage "https://github.com/3257/ResourceWatch"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ResourceWatch.app"

  uninstall quit: "io.github.3257.ResourceWatch"

  zap trash: "~/Library/Preferences/io.github.3257.ResourceWatch.plist"
end
