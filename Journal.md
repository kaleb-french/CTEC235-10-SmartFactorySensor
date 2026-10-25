# Journal
Write your Journal questions and notes here.

Phase 1-
created an async function that uses a future.delay to simulate a 2 second delay then returns a string. If we omit the await it outputs instance of 'Future<String>'. The uncompleted future is an object reservation in memory waiting for a event to complete and return the data, the completed future will just return the data unless it errors.

Phase 2-
Created a generator function that uses async to return values one after another with a delay inbetween via a aync for loop. Using yield returns a value from an async function without ending the function, this differs from even the return of a future becuase this return will complete the function when the future is complete. 

Phase 3-
Created a StreamController<double> and setup a listener using controller.stream.linsten() to handle the temp readings, used an await for loop to add the temps from the temperatureStream(). The controller allows the data to be passed in manually giving more control. It's important to setup the listener before dispatching events becuase the listener gives instructions on how it will be handled when events are dispatched to it. 

Phase 4-
When addError() is sent to the stream and rhis is caught by the onError callback. This allows a error message to be presented and the code continue much like a try-catch block. One of the main differences between a Try-Catch, is the onError with catch any error dipatched to the listen via the stream and a try catch with only catch whats in the try block. 

