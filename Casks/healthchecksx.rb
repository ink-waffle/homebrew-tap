cask "healthchecksx" do
  version "1.0"
  sha256 "0bed0b4f8f920a83bce9d3b1b20465905acbc090aaed2367238cdb8818a7a249"

  url "https://github.com/ink-waffle/healthchecksx/releases/download/v#{version}/HealthchecksX-#{version}.zip"
  name "HealthchecksX"
  desc "Status of your Healthchecks.io checks in the menu bar"
  homepage "https://github.com/ink-waffle/healthchecksx"

  depends_on macos: :sonoma

  app "HealthchecksX.app"

  # Not notarized yet; drop this once releases are signed with a Developer ID.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/HealthchecksX.app"]
  end

  uninstall quit: "com.damirkairov.HealthchecksX"

  zap trash: [
    "~/Library/Application Support/HealthchecksX",
    "~/Library/Caches/com.damirkairov.HealthchecksX",
    "~/Library/HTTPStorages/com.damirkairov.HealthchecksX",
    "~/Library/Preferences/com.damirkairov.HealthchecksX.plist",
  ]
end
