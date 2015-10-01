//: The Purpose of this document is to show OOP design and to show objects were manipulated before OOP became popular.



/**
In the beginning there were structs that could only hold objects but no functions
*/
struct Person {
    var name:String?
    var age:Int?
}

/**
This is an example of how we would create an object and initialized its properties.  Normally we would just do Person(name, age) but thats an Object oriented paradigm.  In this case we just call a function that creates the object and then fills in the properties
*/
func initializePerson(name name:String, age:Int) -> Person {
    var this:Person = Person()
    this.name = name
    this.age = age
    return this
}

/**
To get the name property of a Person object, through a function we first need to pass in the Person object that we want to extract it from.  

In OOP we would do p.getName() but before OOP we would pass it in as the first argument.  like this getName(p)
*/
func getName(inout this:Person) -> String? {
    return this.name
}

/**
OOP way:
p.setName("Bob")

old way:
setName(p, "Bob")
*/
func setName(inout this:Person, newName:String) {
    this.name = newName
}

/**
OOP way:
p.getAge()

old way:
setAge(p, 24)
*/
func getAge(inout this:Person) -> Int? {
    return this.age
}

/**
OOP way:
p.setName("Bob")

old way:
setName(p, "Bob")
*/
func setAge(inout this:Person, newAge:Int) {
    this.age = newAge
}

// Example usage
var k = initializePerson(name: "Derrick", age: 26)
getName(&k)
setName(&k, newName: "Barbie")
getAge(&k)
setAge(&k, newAge: 98)



/**
The above was how Structs and Functions would co-exist.  Below is the OOP version.  All relevant functions would be a part of the class definition.
*/
class Hito {
    var name:String
    var age:Int
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }

    func getName() -> String {
        return self.name
    }
    
    func setName(newName:String) {
        self.name = newName
    }
    
    func getAge() -> Int {
        return self.age
    }

    
    func setAge(newAge:Int) {
        self.age = newAge
    }
    
}

// Example usage
var h = Hito(name: "Kiba", age: 22)
h.getName()
h.setName("Mari")
h.getAge()
h.setAge(12)
