# Question

Write a `script.sh` which will take input from standard input and write output
to standard output.
Your script `script.sh` receives an `access.log` in the format as given below.
Your job is to write the script `script.sh` to parse the standard input and
print the unique IP addresses in the file along with its count.
The output should be sorted in descending order of the count.

## Sample Input:

```txt
83.97.73.245 - - [16/Feb/2024:00:11:33 +0000] "GET /?XDEBUG_SESSION_START=phpstorm HTTP/1.1" 404 184 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36"
157.245.176.143 - - [16/Feb/2024:00:13:54 +0000] "SSTP_DUPLEX_POST /sra_{BA195980-CD49-458b-9E23-C84EE0ADCD75}/ HTTP/1.1" 400 150 "-" "-"
45.79.163.53 - - [16/Feb/2024:00:16:06 +0000] "GET / HTTP/1.1" 400 248 "-" "Mozilla/5.0 zgrab/0.x"
185.180.143.189 - - [16/Feb/2024:00:20:59 +0000] "GET / HTTP/1.1" 403 180 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
194.67.201.24 - - [16/Feb/2024:00:24:32 +0000] "GET / HTTP/1.1" 404 184 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36"
143.110.222.166 - - [16/Feb/2024:00:28:25 +0000] "GET / HTTP/1.1" 403 118 "-" "Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1"
45.79.181.94 - - [16/Feb/2024:00:28:58 +0000] "GET / HTTP/1.1" 404 184 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
161.35.27.144 - - [16/Feb/2024:00:29:48 +0000] "GET / HTTP/1.1" 404 207 "-" "-"
161.35.27.144 - - [16/Feb/2024:00:29:53 +0000] "GET / HTTP/1.1" 404 207 "-" "Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA591839) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.3267.98 Mobile Safari/537.3"
161.35.27.144 - - [16/Feb/2024:00:29:54 +0000] "GET /version HTTP/1.1" 404 184 "-" "Go-http-client/1.1"
```

## Sample Output:

```txt
3 161.35.27.144
1 83.97.73.245
1 45.79.181.94
1 45.79.163.53
1 194.67.201.24
1 185.180.143.189
1 157.245.176.143
1 143.110.222.166
```
