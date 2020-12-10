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

/*:
## Tortoise class

To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
*/

// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

func findHypotenuse(a: Int, b: Int ) -> Int {
    return Int(sqrt(Double(a*a + b*b)))
}

t.penUp()
t.forward(steps: 150)
t.left(by: 90)
t.forward(steps: 300)
t.right(by: 90)
t.penDown()
t.forward(steps: 100)
t.left(by: 90)
t.forward(steps: 100)
t.right(by: 45)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.right(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50)+30)
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50)+30)
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.left(by: 45)
t.forward(steps: 100)
t.right(by: 90)
t.forward(steps: 100)
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.right(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50+36))
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50+36))
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.right(by: 135)
t.forward(steps: 100)
t.left(by: 90)
t.forward(steps: 100)
t.right(by: 45)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.right(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50)+30)
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50)+30)
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.left(by: 45)
t.forward(steps: 100)
t.right(by: 90)
t.forward(steps: 100)
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.right(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50)+29)
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50)+29)
t.left(by: 135)
t.forward(steps: findHypotenuse(a: 50, b: 50))




















t.drawSelf()
