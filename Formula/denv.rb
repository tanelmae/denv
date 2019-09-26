class Denv < Formula
  desc "Docker Compose wrapper for git based projects"
  homepage "https://gist.github.com/tanelmae/e596c8ea00abaa40b51db75795394b88"
  url "https://raw.githubusercontent.com/tanelmae/denv/master/bin/denv",
    :using => :nounzip
  sha256 "301097f43ddecfb9ec312e9601e1c313ce3733d72021616ed86b650dfc012719"
  depends_on "git"
  version "0.0.1"

  resource "bash-completion" do
    url "https://raw.githubusercontent.com/tanelmae/denv/master/denv.bash-completion"
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
