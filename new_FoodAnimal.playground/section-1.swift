// 55011212025 Week3 food Animal
//  Food Animal
class food_animal{
    
    
    
    init(key_animal:String){
        self.key_animal = key_animal
    }
    
    ////////////////// Dictionary ////////////////////
    
    let key_animal:String
    var animal_food: Dictionary<String,String> = ["Ant":"Sugar","Bat":"Fruit","Cat":"Fish","Dog":"Broke"]

    func show_food() -> String{
        var resultF:String = ""
        
        for(key,values) in animal_food{
            if(key_animal==key){
                resultF = values
                break;
            }
        }
        
        if(resultF==""){
            println("Not have Animal")
            resultF = "Not have Animal"
        }
        else{
            println("\(key_animal) eat \(resultF)")
        }
        
        return resultF
    }
    
    /////////////////  Array /////////////////
    
    let animal:[String] = ["Ant","Bat","Cat","Dog"]
    let food : [String] = ["Sugar","Fruit","Fish","Broke"]
    
    func show_food2() ->String{
        var resultF2: String = ""
        for(var i=0;i < animal.count;i++){
            if(key_animal==animal[i]){
                resultF2 = food[i];
                break
            }
        }
        
        if(resultF2==""){
            resultF2 = "Not have Animal eat food"
            println("Not have Animal eat food")
        }
        else{
            println("\(key_animal) eat \(resultF2)")
        }
        return resultF2
    }
}

let f_a = food_animal(key_animal: "A") // ใส่ชื่ิอ สัตว์ที่ต้องการ

// Dictionary
f_a.show_food()

// Array 
f_a.show_food2()

