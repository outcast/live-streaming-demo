# CDN-Demo

Author: James Jones <jam.jones@nginx.com>

## Usage

### Prerequisites
- terraform
- ansible
- Nginx Plus repo access cert and key
- Digital Ocean Account with a ssh key imported

### Setup
1. Clone repo
2. Copy your Nginx repo access cert and key to './certs'
3. In './terraform/variables.tf' add the key name to `data "digitalocean_ssh_key" "ssh_keys"`.

  Example:

  ```
  variable "ssh_keys" {
    type = set(string)
    default = [
      "myKeyName"
    ]
  }
  ```
4. mkdir ~/.private
5. Create a file '~/.private/do_token' with mode '0600' and put your Digital Ocean token in it.

### To Deploy
  1. `./deploy.sh`
  2. Once it is complete ssh to origin and run `sudo apt-mirror` *note: it may take a while*

### To Destroy
  `./destroy.sh`
