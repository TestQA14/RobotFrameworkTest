import random
import string
import Variables.py

def random_string(prefix, maxlen):
    symbols = string.ascii_letters + string.digits + string.punctuation + " "*10
    return prefix + "".join([random.choice(symbols) for i in range(random.randrange(maxlen))])

Variables.FB_FirstName = random_string("name", 10)