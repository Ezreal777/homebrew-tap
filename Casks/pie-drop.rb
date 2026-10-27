cask "pie-drop" do
  version "0.1.0"
  sha256 "709db8469449e5431fd83d3a13e0c6741c31b505fe4c640978a64185e5e322a8"

  url "https://github.com/Ezreal777/PieDrop/releases/download/v#{version}/PieDrop-#{version}.dmg"
  name "PieDrop"
  desc "macOS menu bar tool that drops Finder-selected file paths into running AI CLI sessions"
  homepage "https://github.com/Ezreal777/PieDrop"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "PieDrop.app"
end
