



import SpriteKit
import PlaygroundSupport

let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

var scene = SKScene(size: frame.size)

let spaceShip = SKSpriteNode(imageNamed: "Spaceship")
spaceShip.position = midPoint
spaceShip.setScale(1.0)
scene.addChild(spaceShip)


let actionMoveUp = SKAction.moveBy(x: 0, y: 40, duration: 3.00)
let actionMoveDown = SKAction.moveBy(x: 0, y: -40, duration: 5.00)
let actionSequence = SKAction.sequence([actionMoveUp, actionMoveDown])
let actionRepeat = SKAction.repeatForever(actionSequence)
spaceShip.run(actionRepeat)
let actionRotate = SKAction.rotate(byAngle: -CGFloat.pi/2, duration: 5)
spaceShip.run(actionRotate)
spaceShip.zPosition = 10  // Ensure sprite is above background



let emitter = SKEmitterNode()
emitter.particleLifetime = 40
emitter.particleBlendMode = SKBlendMode.alpha
emitter.particleBirthRate = 3
emitter.particleSize = CGSize(width: 4,height: 4)
emitter.particleColor = SKColor(red: 100, green: 100, blue: 255, alpha: 1)
emitter.position = CGPoint(x:frame.size.width,y:midPoint.y)
emitter.particleSpeed = 16
emitter.particleSpeedRange = 100
emitter.particlePositionRange = CGVector(dx: 0, dy: frame.size.height)
emitter.emissionAngle = 3.14
emitter.advanceSimulationTime(40)
emitter.particleAlpha = 0.5
emitter.particleAlphaRange = 0.5
scene.addChild(emitter)


// create view
let view = SKView(frame: frame)
view.showsFPS = true
view.showsNodeCount = true

//Present the scene we just configures
view.presentScene(scene)

//show the view on the live view area at right
PlaygroundPage.current.liveView = view
//: [Next](@next)
