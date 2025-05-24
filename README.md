bin
===

A number of tools I use daily in my Unix command lines (OS X, Linux, Mingw).


Installation
------------

Clone <https://github.com/felixrabe/bin> and put it on your path. For example:

    to=~/bin
    git clone "https://github.com/felixrabe/bin" "$to"
    echo export PATH=\$PATH:"$(printf "%q" "$to")" >> ~/.profile

Remember to disable aliases like `l` in your `.bashrc` (or similar file).


"pop_var_context: head of shell_variables not a function context"
-----------------------------------------------------------------

This seems to be a confusing but harmless message introduced in recent(ish) Bash
versions. For more information, see:

<https://lists.gnu.org/archive/html/bug-bash/2024-02/msg00096.html>:

> it will be fixed in the next bash version.

TODO: Implement a workaround to silence this message.


License
-------

The MIT License (MIT)

Copyright (c) 2014 Felix Rabe

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
