import os
import sys
import time
import datetime

#
"""
From the command line, enter Python followed by the name of this file.
Press the space bar and enter two parameters. The first the directory
and folder name you wish to look into (ex: c:/testFolder). The second
parameter is the size (in bytes) you want to filter to check against. 
"""
#

# captures folder name
folderName = sys.argv[1]

# captures file size
fileSize = int(sys.argv[2]) 

try:
   path = "."
   dirs = os.listdir( path )

   # This would print all the files in the specified folder
   # that are greater than or equal to the second parameter.

   for file in dirs:
     if os.stat(file).st_size >= fileSize:
      print ("The file name and size is: " + file,os.stat(file).st_size)

except:
    print("Unexpected error:", sys.exc_info()[0])
    raise 
else:
   print("\n")