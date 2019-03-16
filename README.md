# git-stagelight
stagelight is a hook for git that will **prompt for unstaged files created since the last commit** whenever you commit.

You then have the choice to either stage the file, omit it from the commit (and prevent stagelight from asking about it again), or to add it to your exclude file (the local equivalent of .gitignore).

If a directory contains just one new unstaged file, you'll be asked about that one directly.  
If it contains more than one, you can either descend into it or handle all files at once.

<img src="recording.svg" width="896px">

## Installation
Save [pre-commit](pre-commit?raw=true) into the `.git/hooks/` directory of your repository.

Optionally, add it to the [git template directory](https://git-scm.com/docs/git-init#_template_directory) to automatically install in every new repository.

To get a nonzero exit code, gdb needs to be installed.  
This is because normally a git hook has no control over the calling process.
