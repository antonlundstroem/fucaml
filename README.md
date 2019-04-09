## fucaml was made to improve qol when using ocaml with vim or emacs :)

### Manual 'installation'
1. `git clone https://github.com/antonlundstroem/fucaml`
2. `cd into newly cloned directory and run 'sudo ./fucaml', this will install entr and add the directory to your $PATH`

### One-liner installation and setup:
`git clone https://github.com/antonlundstroem/fucaml && cd fucaml && sudo ./fucaml`

**Usage:**

When in a directory with a **_single_** \*.ml file:

Simply run `fucaml` and the program will automatically find the \*.ml file, compile and run it.

**To compile a specific file:**

`fucaml -f <filename>`

Let the program run and each time your source code is saved in emacs/vim/some other texteditor the source will recompile and run the new binary.

![alt text](https://raw.githubusercontent.com/antonlundstroem/fucaml/master/example.png)
