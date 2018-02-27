Menu:
- Program runs the start_menu function when called
- Start_menu lists out all the functions that can be used

Basic Functions:
1. check_up_to_date
	- informs if you're local repo is up to date
	- Used git fetch -v --dry-run to see if its up to date
	- Followed by checking to see if the string "[up to date]" is a substring of the output from terminal

2. check_uncommited_changes
	- Puts all uncommited changes in a file changes.log
	- Used git diff to find differences and logs it to changes.log

3. log_todo
	- Puts each line from every file of your project with the tag #TODO into a file todo.log
	- Grep #TODO and puts the line in todo.log
	- The idea to exclude all log files is taken from deleeuwj1

4. check_haskell_errors
	- Checks all haskell files for shyntax errors and puts the results into error.log
	- Used bucklj4's code to check if theres a main module in haskell files. Adds a main module it does not contain it
	- Found all files with extension .hs and if theres an error (found using ghc -fno-code), it logs to error.log

Custom Features:
1. remove_logs
	- Really simple function that removes all log files
	- Finds all files with the extension .log and removes them

2. remove_any_extension
	- Decided to expand upon remove_logs and make one that removes files with any extension the user wants
	- Same concept as remove_logs except this one takes a user input 

3. encrypted_files
	- Really simple function that lists out all encrypted files
	- Same concept as previous two functions but used echo instead of rm

4. check_permission
	- Checks the permission of any file and returns permissions for owner, group, and others
	- Uses octal code and matches it with a value in a dictionary 

5. shitty_compression
	- Attempted to make a compression system that replaces the top 100 most common words with shortforms.
	- Compresses & Decompresses by matching words with shortforms in a dictionary
	- Unfortunatly I ran out of time to finish this one.

