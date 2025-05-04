grep -i '[0-9]' fin | grep -iv '[xy]' | awk '{sum += length} END {print sum}'

