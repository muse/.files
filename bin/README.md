## Collection of my scripts.
A small collection of the scripts I have written and occasionally collected from others.

#### Compile.sbcl, both.sbcl & run.sbcl
These shouldn't be considered scripts really, rather snippets of code.
They're used to build and run (Common) Lisp. Since Lisp is both a interpreted
and compiled language I made snippets for either.
```
# Compile the lisp file to an executable.
$ compile.sbcl main.lsp

# Interpretate the lisp file and execute it right away.
$ run.sbcl main.lsp

# First compile and then execute the executable.
$ both.sbcl main.lsp
```

#### Quote & fetch
Custom alternatives to bloat `screenfetch`. They're designed for *Arch linux*
but it should work fine on most systems.
##### Fetch
A fancy stolen ASCII art triangle.
* Packages
* Uptime
* Shell
* RAM
* OS
```
$ fetch
```

###### Quote
A random quote from `fortune`.
* Packages
* Uptime
* OS
```
$ quote
```

#### Lock
A small wrapper for i3lock that blurs the current desktop and uses that as a
lockscreen. You can additionally specify an **.jpg** or **.png** that will
center on top of it.
```
$ lock
```


#### Umbra
Designed to show the current terminal colors in the different formats (HEX, 256)
and a small example of the color. Currently only works on *Termite* but
hopefully works for others in the near future.
```
$ umbra
```

#### Praeter
Actually something I spend some serious time on. It's a wrapper for managing
vim plugins. It's external and still relies on something like Pathogen to
load the plugins but does pull, clone and adds the ability to easily remove
and add plugins. Everything is managed ina plugins.conf file.
```
# View the available commands.
praeter -h
```

*Everything else which is left undocumented is not finished, not mine, broken
or hardly functional.*
