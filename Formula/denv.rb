class Denv < Formula
  desc "Docker Compose wrapper for git based projects"
  homepage "https://github.com/tanelmae/homebrew-denv"
  url "https://github.com/tanelmae/homebrew-denv/archive/v0.1.0.zip"
  sha256 "4c07ef047a69a42596bf2c501c181ec8a57512de92c561aa83e8efa3168774ac"
  depends_on "git"
  version "0.1.0"

  def install
    chmod 0755, 'bin/denv'
    bin.install "bin/denv" => "denv"
    cp 'denv.bash-completion', '/usr/local/etc/bash_completion.d/denv.bash-completion'
    ohai 'Bash completion installed to /usr/local/etc/bash_completion.d/denv.bash-completion'
  end

  test do
    system "false"
  end
end
