# Snapcraft ([Deprecated](https://github.com/docker/docker-snap))

https://snapcraft.io/docker

```
snap list
snap find docker
sudo snap install docker
sudo snap refresh docker
snap info docker
```

---

## Install using the repository

## Install from a package

## [Install using the convenience script](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-convenience-script)

```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker your-user
```

## Uninstall Docker Engine - Community

```
sudo apt-get purge docker-ce
```

---

# Install Compose

https://docs.docker.com/compose/install/#install-compose

```
cd ~/download
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
```
