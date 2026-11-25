cask "aegis-vault" do
  arch arm: "aarch64"

  version "0.2.2"
  sha256 "0ce7161236647c493fd3925124375d7fe5750719eee2049f845e3da29e165873"

  url "https://github.com/DrXendria/Aegis/releases/download/v#{version}/Aegis_#{version}_#{arch}.dmg"
  name "Aegis Vault"
  desc "100% local, two-layer zero-knowledge password manager"
  homepage "https://github.com/DrXendria/Aegis"

  app "Aegis.app"

  zap trash: [
    "~/Library/Application Support/com.drxendria.aegis",
    "~/Library/Caches/com.drxendria.aegis",
    "~/Library/Preferences/com.drxendria.aegis.plist",
  ]
end
