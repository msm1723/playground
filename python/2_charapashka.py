import turtle
import time

window = turtle.Screen ()
window.bgcolor("blue")

alice = turtle.Turtle()
alice.shape("circle")
alice.color("yellow")
alice.speed(5)

l=10

def draw_sq(l):
    for i in range(0,4):
        alice.forward(l)
        alice.left(90)

for i in range(0,333):
    draw_sq(l)
    l = l + 5
    alice.right(10)

time.sleep(500)
