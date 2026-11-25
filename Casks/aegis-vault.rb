cask "aegis-vault" do
  arch arm: "aarch64"

  version "0.2.1"
  sha256 "de3b44ea312b64bb6558b1c5389cca563a555cfa2c78fa25df35fc4b547d46b3"

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
