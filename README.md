# subdomain_shell

## ref 


https://github.com/boy-hack/ksubdomain/releases/tag/v1.9.5

https://github.com/projectdiscovery/subfinder/releases/tag/v2.5.1

 subfinder_2.5.1_linux_amd64.zip 3.48 MB 


 https://github.com/projectdiscovery/httpx/releases/tag/v1.2.0
 

https://github.com/Mr-xn/subdomain_shell


## heroku



[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/wanghaisheng/subdomain-discovery-rest)



RUN  groupadd pcap
RUN  usermod -a -G pcap $USER


RUN  chgrp pcap /usr/sbin/tcpdump
RUN  chmod 750 /usr/sbin/tcpdump
RUN  setcap cap_net_raw,cap_net_admin=eip /usr/sbin/tcpdump


[Error] pcap打开失败:eth0: You don't have permission to capture on that device (socket: Operation not permitted)

-rwx------ 1 u15457 dyno 12605504 Apr  7 09:21 ./ksubdomain


chmod 777 ./ksubdomain && ls -al ./ksubdomain
-rwxrwxrwx 1 u34507 dyno 12605504 Apr  7 09:21 ./ksubdomain


```


Removing intermediate container 7a4b3737e2f3

 ---> 773cfc36b950

Step 7/8 : RUN chmod 777 docker_build.sh

 ---> Running in 0c5cf87af191

Removing intermediate container 0c5cf87af191

 ---> fe9f857c79e6

Step 8/8 : RUN ./docker_build.sh

 ---> Running in e461d34ca353

-rwxrwxrwx 1 root root 12605504 Apr  7 09:56 ./ksubdomain

Removing intermediate container e461d34ca353

 ---> 6fb06594f464

Successfully built 6fb06594f464

Successfully tagged 21f439f4c9c34806774e8491b0f3398c83fb7459:latest

=== Pushing web (Dockerfile)

Tagged image "21f439f4c9c34806774e8491b0f3398c83fb7459" as "registry.heroku.com/subdomain-discovery-shopconan/web"
```bian yi shi duide   run qilai jinqu you bushi
