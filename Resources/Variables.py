import random



random_numbers = [random.randint(0, 101) for _ in range(10)]

print(random_numbers)

sum_random_numbers = (sum(random_numbers))

print(sum(random_numbers)) 



for random_number in range(1, 10):
    if random_number % 3 ==0:
        print("FOO")
    elif random_number % 5 == 0:
        print("BAR")  
    elif random_number % 3 == 0 and random_number % 5 == 0:
        print("FOOBAR")     


