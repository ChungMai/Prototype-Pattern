//: Playground - noun: a place where people can play

import UIKit

class AbstractCharacter{
    var  name : String?
    var mana : Int?
    var attack : Int?
    var defense : Int?
    
    init(name:String?, mana:Int?, attack:Int?, defense:Int?){
        self.name = name
        self.mana = mana
        self.attack = attack
        self.defense = defense
    }
    
    func clone() -> AbstractCharacter{
        return AbstractCharacter(name:self.name, mana:self.mana, attack:self.attack, defense:self.defense)
    }
}

class Character : AbstractCharacter{
    override init(name:String?, mana:Int?, attack:Int?, defense:Int?){
        super.init(name: name, mana: mana, attack: attack, defense: defense)
    }
}


// Simulate our client
// This is the card that we will copy
let raidLeader = Character(name: "Raid Leader", mana: 3, attack: 2, defense: 2)

// Now we use our faceless Manipulator card to clone the raidleader
let facelessManipulator = raidLeader.clone()

print("\(facelessManipulator.name!, facelessManipulator.mana!,facelessManipulator.attack!, facelessManipulator.defense!)")
