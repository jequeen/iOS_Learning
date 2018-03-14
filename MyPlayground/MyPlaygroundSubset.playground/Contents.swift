//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Given a set N and an int S, does any non-empty subset sum to in S

let sortedSet: [Int] = [-1,1,3,5,6,7]
let S = 11

let smallest = sortedSet[0]

//is S is equall to the smallest in the set and non negative then answer no
if (smallest==S && smallest>=0){
    print ("no")
}else if(sortedSet[sortedSet.endIndex-1] < S){
    print ("yes")
    
}
