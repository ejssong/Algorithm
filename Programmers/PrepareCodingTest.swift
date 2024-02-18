//
//  PrepareCodingTest.swift
//  
//
//  Created by Eunjin Song on 2024/02/18.
//

import Foundation

import UIKit

func solution1(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var result : [Int] = []
    
    for i in photo {
        var value = 0
        for j in i {
            if let index = name.firstIndex(of: j) {
                value += yearning[index]
            }
        }
        result.append(value)
    }
    
    return result
}

//대충 만든 자판
func solution2(_ keymap:[String], _ targets:[String]) -> [Int] {
    
    var result = Array(repeating: 0, count: targets.count)
        
    var characterArray : [Character : Int] = [:]
    
    for i in keymap {
        for (key, value) in i.enumerated() {
            characterArray[value] = min(characterArray[value] ?? 100, key + 1)
        }
    }
    
    for (j, k) in targets.enumerated() {
        for (index, value) in k.enumerated() {
            if let a = characterArray[value] {
                result[j] += a
            }else {
                result[j] = -1
                break
            }
        }
    }
    return result
}


//print(solution2(["ABACD", "BCEFD"], ["ABCD","AABB"]))

// 둘만의 암호
func solution3(_ s:String, _ skip:String, _ index:Int) -> String {
    //알파벳 필터링 처리
    var array = "abcdefghijklmnopqrstuvwxyz".filter{ !skip.contains($0) }.map{ $0 }
    var result : String = ""
    
    for i in s {
        var index = (array.firstIndex(of: i) ?? 0) + index
        if index >= array.count {
            index = -(array.count - index) % array.count
        }
        result.append(array[index])
    }
    
    return result
}

//print(solution3("a", "bcdefghijklmnopxyz", 20))

//사과장수
func solution4(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    var array = score.sorted(by: >)
    var index = m - 1
    while array.count > index {
        result += array[index] * m
        index += m
    }
    return result
}

//print(solution4(4, 3,[4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]))


//기사단원의 무기 (약수 개수)
func solution6(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = [Int]()
    
    for number in 1...number{
        var count = 0
        
        for i in 1...Int(sqrt(Double(number))){
            if number % i == 0{
                if( i * i) == number{
                    count += 1
                }else{
                    count += 2
                }
            }
        }
        count = count > limit ? power : count
        result.append(count)
        
    }
    return result.reduce(0){$0 + $1}
}
//print(solution6(10, 3, 2))

//숫자 짝꿍
func solution7(_ X:String, _ Y:String) -> String {
    var xArray : [String: Int] = [:]
    var yArray : [String: Int] = [:]
    var value = [String]()
    
    for i in X.map({ String($0) }) {
        xArray[i] = (xArray[i] ?? 0)  + 1
    }
    
    for i in Y.map({ String($0) }) {
        yArray[i] = (yArray[i] ?? 0) + 1
    }
    
    for i in xArray.keys {
        value += Array(repeating: i, count: min(xArray[i] ?? 0, yArray[i] ?? 0))
    }
    
    var result = value.sorted(by: >).joined()
    
    if result.isEmpty {
        return "-1"
    }else if Int(result) == 0 {
        return "0"
    }
    return result
}

func solution8(_ X:String, _ Y:String) -> String {
    let arr1 = Array(X)
    let arr2 = Array(Y)
    let uniqueKey = Set(arr1).intersection(Set(arr2))
    var answer = ""
    for key in uniqueKey.sorted(by: >) {
        answer += String(repeating: key, count: min(arr1.filter{$0 == key}.count, arr2.filter{$0 == key}.count))
    }
    return answer == "" ? "-1" : ((uniqueKey.count == 1 && uniqueKey.contains("0")) ? "0" : answer)
}

//print(solution7("99999999999999999999", "99999999999999999999"))

//점프와 순간 이동
func solution9(_ n:Int) -> Int {
    //이동한 거리 역순으로 계산
    
    var ans = 0
    var value = n
    
    while value >= 1 {
        if value % 2 == 0 {
            value /= 2
        }else {
            value = value - 1
            ans += 1
        }
    }
    return ans
}

func solution10(_ n:Int) -> Int {
    if n == 1 { return 1 }
    if n % 2 == 0 { return solution10(n/2) }
    return solution10(n/2) + 1
}
 
//print(solution9(5000))


func solution11(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var count = number.reduce(0, +)
    var zip = Dictionary(uniqueKeysWithValues: zip(want, number))
    var totalArray = [Int]()
    
    for i in 0...discount.count - count {
        var mapping : [String: Int] = [:]
        mapping = discount[i..<i+count].reduce(into: [:]) { a, b in
            a[b, default: 0] += 1
        }
        
        if mapping.values.elementsEqual(zip.values) {
            totalArray.append(i)
        }
        
       
    }
    print(totalArray)
    return totalArray.count
}

//print(solution11(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]))


//print(solution11(["apple"], [10], ["banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana"]))

func solution12(_ num_list:[Int]) -> Int {
    //홀수
    var odd : String = num_list.filter{ $0 / 2 == 0 }.reduce(""){ "\($0)\($1)"}
    //짝수
    var even : String = num_list.filter{ $0 / 2 != 0 }.reduce(""){ "\($0)\($1)"}
    print("odd >> \(odd)")
    return (Int(odd) ?? 0)  + (Int(even) ?? 0)
}


func solution13(_ arr:[Int]) -> [Int] {
    var result = arr.map{
        if $0 % 2 == 0 && $0 >= 50 {
            return $0 / 2
        }else if $0 % 2 != 0 && $0 < 50 {
            return $0 * 2
        }else {
            return $0
        }
    }
    return result
}

//print(solution13([1, 2, 3, 100, 99, 98]))


func solution14(_ num_list:[Int], _ n:Int) -> [Int] {
    return num_list.enumerated().filter{ $0.offset > n }.map{ $0.offset }
}


//각 자리의 수에 제곱 후 1 -> 1, 그외엔 -1

func solution15(_ n:Int) -> Int {
    
    var current = n
    
    while current >= 10 {
        let reduce = String(current).compactMap({ $0.wholeNumberValue})
                                    .reduce(0){ ($0 * $0) + ($1 * $1) }
        current = reduce
    }
    
    return current == 1 ? 1 : -1
}
//print(solution15(13))

//k 번째 수
func solution16(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result = [Int]()
    
    for i in commands {
        
        let list = array[(i[0] - 1)...(i[1] - 1)].sorted()
        result.append(list[i[2] - 1])
    }
    
    return result
}

//print(solution16([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))

func solution17(_ numbers:[Int]) -> String {
    
    var result = String()
    var join = [Int]()
    let list = numbers.compactMap{ String($0).compactMap{($0.wholeNumberValue)} }
    
    for i in list {
        for j in i {
            join.append(j)
            
        }
    }
    join = join.sorted(by: >)
    result = join.reduce(""){"\($0)\($1)"}
    return result
}

func solution18(_ numbers:[Int]) -> String {
    
    var result = numbers.map({String($0)}).sorted(){
        "\($0)" + "\($1)" > "\($1)" + "\($0)"
    }.joined()
    
    if result.starts(with: "0") { result = "0" }
    return result
}

//print(solution18([6, 10, 2]))


func solution19(_ citations:[Int]) -> Int {
    var value = citations.sorted()
    var total = citations.count / 2
    var middle = value[total]
    
    return middle
}

//print(solution19([3, 0, 6, 1, 5]))

func solution20(_ clothes:[[String]]) -> Int {
    var result = 0
    var list = [String: Int]()

    for i in clothes {
        let type = i[1]
        list[type, default: 0] += 1
    }
   
    result =  list.reduce(1){ $0 * ($1.value + 1) } - 1
    return result
}


//print(solution20([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))

//print(solution20([["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]]))

func solution21(_ genres:[String], _ plays:[Int]) -> [Int] {
    
    var list = [String: [[Int]]]()
    var result = [Int]()
    
    for i in 0..<genres.count {
        let genre = genres[i], play = plays[i]
        list[genre, default: []].append([i, play])
    }
    
    let sortedDict = list.sorted { (first, second) -> Bool in
        return first.value.map{ $0[1] }.reduce(0, +) > second.value.map{ $0[1]}.reduce(0, +)
    }
    
    for i in sortedDict {
        var valueList = i.value.sorted{ (first, second) -> Bool in
            return first[1] == second[1] ? false : first[1] > second[1]
            
        }
        for (index, value) in valueList.enumerated() {
            if index > 1 {
                break
            }
            result.append(valueList[index][0])
        }
    }
    return result
}

//print(solution21(["classic", "pop", "classic", "classic", "pop"], [500, 2500, 150, 800, 2500]))

func solution22(_ sizes:[[Int]]) -> Int {
   
    var maxV = 0
    var minV = 0
  
    for i in sizes {
        
        maxV = max(maxV, i.max()!)
        minV = max(minV, i.min()!)
        print("max \(maxV)")
        print("min \(minV)\n")
    }
    
    return maxV * minV
}

//print(solution22([[60, 50], [30, 70], [60, 30], [80, 40]]))


func solution23(_ answers:[Int]) -> [Int] {
    var first = [1,2,3,4,5]
    var second = [2,1,2,3,2,4,2,5]
    var third = [3,3,1,1,2,2,4,4,5,5]
    
    var answer = [0, 0, 0]
    for (i, j) in answers.enumerated() {
        
        answer[0] += (j == first[i % first.count]) ? 1 : 0
        answer[1] += (j == second[i % second.count]) ? 1 : 0
        answer[2] += (j == third[i % third.count]) ? 1 : 0
    }
    
    var result = [Int]()
    let maxValue = answer.max()
    
    for (i, j) in answer.enumerated() {
        if j == maxValue {
            result.append(i + 1)
        }
    }
    return result

}

//print(solution23([1,3,2,4,2]))


//소수찾기 & 순열
func solution24(_ numbers:String) -> Int {
    let list = numbers.map{ String($0) }
    var result = [Int]()
    
    for i in 0...numbers.count {
        let nums = permutation(list, i)
        result += nums
    }
    
    return result.count
}
//배열 n 으로 조합 할 수 있는  value 개수  => nP(value)
func permutation(_ n: [String], _ value: Int) -> [Int] {
    var result: [Int] = []
    var isVisited: [Bool] = Array(repeating: false, count: n.count)
    
    func permute(_ current: String) {
        if current.count == value {
            let number = Int(current) ?? 0
            if !current.hasPrefix("0") && !result.contains(number) && isPrime(number) {
                result.append(number)
            }
            return
        }
        
        for i in 0..<n.count {
            if isVisited[i] { continue }
            isVisited[i] = true
            permute(current + n[i])
            isVisited[i] = false
        }
    }
    
    permute("")
    
    return result
}


//소수 찾기
func isPrime(_ number: Int) -> Bool {
    if number < 2 { return false }
    
    for i in 2 ..< Int(sqrt(Double(number)) + 1)  {
        if number % i == 0 { return false }
    }
    return true
}

struct Queue<T> {
    private var queue: [T] = []
    
    public var count: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }
}

//여행 경로 (BFS) => Queue, LinkedList
func solution25(_ tickets:[[String]]) -> [String] {
    //도착지 기준으로 알파벳 정렬
    let tickets = tickets.sorted{ $0[1] < $1[1] }
    //티켓 사용 여부 등록
    var isVisited = [Bool](repeating: false, count: tickets.count)
    
    var result = [String]()
    
    func dfs(_ starts : String) {
        if result.count == tickets.count {
            result.append(starts)
        }
        
        for i in 0..<tickets.count {
            if tickets[i][0] == starts && !isVisited[i] {
                isVisited[i] = true
                result.append(starts)
                dfs(tickets[i][1])
                
                if result.count == tickets.count + 1 {
                    return
                }
                result.removeLast()
                isVisited[i] = false
            }
        }
    }
    
    dfs("ICN")
    
    return result
}

print(solution25([["ICN", "JFK"], ["HND", "IAD"], ["JFK", "HND"]]))
