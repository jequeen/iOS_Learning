//Joshua Evan Queen

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
    
    while currMax! >= 1{
        for (_,weight) in weightsDictionary{
            if ((weight)<currMax!){
                print(" ", terminator:"")
            }
            else{
                print ("*", terminator:"")
            }
        }
        currMax = currMax!.unsafeSubtracting(1)
        print()
    }
    let lazyMapCollection = weightsDictionary.keys
    let stringArray = Array(lazyMapCollection.map { String($0) })
    print(stringArray.joined(separator: ""))
}

printHistogram(arrayVals: [3, 4, 2, 1, 6, 6, 4, 4])


