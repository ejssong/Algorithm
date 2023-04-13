import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int{
    var answer:Int = 0
    var totalPrice: Int = 0
    
    for i in 1...count {
        totalPrice += (price * i)
    }
    
    answer = totalPrice - money
    
    return answer < 0 ? 0 : answer
}
