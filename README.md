# Shell Script Starter

# Fatorial 
Example: f 1 1 30
```bash
f() { for a in $(seq $*); do echo "f($a) = $(seq -s* $a|bc)";  done; }
```

