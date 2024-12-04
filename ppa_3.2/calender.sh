touch "$month.txt"
touch error.txt
cal "$month" > "$month.txt" 2> error.txt || > "$month.txt"
