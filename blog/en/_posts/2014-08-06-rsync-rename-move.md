---
layout: post
title: "detect file moves and renames with rsync"
---

## {{ page.title }}

###### {{ page.date | date_to_string }}

I use rsync to backup my *$HOME* directory everyday with something like this:

<pre class="sh_sh">
$ sudo rsync -az --one-file-system --delete $HOME/ admin@backup.javier.io:~/backup/$(hostname)
</pre>

Most of the times it takes me less than **10** minutes at 2MB/s to re-sync everything, however last weekend it took almost **20 hours!** so while I was waiting I decided to take a look to see what was happening. It turned out rsync was re-uploading some pretty heavy files because I had renamed them locally. I couldn't believe rsync was so dumb, I was shocked O_O

So I went to Internet and looked for solutions, fortunatelly some other guys had found this problem before and created a couple of patches:

- [detect-renamed](https://attachments.samba.org/attachment.cgi?id=7435)
- [detect-renamed-lax](https://git.samba.org/?p=rsync-patches.git;a=blob;f=detect-renamed-lax.diff;h=4cd23bd4524662f1d0db0bcc90336a77d0bb61c9;hb=HEAD)

These patches add the following options:

- --detect-renamed, --detect-renamed-lax
- --detect-moved

Since I'm not the kind of person who enjoys spending their time compiling software I packaged a modified rsync version for supported Ubuntu LTS versions and upload it somewhere, while doing it I updated the patches to make them compile with the latest rsync version (at the moment of writing this version 3.1.1).

<pre class="sh_sh">
$ sudo apt-add-repository ppa:minos-archive/main
$ sudo apt-get update &amp;&amp; sudo apt-get install rsync
</pre>

In my personal tests the modified rsync shows an amazing speed up for uploads who involve renamed/moved files, so I'm installing this in all my computers.

**Note: For this to work, both, server and client must have installed the modified rsync version**

Happy uploading &#128523;

References:

- [https://bugzilla.samba.org/show_bug.cgi?id=2294](https://bugzilla.samba.org/show_bug.cgi?id=2294)
- [https://bugs.launchpad.net/ubuntu/+source/rsync/+bug/1353792](https://bugs.launchpad.net/ubuntu/+source/rsync/+bug/1353792)
- [https://github.com/javier-lopez/learn/blob/master/patches/rsync-3.1.1-trusty-detect-renamed.diff](https://github.com/javier-lopez/learn/blob/master/patches/rsync-3.1.1-trusty-detect-renamed.diff)
- [https://github.com/javier-lopez/learn/blob/master/patches/rsync-3.1.1-trusty-detect-renamed-lax.diff](https://github.com/javier-lopez/learn/blob/master/patches/rsync-3.1.1-trusty-detect-renamed-lax.diff)
