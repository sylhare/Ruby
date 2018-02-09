 #!/usr/bin/env ruby
 # Source: https://www.thoughtco.com/using-glob-with-directories-2907832
 # The following example program will demonstrate as many patterns as it can in many different combinations.
 
 
 # Get all .xml files
 Dir['*.xml']

 # The following glob will match all files ending in .rb in the current directory
 Dir.glob('*.rb').each do|f|
 puts f
 end

 # Get all files with 5 characters and a .jpg extension
 Dir['?????.jpg']
 
 # Get all jpg, png and gif images
 Dir['*.{jpg,png,gif}']
 
 # Descend into the directory tree and get all jpg images
 # Note: this will also file jpg images in the current directory
 Dir['**/*.jpg']
 
 # Descend into all directories starting with Uni and find all
 # jpg images.
 # Note: this only descends down one directory
 Dir['Uni**/*.jpg']
 
 # Descend into all directories starting with Uni and all
 # subdirectories of directories starting with Uni and find
 # all .jpg images
 Dir['Uni**/**/*.jpg']