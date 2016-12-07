# Shell Script Starter

## Forked and Run in the background 
```bash
jobs
bg 
fg
./script.sh &
```

## Fatorial 
Example: f 1 1 30
```bash
f() { for a in $(seq $*); do echo "f($a) = $(seq -s* $a|bc)";  done; }
```

## Pipe 
```bash
ls  | grep --color Pr
```

## Echo 
```bash
echo "hi!" 
```

```bash
echo -e "hi! \n how are you?" 
```


## Printf
```bash
printf "hi!" 
```

## Variables
```bash
name="pedro"
echo $name
```

## Read
```bash
read -p "How old are you?  > "  age
echo $age
```

Hidden command out
```bash
read -p -s "What is your password?  > "  pass
echo $pass
```

Timeout
```bash
read -p -t3 "What is your password?  > "  pass
echo $pass
```
Script example
```bash
#!/bin/bash

echo
echo "Script name is $0"
echo

echo
echo "First argument $1"
echo "Second argument $2"
echo

echo
echo "All arguments $*"
echo

exit;
```

## Cat
```bash
cat file.sh
cat -n file.sh # Add number line
```

## Head
```bash
head file.sh
head -n 02 file.sh # two lines
head -c 2 file.sh # two characters
```

## Head
```bash
tail file.sh
tail -n 02 file.sh # two lines
tail -c 2 file.sh # two characters
```

## Grep
```bash
ls | grep "Pr" --color
ls | grep -v "20"  # Not contained 20
```

## Cut
```bash
echo "one two three four five" |  cut -d" "  -f1,2-3,5
#   one two three five
```

## Tr
```bash
echo "one two three four five" |  tr " " "\n"
# one 
# two 
# three 
# four
# five
```

```bash
echo -d "one two three four five" |  tr " "
# onetwothreefourfive
```

## If
```bash
if [ a == b ]; then echo "different"; else echo "equal"; fi
```

## Test
```bash
test a == b 
echo $?
```

```bash
test a == b 
echo $?
```

## For
```bash
for a in ($seq 10); do echo oi;  done
```

## While
```bash
while (true); do echo "var";  done
```

