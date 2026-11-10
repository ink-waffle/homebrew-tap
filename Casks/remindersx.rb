cask "remindersx" do
  version "1.0"
  sha256 "316c71ba859d3f4c9cdf09df128251c8fe0f27e8fc7b34bb0ebc9f837769c5bb"

  url "https://github.com/ink-waffle/remindersx/releases/download/v#{version}/RemindersX-#{version}.zip"
  name "RemindersX"
  desc "Charts of your completed Apple Reminders in the menu bar"
  homepage "https://github.com/ink-waffle/remindersx"

  depends_on macos: :sonoma

  app "RemindersX.app"

  # Not notarized yet; drop this once releases are signed with a Developer ID.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/RemindersX.app"], must_succeed: false
  end

  uninstall quit: "com.damirkairov.RemindersX"

  zap trash: [
    "~/Library/Application Scripts/com.damirkairov.RemindersX",
    "~/Library/Containers/com.damirkairov.RemindersX",
  ]
end
