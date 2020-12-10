//: [Previous](@previous) / [Next](@next)
//: # Tortoise Examples
//:
//: The `CanvasGraphics` framework also allows you to draw using a "LOGO turtle" metaphor.
//:
//: [Documentation for the Tortoise abstraction](http://russellgordon.ca/CanvasGraphics/Documentation/Classes/Tortoise.html) is available.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 500
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 21 to 29 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas


canvas.highPerformance = true
/*:
 ## Tortoise class
 
 To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
 */

// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

func drawArrow() {
//    t.drawSelf()

    t.penDown()
    t.forward(steps: 100)
    t.left(by: 90)
    t.forward(steps: 40)
    t.right(by: 120)
    t.forward(steps: 125)
    t.right(by: 120)
    t.forward(steps: 125)
    t.right(by: 120)
    t.forward(steps: 40)
    t.left(by: 90)
    t.forward(steps: 100)
    t.right(by: 90)
    t.forward(steps: 45)
    t.right(by: 90)
    
//    t.drawSelf()
}
// remove this section
// t.setY(to: 300)
// remove above this section

for _ in 0...5 {
drawArrow()

t.penUp()
t.forward(steps: 209 )

drawArrow()

t.penUp()
t.forward(steps: 209 )

drawArrow()

t.penUp()
t.left(by: 180)
t.forward(steps: 418)
t.right(by: 90)
t.forward(steps: 125)
t.right(by: 90)
}


canvas.highPerformance = false
t.penUp()
t.forward(steps: 1)
t.copySVGToClipboard()
