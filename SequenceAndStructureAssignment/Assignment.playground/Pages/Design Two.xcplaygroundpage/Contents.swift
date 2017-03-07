/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Two
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Draw Rectangles
canvas.drawShapesWithFill = false
//make the origin in the middle
canvas.translate(byX: 250, byY: 250)

for x in stride(from: 0, through: 500, by: 3){
    let rand = random(from: 0, toButNotIncluding: 250)
    canvas.rotate(by: 10)
    canvas.borderColor = Color.init(hue: Float(rand), saturation: 100, brightness: 100, alpha: 75)
    canvas.drawRectangle(centreX: 0, centreY: 0, width: x, height: x, borderWidth: 1)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
