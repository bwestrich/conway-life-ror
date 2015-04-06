# Ruby on Rails Test Driven Development Implementation of Conway's Game of Life

by [Brian Westrich](http://mcwest.com/).

We coded this app as part of a coder-dojo that I attended (and mostly paired with) with my colleague Mike Calvo. The main focus of the dojo was implementing the algorithm of Conway's game of life without a graphical user interface, but since I coded my answer in ruby I couldn't resist the temptation to try to run it in a rails app. 

## Status of implemention: 

  conway logic is correct  
  
  rails app only works in single-user mode and has ugly UI.  The UI looks better if you unzoom the browse (command-) to a very small size :-)  ). 
  
## Future thoughts: 
  
  convert use of global ruby variable for game board to session variable (until do this, only one user can 
    use web app at a time) 
    
  update game boards using JavaScript (so are more visually pleasing)
  
  add an "auto-evolve" (currently have to click a link for each evolution)
  
  improve game performance by using AJAX
