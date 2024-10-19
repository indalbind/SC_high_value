Write a **bash script** `script.sh` to extract the country name and its capital from a HTML file.
Assume that the HTML Code is of the following format and convert it in to the format as shown in the sample output.

**Note**

The HTML input to the script will be sent through standard input.

**Sample Input**

```html
<li>Country: <span class="country-name">France</span>, Capital: <span class="country-capital">Paris</span></li>
<li>Country: <span class="country-name">Japan</span>, Capital: <span class="country-capital">Tokyo</span></li>
<li>Country: <span class="country-name">Canada</span>, Capital: <span class="country-capital">Ottawa</span></li>
```

**Sample Output**

```bash
France
Paris
Japan
Tokyo
Canada
Ottawa
```