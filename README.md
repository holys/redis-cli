A pure Go Redis-cli 
==================

This is a simple redis-cli forked from https://github.com/siddontang/ledisdb(ledis-cli).
Fully compatible with [Redis Protocol specification](https://redis.io/topics/protocol).

### Why I build this?

Sometimes I would like to access to the redis-server(or redis-proxy), but there is no redis-cli in the
the production machine which is controlled by the ops guys, and I don't have the root privilege to 
install one via apt-get or yum. Some people may ask that why don't you ask the ops guys for help? I just 
don't want to bother them because somtimes they are very busy, and I just want the redis-cli for single use.
People may be curious that why don't I git clone one from github and build it from source. 

Ok, let me show you:
```
git clone https://github.com/antirez/redis.git
Initialized empty Git repository in /home/work/app/redis/.git/
remote: Counting objects: 45784, done.
remote: Compressing objects: 100% (92/92), done.
Receiving objects:   0% (62/45784), 20.01 KiB | 5 KiB/s

Receiving objects:   0% (291/45784), 84.01 KiB | 1 KiB/s

Receiving objects:   2% (1242/45784), 300.01 KiB | 7 KiB/s
```

The network condition really drives me crazy.

People who has C/C++ backrground must know that you can't simply copy a linux executable file
from one machine to another and make it run successfully, because sometimes the target machine
lacks of the matched glibc or other .so files.

```
$ ldd redis-cli
    linux-vdso.so.1 =>  (0x00007fffe93fe000)
    libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f17ff5f9000)
    libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f17ff3db000)
    libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f17ff015000)
    /lib64/ld-linux-x86-64.so.2 (0x00007f17ff919000)
```

So I just want a pure go solution，build once, and run everywhere(aha Java).

Please correct me if I am wrong.


