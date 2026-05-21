# fail2ban-nanoreport

A nano Fail2Ban report for quickly viewing active jails and banned IP counts.

## Requirements

- Linux server
- Bash
- sudo privileges
- Fail2Ban installed and running

Tested on Ubuntu Server with Fail2Ban 1.0.2

---

## Installation

Clone the repository:

```bash
git clone https://github.com/rochakike/fail2ban_jails_quicknanoreport.git
cd fail2ban_jails_quicknanoreport

```

Assign execution permissions:

```bash
chmod u+x fail2ban_nanoreport.sh
```

---

## Usage

Run the script:

```bash
./fail2ban_nanoreport.sh
```

Or with sudo if required:

```bash
sudo ./fail2ban_nanoreport.sh
```

---

## Example Output

```text
apache-auth:       |- Currently banned: 3
apache-badbots:   |- Currently banned: 0
dovecot:          |- Currently banned: 0
postfix-sasl:     |- Currently banned: 5
recidive:         |- Currently banned: 4
sshd:             |- Currently banned: 0
```

---

## Features

- Quick Fail2Ban jail overview
- Shows banned IP count per jail
- Lightweight and dependency-free
- Colored output support

---

## Security Notes

This script does not modify Fail2Ban configuration or firewall rules.

It only reads jail status information using:

```bash
fail2ban-client status
```

---

## License

MIT License
