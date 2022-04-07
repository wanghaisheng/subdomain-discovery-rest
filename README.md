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