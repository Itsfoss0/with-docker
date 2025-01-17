## Persistence 
How to achieve persistence in docker 


Achieve persistence using volumes 

```
docker run -v /home/itsfoss/volumes/text.log:/usr/src/app/text.log devopsdockeruh/simple-web-service
Starting log output
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
```

```
🭨itsfoss 🭬🭨withdocker 🭬🭨$ 🭬cat /home/itsfoss/volumes/text.log 
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2025-01-17 00:11:20 +0000 UTC
2025-01-17 00:11:22 +0000 UTC
2025-01-17 00:11:24 +0000 UTC
2025-01-17 00:11:26 +0000 UTC
2025-01-17 00:11:28 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2025-01-17 00:12:00 +0000 UTC
2025-01-17 00:12:02 +0000 UTC
2025-01-17 00:12:04 +0000 UTC
2025-01-17 00:12:06 +0000 UTC
2025-01-17 00:12:08 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
🭨itsfoss 🭬🭨withdocker 🭬🭨$ 🭬
```