def validate(number):
  if(number>=0 and number<=10):
    return "verdadero"
  else:
    return "falso"

number = int(input())
print(validate(number))
