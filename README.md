# C2 All-in-One Deployment Template

# How to Run:
* - The playbook is designed to be run as cloud-user (after the creation of the heat stack). If you're running the playbook as any other user, run as the following:
    ```ansible-playbook site.yaml -i hosts --user cloud-user --private-key=/path/to/pem/file```


# Notes:
* - To run without heat stack portion, run using the --skip-tags="heat"
* - Run this as cloud-user (RHEL) and pass a key file in, otherwise ansible will fail.

# Helpful Hints:
* - If the playbook runs through the first set of prerequisites but fails afterwards, you can skip this step by rerunning the playbook like so:
    ```ansible-playbook site.yaml -i hosts --user cloud-user --private-key=/path/to/pem/file --skip-tags "debug"```


