cask "convoy" do
  version "1.3.1"
  sha256 "a4e4d39eb888185b9f994976e3a137bacdb98373592730ec31addbf9e3103d52"

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
