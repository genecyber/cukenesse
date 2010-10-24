Installation instructions:
==========================

  - Install RVM: http://rvm.beginrescueend.com/rvm/install/
  
  - Type: 
    
    `rvm install ruby`
    
    `rvm use ruby`
    
    `rvm gemset create 'cukenesse'`
    
  - Clone this repository:
  
    `git clone git@github.com:frnz/cukenesse.git`
  
  - Cd to the application's folder (if it ask you to trust the rvmrc file, type yes), then:
  
    `gem install bundler`
    
    `bundle install`
  
  - That should install everything, to run the tests, type:
  
    `rake cucumber`
