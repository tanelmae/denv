class Denv < Formula
  desc "Docker Compose wrapper for git based projects"
  homepage "https://github.com/tanelmae/homebrew-denv"
  url "https://github.com/tanelmae/homebrew-denv/archive/v0.1.1.zip"
  sha256 "98fe5b88da347aaef5a66eea1d7428962512532fc0bf530ea706242ebb70ed76"
  depends_on "git"
  version "0.1.1"

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
