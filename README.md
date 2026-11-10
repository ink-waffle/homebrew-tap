# ink-waffle/tap

```sh
brew tap ink-waffle/tap

brew trust --cask ink-waffle/tap/healthchecksx
brew install --cask ink-waffle/tap/healthchecksx

brew trust --cask ink-waffle/tap/remindersx
brew install --cask ink-waffle/tap/remindersx
```

Neither app is notarized yet, so each cask removes the macOS quarantine flag from the app after install and Gatekeeper does not check it on launch.
