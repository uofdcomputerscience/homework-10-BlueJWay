import Foundation

// Implement an Error type. Make sure it has at least two values.
enum badStringSize: Error{
    case stringTooShort
    case stringTooLong
}

enum Result<Value>{
    case success(Value)
    case failure(Error)
}

// Implement a function that returns a Result of string or your error type

func bigEnough(word: String) throws -> String {
    //result = Result<String>
    if(word.count > 4){
        //result.failure(badStringSize.stringTooLong)
        throw badStringSize.stringTooLong
    }else if(word.count < 4){
        throw badStringSize.stringTooShort
    }else{
        print("Success: word is of length 4")
        return word
    }
}

// Call your function in a way that will return an error result, and handle that error.
do{
    try bigEnough(word: "bat")
} catch let error {
    print("Error is \(error)")
}

// Call your function in a way that will return a success result, and handle the value.
do{
    try! bigEnough(word: "words")
}
