cask "remindersx" do
  version "1.0"
  sha256 "4049d23d146f72841a5165cc71bd94341644b26d74e82be9688ba09da93a3327"

  url "file://#{Dir.home}/RemindersX/build/RemindersX-#{version}.zip"
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
