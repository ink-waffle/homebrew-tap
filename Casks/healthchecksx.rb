cask "healthchecksx" do
  version "1.1"
  sha256 "7845337415d5ffb3b7434df3d121e7ccbf6c69a7fd4586e06f5dfa05ed692704"

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
