cask "resourcewatch" do
  version "0.4.2"
  sha256 "03bbd087055135d95a41f7a3e918d971377aad61cbf3dd2bef6a7551473b7cd5"

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
