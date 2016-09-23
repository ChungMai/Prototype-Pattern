## Prototype Pattern in the swift
 
  * This pattern allow you to create new object by duplicated the existing objects. This pattern has the cloning capability.
  
## When we use this pattern
  * This pattern used when you need to create a instance without knowing the hierachy of the class.
  * When creation of the object directly is costly. For example, an object is created after a costly database operation 
  and you want to cache this object and returns its clone on the next request.
  
## Implementation

* Create **AbstractPrototype**: This is abstract class that can duplicase itself. This class contains a cloning method called 
*Clone()*.

```swift
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
```

* Create *ConcretePrototype*: This is class that inherit from AbstractClass. It define a prototype and have also 
its cloning method.

```swift
class Character : AbstractCharacter{
    override init(name:String?, mana:Int?, attack:Int?, defense:Int?){
        super.init(name: name, mana: mana, attack: attack, defense: defense)
    }
}
```

## Usage
  *Create the object:*
```swift
  let raidLeader = Character(name: "Raid Leader", mana: 3, attack: 2, defense: 2)
```
  
  *Clone:*
```swift
  let facelessManipulator = raidLeader.clone()
``` 

  *Check value:*
```swift
  print("\(facelessManipulator.name!, facelessManipulator.mana!,facelessManipulator.attack!, facelessManipulator.defense!)")
``` 

