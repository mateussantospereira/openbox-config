mkdir -p ~/.config/systemd/user/
cp ./mount-gdrive.service ~/.config/systemd/user/


echo '/etc/fuse.conf' >> /etc/fuse.conf 

systemctl --user daemon-reload
systemctl --user enable mount-gdrive.service
systemctl --user start mount-gdrive.service
