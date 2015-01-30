// 55011212025 Week3 Calculator
///////////////////////  Calculator  ////////////////////////

class calculator {
    
    let num1:Double
    let num2:Double
    let type:Int
    init(num1:Double,num2:Double,type:Int){
        self.num1 = num1
        self.num2 = num2
        self.type = type
    }
    
    func calc() ->Double {
        var result:Double = 0
        if(type==1){
            result = num1+num2
        }
        else if(type==2){
            result = num1-num2
        }
        else if(type==3){
            result = num1*num2
        }
        else if(type==4){
            result = num1/num2
        }
        else if(type==5){
            result = num1%num2
        }
        
        return result
    }
}

let c = calculator(num1: 20, num2: 2, type: 4)  // 1 = Add, 2 = Delete, 3 = Mul, 4 = Div, 5 = Mod
c.calc()

