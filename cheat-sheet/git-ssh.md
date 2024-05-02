# How to add a new SSH key on your computer


## Linux

<!-- Explain what we are about to do generally -->

We are going to generate a new SSH key and add it to the ssh-agent.
The ssh-agent is a program that runs in the background and stores your SSH private keys.
When you add a new SSH key to the ssh-agent, the agent will use the key to authenticate you when you connect to a server.

1. Generate a new SSH key:
```bash
ssh-keygen -t ed25519 -C "name-of-the-key"
```

2. Start the ssh-agent in the background:
```bash
eval "$(ssh-agent -s)"
```

3. Add your SSH private key to the ssh-agent:
```bash
ssh-add ~/.ssh/name-of-the-key
```

You can simplify this process by adding the following lines to your `~/.bashrc` or `~/.zshrc` file:
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/name-of-the-key
```

## Windows (Git Bash + PuTTY)

<!-- Explain what we are about to do generally -->

We are going to generate a new SSH key and add it to the Pageant.
Pageant is an SSH authentication agent for PuTTY, PSCP, PSFTP, and Plink.
When you add a new SSH key to the Pageant, the agent will use the key to authenticate you when you connect to a server.

1. Generate a new SSH key:
```bash
ssh-keygen -t ed25519 -C "name-of-the-key"
```

2. Start the Pageant:
```bash
pageant
```

3. Create a private key file for PuTTY:
```bash
puttygen ~/.ssh/name-of-the-key -o ~/.ssh/name-of-the-key.ppk
```

4. Add the private key file to the Pageant:

- Open the Pageant icon in the system tray.
- Click on the "Add Key" button.
- Select the private key file you created in step 3.
- Enter the passphrase for the key if you set one.
