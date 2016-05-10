# Functions - return



## Learning Objectives - The student should be able to..

* Explain that a function is a **self-contained** chunk of code that performs a **specific** task. (This was also included in the last lab as an objective, I like the idea of reinforcing this).
* Explain how to properly read a function from left to right (func keyword, name of function, its arguments surrounded in parentheses, followed by the return type `->` and the type that is being returned (if applicable)).
* Explain the difference between a function that doesn't return anything compared with a function that does.

```swift
func ageOfPerson(name: String) -> Int {
    // assuming everyone is 25 right now
    return 25
}

// ..vs..

func sayHelloTo(name: String) {
    print("Hi \(name)")
}
```



## What the student can do at this point 

* Create functions with one/two arguments, they haven't seen the function return anything yet.

```swift
func sayHelloTo(person: String) {
    print("Hello \(person)")
}
```
* Create variables and constants
* Knows how to use the print function
* Knows of the types String and Int



## Outline / Notes

*  Feel free to build off of the narrative in the lab prior to this one  which puts the student in the shoes of a puppy walking through the neighorhood.
* Make sure to break down the function into pieces starting with the `func` keyword to the return type.
* Challenge the student to create functions in a playground file, like so. It can be worded however you like, and I like the idea of having them do this multiple times where the return type for one of the challenges is of type String, one is of type Int and one asks them to print something to console AND... one that does BOTH (print and return something).

```swift
// Create a function with the name 'sayHelloToMyFavArtist' which takes one argument of type String (which will represent the name of your favorite artist) which prints a greeting of your choice.
```

<a href='https://learn.co/lessons/FunctionReturn' data-visibility='hidden'>View this lesson on Learn.co</a>
