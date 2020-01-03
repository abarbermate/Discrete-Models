︠a22c51c3-0d80-40b1-821e-d0191a0c1c9bs︠
def iNeedTheMarkFive(text, codetable):
    entroph = entrophy(text)+1;
    avgLen = averageWordLength(codetable);
    #return ((entroph) >= (avgLen))
    print("Entrophy: %.2f" % entroph)
    print("Average word length: %.2f" % avgLen)
    if (entroph >= avgLen):
        print("The code is optimal.")
    else:
        print("The code is not optimal.")

def entrophy(s):
    r = {}
    n = len(s)
    for i in xrange(n):
        if r.has_key(s[i]):
            r[s[i]] += 1
        else:
            r[s[i]] = 1
    return  -sum([x*log(x/n,2) for x in r.values()])/n

def averageWordLength(list):
    length = 0;
    for x in list:
        length += len(x)
    length /= len(list)
    return length

iNeedTheMarkFive("abc", {'0','110','111'});
iNeedTheMarkFive("abc", {'0','1','10'});
iNeedTheMarkFive("abc", {'00','01','10'});
iNeedTheMarkFive("abc", {'00','10','110'});
iNeedTheMarkFive("abc", {'00','010','110'});
iNeedTheMarkFive("abca", {'000','100','110'});
iNeedTheMarkFive("abc", {'000','110','111'});
︡aece9760-a961-4096-b1d4-54a44dc5138c︡{"stdout":"Entrophy: 2.58\nAverage word length: 2.33\nThe code is optimal.\n"}︡{"stdout":"Entrophy: 2.58\nAverage word length: 1.33\nThe code is optimal.\n"}︡{"stdout":"Entrophy: 2.58\nAverage word length: 2.00\nThe code is optimal.\n"}︡{"stdout":"Entrophy: 2.58\nAverage word length: 2.33\nThe code is optimal.\n"}︡{"stdout":"Entrophy: 2.58\nAverage word length: 2.67\nThe code is not optimal.\n"}︡{"stdout":"Entrophy: 2.50\nAverage word length: 3.00\nThe code is not optimal.\n"}︡{"stdout":"Entrophy: 2.58\nAverage word length: 3.00\nThe code is not optimal.\n"}︡{"done":true}









