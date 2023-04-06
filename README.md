# Landmarks (SwiftUI Basics Example)

## Data Types

### Value Types

A **value type** is a data type that is copied (i.e. a new instance is instantiated) when it is assigned to a new variable or is passed as an argument to a function.

This means that many changes made to any **value type** copies are not reflected onto the original.

Some examples of **value types** include `Int`, `Float`, `Double`, `Bool`, `Character`, `String`, `Array`, `Dictionary`, `Set`, etc.

### References Types

A **reference type** is a data type that when assigned to a new variable or is passed as an argument to a function references (i.e. points to) the original instantiated object.

## Classes

## Structures

A **strucutre** is a value type 

Similar to classes, structures can have properties, methods, and initialisers. The difference being that a **structure** is a value type.

```swift
struct Person {
    var name: String
    var age: Int
    
    func sayHello() {
        print("Hello, my name is \(name) and I'm \(age) years old.")
    }
}
```

## Views

## 

