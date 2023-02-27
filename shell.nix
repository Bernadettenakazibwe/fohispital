{ pkgs ? import <nixpkgs> {} }:

let
  pythonEnv = with pkgs.python310Packages; [
    # Data Science Basics
    ipython
    jupyter
    fastapi
    uvicorn
  ];

in pkgs.mkShell {
  buildInputs = with pkgs; [
    pythonEnv
    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
