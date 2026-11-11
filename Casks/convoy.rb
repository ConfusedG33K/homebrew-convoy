cask "convoy" do
  version "1.3.0"
  sha256 "c3c2a8ca48ef32317f9f43e3bf20a2b1b9d3bf2570a33419ccbe464d37c9e159"

  url "https://github.com/TheDynamicPunk/Convoy/releases/download/v#{version}/Convoy-#{version}.dmg"
  name "Convoy"
  desc "Native download manager"
  homepage "https://thedynamicpunk.github.io/"

  depends_on macos: :sonoma

  app "Convoy.app"

  zap trash: [
    "~/Library/Application Support/Convoy",
    "~/Library/Caches/io.github.thedynamicpunk.convoy",
    "~/Library/HTTPStorages/io.github.thedynamicpunk.convoy",
    "~/Library/Preferences/io.github.thedynamicpunk.convoy.plist",
  ]
end
