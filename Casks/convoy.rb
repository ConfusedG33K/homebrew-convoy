cask "convoy" do
  version "1.2.0"
  sha256 "ac687445406ac27edc7265bbab1bb8ff2d967e80a1542c8da0587c14a3b7ce19"

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
