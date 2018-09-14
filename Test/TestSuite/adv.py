from string import Template

class MyTemplate(Template):
    delimiter =  "#"
def Main():
    cart = []
    cart.append(dict(item="Coke", price=8, qty=2))
    cart.append(dict(item="Cake", price=12, qty=3))
    cart.append(dict(item="Cake", price=32, qty=4))

    t = MyTemplate("#qty x #item = #price")
    total = 0
    print "Cart:"
    for data in cart:
        print t.substitute(data)
        total += data["price"]
    print "Total: " + str(total)



    text = [s.decode('utf-8')[:-1] for s in open(ur'/Users/irinachemisova/Desktop/pr.txt')]
    print text[0]
    for i in text:
        print i

    lst = [1,5,6,7,9,2,4,6,8]
    [t for t in lst if i>=5]

    r = [x * x for x in range(10) if x % 2 == 0]
    print r

    q = {x * x for x in range(10) if x % 2 == 0}
    print q

    k = {x: x * x for x in range(10) if x % 2 == 0}
    print k

    s = {x + y for x in 'ab' for y in 'cd'}
    print s

    w = {x + y: (ord(x), ord(y)) for x in 'ab' for y in 'cd'}
    print w

    d = {k * 2 for k in ['spam', 'ham', 'scrum', 'sausage'] if k[0] == 's'}
    print d
if __name__=="__main__":
    Main()

