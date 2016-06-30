# Functions: Returning Values

![Stephen](http://i.imgur.com/1fx5aqz.jpg?1)

> One, remember to look up at the stars and not down at your feet. Two, never give up work. Work gives you meaning and purpose and life is empty without it. Three, if you are lucky enough to find love, remember it is there and don't throw it away. -[Stephen Hawking](https://en.wikipedia.org/wiki/Stephen_Hawking)

## Learning Objectives

* Explain that a function is a **self-contained** chunk of code that performs a **specific** task.
* Explain how to properly read a function from left to right (`func` keyword, name of function, its arguments surrounded in parentheses, followed by `->` and the type that is being returned).
* Explain the difference between a function that doesn't return anything compared with a function that does.


# Returning Values From Functions

So far, you've spent several lessons (and a couple of labs) learning how to create and call your own functions. You've seen that you can create a function that takes zero or more arguments and print a string (using Swift's `print` function) that interpolates those arguments.

While it may look like functions are simply self-contained blocks of code that can print strings, they can actually do a lot more than that. They can also _return_ a new value.

Imagine you want to write a function that can take the name of a friend, and tell you that friend's age. To keep this simple, we'll imagine that all your friends are 29 (since you should only have friends you can trust, and you shouldn't trust anyone over 30). How would you write that sort of function?

Think back to when you wrote a function that took an argument. Let's review that by first writing a `printAge` function that prints "&lt;friend&gt; is 29" to the console. Add this to a new playground file:

```swift
func printAge(name: String) {
    print("\(name) is 29")
}
```

Let's review the parts of this function definition. First, you introduce a new function using the `func` keyword. Then you write the name of the function—in this case, `printAge`. Next comes the parameter list in parentheses. This function takes one `String` argument, a `name`. Then you open a set of curly braces and write the function body between them.

This works fine if you just want to print a string to the console. Perhaps, though, you want a more general function that takes in a friend's name (as a `String`) and returns their age (as an `Int`).

Why would you want such a function? When writing Swift code, you will often need a function that transforms a piece of data in some way, returning a _new_ value so that you can work with that value the way you want to. Maybe you want to do something other than print your friend's age, such as wish them a happy birthday. Imagine you also have the following function:

```swift
func happyBirthday(age: Int) {
    println("Happy birthday #\(age)!")
}
```

You want to call that function with your friend's age to wish them a happy birthday. Unfortunately, `printAge` only prints your friend's age to the console. How you can you instead wish them a happy birthday?

The answer is simple: Instead of `printAge`, you can write a function, `getAge`, which returns your friend's age, and then pass that returned value to `happyBirthday`.

## Defining Functions That Return Values

It's easy to write a function that returns a new value, instead of printing a string. Here's an example of such a function. Add this to your playground file:

```swift
func getAge(name: String) -> Int {
    return 29
}
```

How is this function definition different than the ones you have written before?

There are two things you should notice. First of all, there is something new between the argument list (in parentheses) and the function body (in curly braces). The new stuff is an arrow (`->`) and a _type_ (in this case, `Int`). What does this mean?

The arrow `->` tells Swift that this function returns a value. Before, none of the functions you wrote returned a value, so you left this out. Since `getAge` does return a value, you have to let Swift know by typing `->` after the argument list.

The return type of the function comes after `->`. It indicates what type of value the function returns, and can be any type. `getAge` returns an `Int` (the value `29`), so you can add `Int` after `->`.

Remember how a constant or variable of a certain type could only hold values of that type? A `String` constant cannot hold an `Int` value, for example. Likewise, functions can only return values that match their return type. `getAge` cannot return a `String` like "oompa loompa"—it _must_ return an `Int`.

The second thing you should notice is that the body of `getAge` is the line `return 29`. `return` is a _keyword_ in Swift, and indicates the value that the function returns. Every function that returns a value must return some sort of value. If you don't return a value from a function that is marked as returning one, you will get an error. Try entering this function, a bad version of `getAge` that does not return a value, in your playground file, and see what error you get:

```swift
func badGetAge(name: String) -> Int {
    print("\(name) is 29")
}
```

You'll see this error in your playground, which tells you that your function does not return a value, even though your promised Swift that it would:

![Function does not return a value](http://i.imgur.com/wec87HM.png)

### What About `print()`?

You may have noticed by now that you never use the return value of the `print()` function. That's because `print()` does not have a return value. It is called solely to print a string to the console, so its return value is irrelevant. `print()` never returns anything useful.

## Using a Function's Return Value

How do you actually _use_ a function's return value?

Remember when you declared constants and variables? You did something like this:

```swift
let friend = "Emily"
var favoriteBand = "Nirvana"
```

That is, you declared a constant or variable with a certain _name_ (like `friend` or `favoriteBand`) and set them to a _value_ (like "Emily" or "Nirvana"). So far, these values have been _literals_, which are actual values defined in code.

When declaring a constant or variable, though, you can assign to them the return value of a function, instead of using a literal value. For example, you could declare a variable like this:

```swift
let friend = "Emily"
var friendAge = getAge(friend)
```

Go ahead and add that to your playground. What did you do? First you declared a constant called `friend` that was set to the `String` "Emily". Then you declared a variable called `friendAge`. Unlike other variables you have declared, though, this variable is assigned the value returned when you call `getAge(friend)`.

Take a look at that second line again. You made a function call, `getAge(friend)`. Calling a function should be second nature to you now. This time, however, `getAge()` returns a value. You assign that value to `friendAge`.

Your playground's sidebar confirms that both variables have been assigned values:

![`friendAge` is 29](http://i.imgur.com/NuOwfB5.png)

`friendAge` is now assigned the value `29`. You can then pass that to `happyBirthday` to have your birthday greeting printed to the console. Try this out in your playground:

```swift
happyBirthday(friendAge)
```

You should see "Happy birthday #29!" in the console.

### Returning Other Types

Functions don't only have to return `Int`s. They can return any data type, including `String`s. After the `->` in the function declaration, you can write a different type than an `Int`. Can you guess how you'd write a function that returns a `String` instead of an `Int`? Here's a hint to try out in your playground:

```swift
func birthdayGreeting(age: Int) -> String {
    return "Happy birthday #\(age)!"
}
```

Trying calling `birthdayGreeting(30)` and see what happens!

## Functions Can Do Many Things

At this point, you may be asking, "Okay, great—so I can write a function that can print a string _or_ return a value, right?" In fact, your functions can do both. They can do many things. For example, they can print a string _and_ return a value.

A function's body is just a set of steps to accomplish some work, so it's pretty easy to both print and a string and return a value. You can probably already guess what that looks like. In case you need help, here's a hint (that you can try out in your playground), a function that takes in a friend's name and prints a birthday greeting _and_ returns your friend's age (remember, all your friends are 29):

```swift
func getAgeAndCongratulate(name: String) -> Int {
    let age = 29
    print("Happy \(age)th birthday, \(name)!")
    return age
}
```

You can call it to get your friend's name. You'll get the value `29` back from `getAgeAndCongratulate`, and you should also see the string "Happy 29th birthday, &lt;friend&gt;!" printed to the console. Go ahead and try it out in your playground:

```swift
let friend2 = "Pete"
var friend2Age = getAgeAndCongratulate(friend2)
```

Create some more functions that return values in your playground. Get comfortable with this concept—it'll become increasingly important as you learn more about Swift!

<a href='https://learn.co/lessons/FunctionReturn' data-visibility='hidden'>View this lesson on Learn.co</a>
