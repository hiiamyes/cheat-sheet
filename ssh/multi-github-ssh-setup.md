https://gist.github.com/oanhnn/80a89405ab9023894df7

```
code ~/.ssh/config
```

```
# Default github account: wordup
Host github.com
   HostName github.com
   IdentityFile ~/.ssh/id_ed25519
   IdentitiesOnly yes

# Other github account: yes
Host github-yes
   HostName github.com
   IdentityFile ~/.ssh/id_yes
   IdentitiesOnly yes
```

```
ssh-keygen -t ed25519 -C "yes.lee@wordup.com.tw"
ssh-keygen -t ed25519 -C "joshuayes@gmail.com"
ssh-add ~/.ssh/id_ed25519
ssh-add ~/.ssh/id_yes
ssh-keyscan github.com >> ~/.ssh/known_hosts
ssh -T git@github.com
ssh -T git@github-yes

git clone git@github.com:word-up/dashboard-web.git
git clone git@github-yes:hiiamyes/hiiiike.git
```

