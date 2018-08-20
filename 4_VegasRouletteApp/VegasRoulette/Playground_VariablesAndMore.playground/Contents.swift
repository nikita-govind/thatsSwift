//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str);

// Types: Int - Float - Double - Bool - String
let wholeNos : Int = 10;
let decimalShort : Float = 1.2;
let decimalLongPrecision : Double = 1.242556464;
let boolean : Bool = true;
let text : String = "Hi";

// Variables
var myAge : Int = 32;
myAge = 50;

// Constants
let myAge2 : Int = 100;
// WRONG - myAge2 = 200;
let myAge3 =  myAge2 + 100;
let myName : String = "Nikita"
let myFullName = myName + "Govind"; //OR let myFullName = "(\(myName) Govind)";
// WRONG - let myAge3 =  myAge2 + "Hello"
// But can explicitely convert any data type to String
let nameAndAge = "(\(myName), \(myAge))";




