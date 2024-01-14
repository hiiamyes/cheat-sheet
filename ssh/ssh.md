# ssh

https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

```
ssh-keygen -t ed25519 -C "joshuayes@gmail.com"
ssh-keygen -t ed25519 -C "yes.lee@wordup.com.tw"
```

# Multiple SSH Keys settings for different github account

https://gist.github.com/jexchan/2351996
https://gist.github.com/oanhnn/80a89405ab9023894df7

```
ssh-keygen -t ed25519 -C "yes.lee@wordup.com.tw"
ssh-add ~/.ssh/id_wordup
ssh-add -l
```

```
# wordup
Host github.com-wordup
	HostName github.com
	User git
	IdentityFile ~/.ssh/id_wordup
```

ssh -T git@github.com-wordup

git clone git@github.com:word-up/dashboard-web.git
git clone {host}:word-up/dashboard-web.git
git clone git@github.com-wordup:word-up/dashboard-web.git
git clone git@github.com-wordup:word-up/ios_certificates.git

# WTF~~ Host key verification failed.

```
.ssh ssh -T git@github.com
```

The authenticity of host 'github.com (20.27.177.113)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])?
Host key verification failed.

solution: 直接 rm -rf known_hosts