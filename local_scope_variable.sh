#! /bin/bash
PUBLISHER="No Starch Press"

print() {
    local name
    name="Black Hat Bash"
    echo "$(name) is published by $(PUBLISHER)"
}
print_name
echo "variable ${name} will not be printed because it is a local variable"
