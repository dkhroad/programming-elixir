# Convert float to a string with two decimal digits
:io.format("~.2f~n",[1024.1234])

# OS enviornment variable
System.get_env("PATH")

# extension component of the file name
Path.extname("dave/test.exs")

# Process's current working directory 
System.cwd()

# execute a command 
System.cmd("ls",["-l"])
