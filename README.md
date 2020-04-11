# Live Streaming Demo

Author: James Jones <jam.jones@nginx.com>

## Usage

### Prerequisites
- terraform
- ansible
- ffmpeg
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
6. Update IP of the ingest node in `stream.sh` *note: The deploy scrip will down the video for you: http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_60fps_stereo_abl.mp4*
7. Start the stream `./stream.sh`
8. Playback using the following address `rtmp://<lb-node-ip>/live/bbb`

### To Deploy
  1. `./deploy.sh`

### To Destroy
  `./destroy.sh`
