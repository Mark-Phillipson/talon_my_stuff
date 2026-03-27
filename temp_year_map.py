words={0:'zero',1:'one',2:'two',3:'three',4:'four',5:'five',6:'six',7:'seven',8:'eight',9:'nine',10:'ten',11:'eleven',12:'twelve',13:'thirteen',14:'fourteen',15:'fifteen',16:'sixteen',17:'seventeen',18:'eighteen',19:'nineteen',20:'twenty',30:'thirty',40:'forty',50:'fifty',60:'sixty',70:'seventy',80:'eighty',90:'ninety'}

def phrase_year(y):
    if 1964 <= y <= 1999:
        century='nineteen'
        n=y-1900
        if n < 20:
            return f'{century} {words[n]}'
        tens=(n//10)*10
        unit=n%10
        if unit==0:
            return f'{century} {words[tens]}'
        return f'{century} {words[tens]} {words[unit]}'
    if 2000 <= y <= 2066:
        if y==2000:
            return 'two thousand'
        if 2001<=y<=2009:
            return f'two thousand {words[y%10]}'
        if 2010<=y<=2019:
            return f'twenty {words[y%100]}'
        if 2020<=y<=2029:
            n=y-2020
            if n==0:
                return 'twenty twenty'
            return f'twenty twenty {words[n]}'
        n=y-2000
        tens=n//10
        unit=n%10
        if unit==0:
            return f'twenty {words[10*tens]}'
        if tens==2:
            return f'twenty {words[10*tens]} {words[unit]}'
        return f'twenty {words[10*tens]} {words[unit]}'
    raise ValueError(y)

for y in range(1964, 2067):
    p=phrase_year(y)
    print(f'"{p}": "{y}",')
