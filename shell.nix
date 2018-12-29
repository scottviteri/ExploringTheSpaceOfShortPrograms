with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    python36
    python36Packages.numpy
    python36Packages.matplotlib
    python36Packages.ipython
    python36Packages.more-itertools
    python36Packages.ipywidgets
    python36Packages.scikitlearn 
    python36Packages.seaborn
    python36Packages.pydotplus
    python36Packages.pandas

  ];
}

