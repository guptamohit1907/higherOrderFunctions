//
//  ViewController.swift
//  higherorderfunctions
//
//  Created by Acxiom Consulting on 06/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        map()
        filter()
        reduce()
        sort()
        flatMap()
        chaining()
    }
    //MARK:- MAP
    func map(){
        let numberArray = [1,2,3,4,5]
        var emptyArray : [Int] = []
        for number in numberArray{
            emptyArray.append(number * 2)
        }
        print("Array",emptyArray)
        
        let m1 = numberArray.map { (value : Int) -> Int in
            return value * 2
         }
        print("M1",m1)
        
        let m2 = numberArray.map {(value : Int) in
            return value * 2
        }
        print("M2",m2)
        
        let m3 = numberArray.map{(value) in
            return value * 2
        }
        print("M3",m3)
        
        let m4 = numberArray.map { $0 * 2}
        print("M4",m4)
    }
    //MARK:- FILTER
    func filter(){
        let numberFilter = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
        var arr1 : [Int] = []
        for number in numberFilter{
            if number % 2 == 0{
                arr1.append(number)
            }
        }
        print("Arr1",arr1)
        let filterData = numberFilter.filter{ $0 % 2 == 0}
        print("FilterData",filterData)
    }
    //MARK:- REDUCE
    func reduce(){
        let oneTwo = [1,2,3,4,5]
        var sum : Int = 0
        for num in oneTwo{
            sum += num
        }
        print("Sum == ", sum)
        
        let sumReduce = oneTwo.reduce(0, {$0 + $1})
        let sumReduce1 = oneTwo.reduce(0, +)
        print("SumReduce",sumReduce)
        print("SumReduce1",sumReduce1)
        
        let strArr = ["One", "Two"].reduce("",{$0 + $1})
        print("StrArray", strArr)
    }
    
    //MARK:- SORT
    func sort(){
        let sortArr = [1,2,3,4,5]
        let arrSort = sortArr.sorted{$0 > $1}
        print(arrSort)
    }
    
    //MARK:- FLATMAP
    func flatMap(){
        let arrayFlat = [[11,12,13],[14,15,16]]
        var mapArr : [Int] = []
        for arr in arrayFlat{
            mapArr += arr
        }
        print("MapArray",mapArr)
        
        let f1 = arrayFlat.flatMap{ $0 }
        print("F1",f1)
        
        let people = ["Yogesh",nil,"Yogesh1",nil,"Yogesh2"]
        let p1 = people.compactMap{ $0 }
        print("P1", p1)
    }
    //MARK:- CHAINING
    func chaining(){
        let arrInArray = [[11,12,13],[14,15,16]]
        let arr123 = arrInArray.flatMap{ $0 }
        print("Arr123",arr123)
        
        let arr1234 = arrInArray.flatMap { $0 }.filter { $0 % 2 == 0}
        print(arr1234)
        
        let arr12345 = arrInArray.flatMap { $0 }.filter { $0 % 2 == 0}.map{ $0 * $0 }
        print(arr12345)

    }
}

