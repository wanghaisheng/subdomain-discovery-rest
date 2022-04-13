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

找到原理了 https://github.com/weibeld/heroku-buildpack-run/issues/5


Hi, yes, the permissions will not be set, because the build is performed in a separate sandboxed build container, and changes you make to the environment of this build container (e.g. environment variables and file permissions) are not propagated to the production containers (dynos), only the raw files of your application are copied to the production dynos.

The solution to your problem is to use a .profile file: create the file .profile in the root directory of your app and put the command chmod -R 777 Storage in it. This file will be sourced at the startup of each production dyno, and your permissions will be set at production time. This is described here.https://devcenter.heroku.com/articles/dynos#the-profile-file
