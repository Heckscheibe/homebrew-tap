cask "simple-simulator-manager" do
  version "1.5.0"
  auto_updates true
  sha256 "06f33aa300570140e22028e51d41615fe8b662b8af3d59895049230ac68c7c36"

  url "https://github.com/Heckscheibe/SimpleSimulatorManager/releases/download/v#{version}/SimulatorManager-#{version}.zip"
  name "Simple Simulator Manager"
  desc "Menu bar tool for inspecting and managing apps on Apple simulators"
  homepage "https://github.com/Heckscheibe/SimpleSimulatorManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Simulator Manager.app"
  binary "#{appdir}/Simulator Manager.app/Contents/Helpers/simple-simulator-mcp"

  zap trash: [
    "~/Library/Caches/com.nicolashiller.SimpleSimulatorManager",
    "~/Library/HTTPStorages/com.nicolashiller.SimpleSimulatorManager",
    "~/Library/Preferences/com.nicolashiller.SimpleSimulatorManager.plist",
    "~/Library/Preferences/SimulatorManager.plist",
  ]
end
