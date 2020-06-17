# Testing Relationships Between Classes

## Secret Diary Readme
Production code already written in secret_diary.rb

Using doubles, make the 4 tests in spec folder pass.

A double is a stand in for a real object, like a stunt double.

When the diary is locked it cannot be read or written in, the methods in the ruby file will not allow this. A message of "Go away!" will be printed if read and write methods are attempted to be accessed when diary is locked.

We are using diary as a double as it will be initialized when an instance of SecretDiary is made.
Expect tests are written to replicate the message of "Go away!" that will be printed when diary is locked.

When the diary is unlocked in the following two tests to write, we will need to use the double and write in code for it to expect an argument of what to output when either read or write methods are called.
We then write the test code as normal on rspec and the expect test to equal the return statement we have previously stated. This is because @diary.read is a separate method that is not displayed in the ruby file.

The write method is the same, apart from the double needs to take in an argument of a string. The return statement will need to equal nil, as that is the default return value when write method is called when diary is unlocked.



