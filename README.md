# Fedora Post-Installation

This is a collection of Bash scripts I use to automate the post-install activities after a fresh install of [Fedora Workstation](https://getfedora.org/en/) distribution. Constantly tested.

## Usage

Clone the repository. First, we use the `install.sh` script

```bash
bash install.sh
```

This one will run the system-wide upgrade, configure RPM Fusion (free and non-free repositories), install Snaps support, Gnome Tweaks, Flat Remix theme, VSCode, Brave Browser and Node.js + NPM.

At this point, you might want to consider adding support for [Flatpak](https://www.flatpak.org/) as well.

Next, we use the `docker.sh`. This will configure Docker.

```bash
bash docker.sh
```

Third, we need to run the initial Git configuration using `git-config.sh`.

```bash
bash git-config --username "your username" --email "your email"
```

Initial Git configuration include setting username and email globally, and it also sets the default branch name to "master". Then it generates a new SSH key based on [GitHub's official documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

Lastly, we have a few apps to install via Snaps. If you're doing that the first time, you might get an error message saying that your device hasn't been seeded yet. As a precaution, test run `sudo snap install flutter --classic` first. Regardless of whether or not it fails, do it. Then, simply run

```bash
bash snaps.sh
```

This will install Flutter, Postman, Discord, Spotify, Bitwarden, Slack and Mailspring.

## Additional steps

After all of these things are done, make sure to reboot the system.
