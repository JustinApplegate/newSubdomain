# Bash Subdomain README
These are scripts used to create and delete subdomains in nginx in an Ubuntu environment. They must be used with sudo priviliges or will not function. 

They should be used with the following commands:
```
sudo sh newSubdomain.sh new_name
```

AND

```
sudo sh deleteSubdomain.sh new_name
```

Omitting the subdomain name as `new_name` will cause the script to exit early without doing anything. 
