#!/bin/bash
if $(wp --url=http://dathang.com.vn core is-installed --network); then
    wp search-replace --url=http://dathang.com.vn 'http://dathang.com.vn' 'http://dathang.test' --recurse-objects --network --skip-columns=guid --skip-tables=wp_users
else
    wp search-replace 'http://dathang.com.vn' 'http://dathang.test' --recurse-objects --skip-columns=guid --skip-tables=wp_users
fi