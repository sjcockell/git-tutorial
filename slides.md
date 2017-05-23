% Introduction to Git for Scientists
% Simon Cockell
% 7th June 2017


What is Git?
------------

Why version control?
--------------------

How to use Git -- the basics
----------------------------

init
----

clone
-----

add
---

status
------

commit
------

diff
----

log
---

mv and rm
---------

ignore
------

reset
-----

Git for collaboration
---------------------

Github
------

push
----

pull
----

merge
-----

Forking and Pull requests
-------------------------

Branches and more merging
-------------------------



A slide to throwaway later
--------------------------

The following variables can be defined from the command line:

* theme
* transition

```bash
pandoc -t html5 --template=template-revealjs.html \
    --standalone --section-divs \
    --variable theme="beige" \
    --variable transition="linear" \
    slides.md -o slides.html
```
