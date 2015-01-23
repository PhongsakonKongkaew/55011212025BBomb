// Playground - noun: a place where people can play
// Week2 c2 Username/password  55011212025

class login {
    
    let user:String
    let passwd:String
    let typeKey:Int
    
    
    var account:Dictionary<String,String> = ["Phongsakorn":"123456","Nattapol":"ABC123"]
    
    init(user:String,passwd:String,typeKey:Int){
        self.user = user
        self.passwd = passwd
        self.typeKey = typeKey
    }
    
    
    func Check() -> String{
        var result:String = ""
        if(typeKey==1){
            // login
        }
        else if(typeKey==2){
            // Add
            if let oldValue = account.updateValue(passwd, forKey: user){
                result = "Add \(user) complete"
            }
        }
        else if(typeKey==3){
            // Delete
            if let removedValue = account.removeValueForKey(user){
                result = "Delete \(user) complete"
            }
        }
        else if(typeKey==4){
            // update
            if let oldValue = account.updateValue(passwd, forKey: user){
                result = "Update \(user) complete"
            }
        }
        else{
            result = "Not Oftion to process"
        }
        
        for(key,values) in account{
            println(" \(key) : \(values)")
        }

        return result
    }
    
    /*func checkType() -> String {
    }*/
}

let test = login(user:"Phongsakorn",passwd:"12345689",typeKey:4)
// typeKey = 1 -> login , 2 -> Add , 3 -> Delete , 4 -> Update
test.Check()



