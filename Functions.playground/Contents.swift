

func printAge(name: String) {
    print("\(name) is 29")
}

printAge(name: "Adam")

func happyBirthday(age: Int) {
    print("Happy birthday #\(age)!")
}

happyBirthday(age: 28)

func getAge(name: String) -> Int {
    return 34
}

// Uncomment to see the error
/*
func badGetAge(name: String) -> Int {
    print("\(name) is 29")
}
*/

let friend = "John"
var friendAge = getAge(name: friend)
happyBirthday(age: friendAge)


func birthdayTester(oldness: Int) -> String {
    return "Happy \(oldness), John!"
}

birthdayTester(oldness: 34)



func birthdayGreeting(age: Int) -> String {
    return "Happy birthday #\(age)!"
}

var greeting = birthdayGreeting(age: 30)
print(greeting)


func getAgeAndCongratulate(name: String) -> Int {
    let age = 29
    print("Happy \(age)th birthday, \(name)!")
    return age
}

let friend2 = "Pete"
var friend2Age = getAgeAndCongratulate(name: friend2)
