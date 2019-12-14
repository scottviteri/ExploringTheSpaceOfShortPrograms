# ExploringTheSpaceOfShortPrograms

This repository gets a user simultaneously up and running on basic examples of SML, Ocaml, Fsharp, and Haskell.

Then only necessary dependency here is the nix package manager, which can be installed using:

curl https://nixos.org/nix/install | sh

. /home/scottviteri/.nix-profile/etc/profile.d/nix.sh

Step into a nix shell using `nix-shell shell.nix` and run `jupyter-notebook ExploringTheSpaceOfShortPrograms.ipynb` to get started.
If running nix-shell takes too long, then just pip install the dependencies at the top of the jupyter notebook file.

In the jupyter file I analyze the data created by the other files in the repository. The scheme file zot.scm houses an interpreter for the zot programming language, which is based on the universal iota combinator. search.sh houses the shell script that generates the zot code, and passes the output to export.txt. 
