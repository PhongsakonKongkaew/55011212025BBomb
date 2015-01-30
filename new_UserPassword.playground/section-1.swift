// 55011212025 Week3 UserPassword

class UserPassword{
    
    let user:String
    let password:String
    let type:Int
    var accoount:Dictionary<String,String> = ["AAA":"123456","BBB":"123456"]
    init(user:String,password :String,type : Int){
        self.user = user
        self.password = password
        self.type = type
    }
    
    func option_Check() ->String{
        
        var resultU : String = ""
        
        if(type==1){
            // login
            for (key,values) in accoount{
                if(user==key && password==values){
                    resultU = "User : \(key)   password : \(values) correct"
                    break
                }
            }
            
        }
        else if(type==2){
            // Add
            if let a = accoount.updateValue(password, forKey: user){
                //accoount[user] = password
                resultU = "Add \(user) Complete"
            }
        }
        else if(type==3){
            // Delete
            if let d = accoount.removeValueForKey(user){
               resultU = "Delete \(user) Complete"
            }
            
        }
        else if(type==4){
            // Update
            if let uu = accoount.updateValue(password, forKey: user){
                resultU = "update \(user) Complete"
            }
        }
        else{
            resultU = "Not have option"
        }
        
        for (key,values) in accoount{
            println("User : \(key) Password : \(values)")
        }
        
        return resultU
    }
    
}

let u = UserPassword(user:"kkkk",password:"1234",type:2) // 1 = login,2 = Add, 3 = Delete, 4 = Update

u.option_Check()
