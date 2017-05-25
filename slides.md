% Introduction to Git for Scientists
% Simon Cockell
% 7th June 2017



Why version control?
--------------------

<img src='img/phd101212s.png' height=450>

<span style="font-size:12px">* Source: <http://phdcomics.com/comics/archive.php?comicid=1531></span>

Why version control?
--------------------
  * This sort of _ad hoc_ versioning doesn't scale
  * Services like [Dropbox][1] and [Google Drive][2] can improve matters
    * Risk deletion or corruption
    * What happens on one computer propagates to whole project
    * Still not great for projects >1 directory
  * Problems faced by software engineers for a long time
    * So -- version control

What is Git?
------------
<span style="color:red">Git is a distributed version control system.</span>

  * Git stores the history of all changes made to a project
  * You can use it to roll back these changes at any time
    * and to any point
  * It's also a tool for collaboration
  * Git can handle integrating changes from multiple people

What is Git?
------------
  * Git was written by Linus Torvalds
    * To manage the code for the Linux kernel
    * Thousands of collaborators
    * Huge codebase

Still unconvinced? What git can do for you
------------------------------------------
  * Keep snapshots of your project
    * Freeze a version at submission of publication
    * Subsequent version with revision
  * Keep track of important changes to code (and other files)
    * Allow even distant collaborators to keep up with developments
  * Keep projects organised and available after people leave

How to use Git -- the basics
----------------------------
Installing Git

  * MacOS - use [Homebrew][3]
    * `brew install git`
  * Linux - use your package manager
    * `apt install git`
  * Windows - <span style='text-decoration:line-through'>use Mac or Linux</span>
    * [download installer package][4]

All git commands are of the form `git verb` where `verb` is the thing you want git to do.

config
------

Set global git configurations. Because git is a collaborative platform, you need to identify yourself:

```bash
$ git config --global user.name "Donald Duck"
$ git config --global user.email "donald@disney.com"
```

Other useful configuration options:

```bash
# Set up git to use terminal colours
$ git config --global color.ui true
# Change the default text editor used for commit messages
$ git config --global core.editor "vim"
```

init
----
Initialise a new repository

```bash
$ mkdir mynewrepo
$ cd mynewrepo
$ git init
Initialized empty Git repository in /path/to/mynewrepo/.git/
```
Creates a hidden directory (`.git/`) which is what manages the repo under the hood

clone
-----

Take a copy of another repository - often used if you want to grab someone's code from (e.g.) Github

```bash
$ git clone git://github.com/broadgsa/gatk.git
Cloning into 'gatk'...
remote: Counting objects: 175297, done.
remote: Total 175297 (delta 0), reused 0 (delta 0), pack-reused 175297
Receiving objects: 100% (175297/175297), 247.52 MiB | 11.54 MiB/s, done.
Resolving deltas: 100% (97299/97299), done.
```

This gives you access to new updates as they're released -- you won't have permission to push changes to this repo.

add
---

We created a repository with `init`, but it's not tracking anything.

Use `add` to track files in your repo (the files will need to exist).

```bash
$ touch README
$ git add README
```

Now, git is tracking our new `README` file.

status
------

`status` tells you about git's status of the files in your repository

```bash
git status
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

	new file:   README
```

status
------

If we create a new file, but don't `add` it, `status` tells us so

```bash
$ touch newfile
$ git status
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

	new file:   README

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	newfile
```

commit
------

Time to take a snapshot of our project

```bash
# first add the untracked file
$ git add newfile
# now take the snapshot
$ git commit -m "My first commit"
```

The `-m` option lets you add a commit message. If you don't do this at the command line,
git will open it's `core.editor` and make you write one.

Commit messages
---------------

This is an important way of documenting your project, and what's in the commit.
You should be able to find a relevant commit from the message.

<img src='img/git_commit.png' height=250>

<span style="font-size:12px">* Source: <http://xkcd.com/1296></span>

Final word on add, status and commit
------------------------------------

Tracking and staging are different concepts in git. A tracked file is not necessarily
staged for the next commit. Even tracked files need to be `add`ed (staged) before commit:

Final word on add, status and commit
------------------------------------

```bash
$ echo "Copyright (c) 2017, Donald Duck" > README
$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README

no changes added to commit (use "git add" and/or "git commit -a")
```

Final word on add, status and commit
------------------------------------
We have to `git add README` again to stage the change so it can be committed.
Thankfully, git provides us with a shortcut: `git commit -a` will automatically
stage all unmodified tracked files.


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

  [1]: dropbox.com
  [2]: drive.google.com
  [3]: https://brew.sh
  [4]: https://git-scm.com/download/win
