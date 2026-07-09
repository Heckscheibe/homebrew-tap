cask "simple-simulator-manager" do
  version "1.3.1"
  sha256 "381f487fde6ca3b06baef0778ea0ec595837b0c7d6e436c29cd995744622fac0"

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
