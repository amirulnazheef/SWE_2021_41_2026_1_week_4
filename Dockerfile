FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3-pip

CMD ["python3", "-c", "\
def isHappy(n):\n\
  temp = n\n\
  while temp >= 10:\n\
    sum = 0\n\
    while temp > 0:\n\
      digit = temp % 10\n\
      sum += (digit ** 2)\n\
      temp //= 10\n\
    temp = sum\n\
  if temp == 1:\n\
    return True\n\
  else:\n\
    return False\n\
# Testcase 1\n\
print(isHappy(19))\n\
# Testcase 2\n\
print(isHappy(2))"]