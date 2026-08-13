class Pleach < Formula
  desc "Parallel, isolated work sessions for multi-repo workspaces"
  homepage "https://github.com/guedesdiogo/pleach"
  url "https://github.com/guedesdiogo/pleach/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "8bf2fca0a9267a22c6984efed733e923fc6fbcd1ae9fbfe2ea087d735fe3f2d4"
  license "MIT"
  head "https://github.com/guedesdiogo/pleach.git", branch: "main"

  def install
    bin.install "pleach"
    # pleach emits its own completions, so they can never drift from the command
    # table they describe: `pleach completions bash` and `... zsh`.
    generate_completions_from_executable(bin/"pleach", "completions", shells: [:bash, :zsh])
  end

  test do
    assert_match "pleach #{version}", shell_output("#{bin}/pleach version")

    # Beyond the version string: the tool must actually refuse to guess. Outside
    # any workspace it has no canonical to resolve, and saying so is the correct
    # behaviour, not a failed install.
    output = shell_output("#{bin}/pleach ls 2>&1", 1)
    assert_match "cannot tell which workspace is canonical", output

    # And the completions it just generated must be valid shell.
    (testpath/"completions.bash").write shell_output("#{bin}/pleach completions bash")
    system "bash", "-n", testpath/"completions.bash"
  end
end
