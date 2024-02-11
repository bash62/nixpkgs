{ lib, buildFishPlugin, fetchFromGitHub }:

buildFishPlugin rec {
  pname = "ghq-fish";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "decors";
    repo = "fish-ghq";
    rev = "cafaaabe63c124bf0714f89ec715cfe9ece87fa2";
    hash = "sha256-6b1zmjtemNLNPx4qsXtm27AbtjwIZWkzJAo21/aVZzM=";
  };

  meta = with lib; {
    description = "Completions and keybinding for ghq";
    homepage = "https://github.com/decors/fish-ghq";
    license = licenses.mit;
    maintainers = with maintainers; [ Bash62 ];
  };
}
