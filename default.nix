{ stdenv, makeWrapper, git, coreutils, ncurses, gdb, gawk }:
stdenv.mkDerivation {
  pname = "git-stagelight";
  version = "1.1.1";
  src = ./.;
  dontBuild = true;
  buildInputs = [ makeWrapper ];
  installPhase = ''
    cp pre-commit $out
    wrapProgram $out \
      --prefix PATH : "${stdenv.lib.makeBinPath [ git coreutils ncurses gdb gawk ]}"
  '';
  meta = with stdenv.lib; {
    description = "git hook that prompts for new && unstaged files whenever you commit";
    homepage = "https://github.com/hyperfekt/git-stagelight";
    license = licenses.mpl20;
  };
}
