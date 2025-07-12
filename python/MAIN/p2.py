# Reverse words in a sentence

def rev_sen(s):
    w = s.split()
    w.reverse()
    return ' '.join(w)

# test the function

test_string = input()
print(rev_sen(test_string))