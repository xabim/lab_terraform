#!/bin/bash
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install -y apache2

cat <<'EOF' >> /var/www/html/index.php
<?php
phpinfo();
?>
EOF

sudo service apache2 restart