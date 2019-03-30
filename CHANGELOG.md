# Changelog
### 1.2.0 2019-03-30
Enhancement: Compute contents of each directory only once instead of twice.  
Enhancement: Use named pipes instead of temporary files.

Bugfix: Newlines were accepted for names (despite being unsuported by the format) and line returns weren't sufficiently escaped in the exclude or omit file.  
Bugfix: Under certain conditions unstaged files and directory contents were wrong.

#### 1.1.1 2019-03-16
Bugfix: Noninteractive commits would fail.

### 1.1.0 - 2019-03-15
Enhancement: Commit on first try even without gdb (nonzero exit code remains).  
Enhancement: Much faster when dealing with many files.  
Enhancement: Contents of directories are listed asynchronously.

Bugfix: Using just 'git commit' led to an error.  
Bugfix: There was a hidden dependency on 'cmp' from diffutils.  
Bugfix: Filenames with newlines could cause problems.  
Bugfix: Filenames added to the exclude or omit file weren't escaped.  
Bugfix: Filenames added to the exclude or omit file weren't anchored to the root.

#### 1.0.3 - 2019-03-01
Bugfix: Symlinked directories could be entered.

#### 1.0.2 - 2019-02-28
Bugfix: Symlinked directories were recursed into.

#### 1.0.1 - 2019-02-28
Bugfix: Directories could be listed several times.

## 1.0.0 - 2019-02-28
Initial release
