# ink-waffle/tap

```sh
brew tap ink-waffle/tap
brew trust --cask ink-waffle/tap/healthchecksx
brew install --cask ink-waffle/tap/healthchecksx
```

`remindersx` is also here, but it installs from a local build, so for now it only works on its author's Mac.

Neither app is notarized yet, so each cask removes the macOS quarantine flag from the app after install and Gatekeeper does not check it on launch.
