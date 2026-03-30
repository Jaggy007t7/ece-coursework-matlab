# Trapezium rule for integration;
def equation(x):
    y=(x**3)-3*x-3
    return y

# limits of integral;
a = 1;
b = 0;


# NO. of steps;
number = input("Enter the no. of steps: ");
n = int(number);

# Step size;
h = (a-b)/n;

sum = equation(a)+equation(b);
counter=0;
i=0
while(i<n-1):
    counter = counter+h
    cal = equation(counter)
    sum = sum+2*cal
    i=i+1
    
result = (h/2)*sum;
print(result);

    
    


