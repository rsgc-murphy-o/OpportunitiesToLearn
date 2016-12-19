



import SpriteKit
import PlaygroundSupport

let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

var scene = SKScene(size: frame.size)

let spaceShip = SKSpriteNode(imageNamed: "Spaceship")
spaceShip.position = midPoint
spaceShip.setScale(1.0)
scene.addChild(spaceShip)

// create view 

let view = SKView(frame: frame)
view.showsFPS = true
view.showsNodeCount = true

//Present the scene we just configures
view.presentScene(scene)

//show the view on the live view area at right
PlaygroundPage.current.liveView = view
//: [Next](@next)
