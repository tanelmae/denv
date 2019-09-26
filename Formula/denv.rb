class Denv < Formula
  desc "Docker Compose wrapper for git based projects"
  homepage "https://gist.github.com/tanelmae/e596c8ea00abaa40b51db75795394b88"
  url "https://gist.githubusercontent.com/tanelmae/e596c8ea00abaa40b51db75795394b88/raw/efaa2eb1a3a1d27bc306c1a143e25e63ea7768ae/denv-1",
    :using => :nounzip
  sha256 "ced49ed2c6b369a893a0be62ac720c8b88f5723fa7799f9e54bf4218da3bee92"
  depends_on "git"
  version "0.0.1"

  resource "bash-completion" do
    url "https://gist.githubusercontent.com/tanelmae/19b039c2fa7c229307b4f48b3fe85666/raw/b496577f65538bee24a87bfcc170a0cbd045d9d8/denv.bash-completion"
    sha256 "a27661680a653136c15d1723c5b029a529eee7e6ac874df62c3b5ba752510185"
  end

  def install
    cp 'denv-1', 'denv'
    chmod 0755, 'denv'
    bin.install "denv" => "denv"
    resource("bash-completion").stage {
      cp 'denv.bash-completion', '/usr/local/etc/bash_completion.d/denv.bash-completion'
      ohai 'Bash completion installed to /usr/local/etc/bash_completion.d/denv.bash-completion'
    }
  end

  test do
    system "false"
  end
end
