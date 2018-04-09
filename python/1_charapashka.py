import turtle
import time

def draw_square(draw_sq):
    for i in range(0,4):
        draw_sq.forward(200)
        draw_sq.left(90)

def draw_triangel(draw_tr):
        draw_tr.forward(200)
        draw_tr.left(120)
        draw_tr.forward(200)
        draw_tr.left(120)
        draw_tr.forward(200)

def wdw():
    window = turtle.Screen ()
    window.bgcolor("blue")

brad = turtle.Turtle()
brad.shape("square")
brad.color("yellow")
brad.speed(1000)

alice = turtle.Turtle()
alice.shape("circle")
alice.color("red")
alice.speed(1000)

bob = turtle.Turtle()
bob.shape("triangle")
bob.color("green")
bob.speed(1000)

wdw()

for w in range(0,72):
    draw_triangel(bob)
    bob.right(5)

for i in range(0,72):
    draw_square(brad)
    brad.left(5)

for x in range(0,72):
    alice.circle(180)
    alice.right(5)

time.sleep(500)
