cask "simple-simulator-manager" do
  version "1.3.0"
  sha256 "e00eac67e802f86a6087629345b31ac070081f6da2671064d7a456ff79514f4c"

  url "https://github.com/Heckscheibe/SimpleSimulatorManager/releases/download/v#{version}/SimulatorManager.zip"
  name "Simple Simulator Manager"
  desc "Menu bar tool for inspecting and managing apps on Apple simulators"
  homepage "https://github.com/Heckscheibe/SimpleSimulatorManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Simulator Manager.app"

  zap trash: [
    "~/Library/Caches/com.nicolashiller.SimpleSimulatorManager",
    "~/Library/HTTPStorages/com.nicolashiller.SimpleSimulatorManager",
    "~/Library/Preferences/com.nicolashiller.SimpleSimulatorManager.plist",
    "~/Library/Preferences/SimulatorManager.plist",
  ]
end
