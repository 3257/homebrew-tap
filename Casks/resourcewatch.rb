cask "resourcewatch" do
  version "0.4.0"
  sha256 "41396d26310682e05df9995b3237d7988b226c48945752b6ec71127d4e05885c"

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
