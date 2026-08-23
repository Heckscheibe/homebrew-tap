cask "simple-simulator-manager" do
  version "1.4.0"
  sha256 "7e7ede50aea64d399a425703073bb87b49fe4ce9f258bd40dbe0758ae6547103"

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
