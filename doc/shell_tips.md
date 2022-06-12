## 1. Variable
- Set shell exec script to a variable
```
VAR1 = $(ls -lh)
VAR2 = `ls -lh`
```

## 2. IF-ELSE
```
if <expression>; then
    <command>
elif <expression>; then
    <command>
else <expression>; then
    <command>
fi

```

## 3. expression 
```shell
#1. equals
VAR1 == "a"
#2. and -> && , or -> ||
(exist 0) && echo True
#3. symbol “-eq”, “-ne”, “-lt”, “-le”, “-gt”, or “-ge”.

# 4. [] and [[]]
#TODO 
```