Write code with BBEdit?
===================================================

There are certain problems programmers of all languages have, things that BBEdit should do for you.

"Gah! I have all these assignment lines! I want to make them line up!"

"ARG! The style guide says I should use snake_case but I used camelCase!"

"I want to go to the start (or end) of this double quoted string!"

"Arg! I needed to start this chunk of text off with (a quote, a paran, a bracket)!"

I have a low annoyance factor when I'm coding, and these things are **annoying**!

Be Annoyed No More! Now BBEdit can do these things _for you_!
------------------------------------

Functionality from this package is partially inspired from the Source bundle in TextMate, and partially just by using BBEdit and situations I face in my day to day life as a programmer.

Installation
============

    $ cd Library/Application\ Support/BBEdit/
    $ mkdir Packages # if it doesn't already exists
    $ cd Packages
    $ git clone https://github.com/rwilcox/source.bbpackage.git

And restart BBEdit.

Contributing
======================

Please feel free to contribute. However, there is something to keep in mind: BBEdit for some reason doesn't like the uncompiled versions of some Applescripts (for example, the git commit Applescript).

Plus, having BBEdit compile an Applescript every time is much slower than compiling it once.

To avoid this, I've created a ApplescriptSources folder. Modify the .applescript file here, then save a compiled version in the Scripts/Sources folder.

At some point I'll write a shell script or Makefile to automate this process, or figure out what's wrong...

License
================

Public domain, unless otherwise stated in the source file.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
