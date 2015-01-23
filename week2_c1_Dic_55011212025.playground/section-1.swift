// Week2 c2 Dictionary Pet eat food

class pet_Dic {

    var type_pet : Dictionary<String,String> = ["Ant":"Sugar","Bat":"Friut","Cat":"Fish","Dog":"Broke"]
    let key2 : String
   
    
    init(keyP:String){
        self.key2 = keyP
    }
    
    func food() -> String{
        var resultP : String = ""
        for(key,values) in type_pet{
            if(key==key2){
                resultP = values
                println("\(key2) eat \(resultP)")
                break
            }
        }
        return resultP
    }
}

let pet_food = pet_Dic(keyP:"Ant")
pet_food.food()
