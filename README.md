Cukenesse
=========

The aim for this application is to be able to:

First part: Read-only
---------------------

  1. Load a cucumber folder.
  2. See for all the markdown files it contains and create a wiki from those (it does not store on the DB so we can use version control).
  3. If one of those markdown pages contains a reference to a cucumber file, run the test and parse the result as html.
  
Second part: Modify features on the wiki
----------------------------------------

  1. On a page, click an "Edit button"
  2. Regular page content is markdown
  3. Use a special tag and put inside a cucumber feature. Something like: <<cucumber>> (feature here) <<cucumber>>
  4. When it's saved, parses all cucumber content and then creates the markdown and the feature files

  
Installation instructions:
==========================
 - Git
     - OSX: By far the easiest way to install both Git and git-completion is via HomeBrew (http://mxcl.github.com/homebrew/)
     - Ubuntu: https://help.ubuntu.com/community/Git

 - Install RVM: http://rvm.beginrescueend.com/rvm/install/
    - Ubuntu: 
              `curl -s https://rvm.beginrescueend.com/install/rvm -o rvm-installer ; chmod +x rvm-installer ; ./rvm-installer --version latest`

`pico ./.bashrc`

`if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi`

  
 - Type: 
    
    `rvm install 1.9.2`
    
    `rvm --default ruby-1.9.2`
    
    `rvm gemset create 'cukenesse'`
    
 - Clone this repository:
  
    `git clone http://github.com/genecyber/cukenesse.git`
  
 - Cd to the application's folder (if it ask you to trust the rvmrc file, type yes), then:
  
    `gem install bundler`
    
    `bundle install`
  
 - That should install everything, to run the tests, type:
  
    `rake cucumber`
