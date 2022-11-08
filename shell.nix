with (import <nixpkgs> {});

mkShell {
  buildInputs = [
    nodejs
    yarn
  ];
  shellHook = ''
    export OGRODJE_HOME =`pwd`
    export PATH="$PWD/node_modules/.bin/:$PATH"
    yarn install
  '';
}
