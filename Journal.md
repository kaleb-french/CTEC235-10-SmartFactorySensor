# Journal
Write your Journal questions and notes here.

Phase 1-
created an async function that uses a future.delay to simulate a 2 second delay then returns a string. If we omit the await it outputs instance of 'Future<String>'. The uncompleted future is an object reservation in memory waiting for a event to complete and return the data, the completed future will just return the data unless it errors.

Phase 2-
Created a generator function that uses async to return values one after another with a delay inbetween via a aync for loop. Using yield returns a value from an async function without ending the function, this differs from even the return of a future becuase this return will complete the function when the future is complete. 

