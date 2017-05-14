#!/bin/bash
find . -type d -exec chmod 775 {} \;
find . -type f -exec chmod 664 {} \;    

chgrp -R www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache