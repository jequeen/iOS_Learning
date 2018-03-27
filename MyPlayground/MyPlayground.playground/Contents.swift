//: Playground - noun: a place where people can play

import UIKit

func printHistogram(arrayVals: [Int]) {
    var weightsDictionary = [Int: Int]()

    for num in arrayVals{
        if weightsDictionary.keys.contains(num){
            weightsDictionary.updateValue((weightsDictionary[num]?.unsafeAdding(1))!, forKey: num)
        }
        else{
            weightsDictionary.updateValue(1, forKey: num)
        }
    }
    print(weightsDictionary)
    var currMax = weightsDictionary.values.max()
   
    
    
    for (_,weight) in weightsDictionary{
        if ((weight)<currMax!){
            print(" ", terminator:"")
        }
        else if ((weight)==currMax!){
            print ("*", separator:"")
        }else{
            
            
        }
    }
        print("\n")
       currMax!-1
    }


printHistogram(arrayVals: [3, 4, 2, 1, 6, 6, 4, 4])




//Input: [3, 4, 2, 1, 6, 6, 4, 4]
//Output:
// *
// *  *
//*****
//34216

