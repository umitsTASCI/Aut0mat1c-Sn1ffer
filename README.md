# Aut0mat1c-Sn1ffer

> Automated Reverse Shell Listener & Payload Helper for Cybersecurity Labs

Aut0mat1c-Sn1ffer is a lightweight Bash-based automation tool designed to simplify reverse shell handling during penetration testing and cybersecurity lab environments.  
It reduces repetitive manual setup steps and allows faster exploitation workflow execution.

---

## 🎯 Purpose

During lab-based exploitation scenarios, setting up listeners, preparing payload commands, and managing connections can be repetitive.

Aut0mat1c-Sn1ffer automates:

- Listener initialization
- Port configuration
- Payload command generation
- Reverse shell capture process

Built specifically for:
- Cybersecurity students
- CTF players
- Offensive security beginners
- Lab-based penetration testers

---

## ⚙️ Core Features

- 🔄 Automated reverse shell listener setup  
- 🧠 Guided configuration (Target IP & Port input)  
- 💻 Pure Bash implementation  
- 🐧 Optimized for Kali Linux  
- ⚡ Minimal dependencies  
- 🧪 Designed for controlled lab environments  

---

## 🛠 Installation

### 1️⃣ Clone the Repository

Open your terminal (`xterm`, GNOME Terminal, etc.):

```bash
git clone https://github.com/umitsTASCI/Aut0mat1c-Sn1ffer.git
cd Aut0mat1c-Sn1ffer
````

### 2️⃣ Make the Script Executable

```bash
chmod +x sniff.sh
```

---

## ▶️ Usage

Run the script with elevated privileges to allow proper port binding and network handling:

```bash
sudo ./sniff.sh
```

---

## 🔎 How It Works

1. The tool prompts you to enter:

   * Target IP
   * Desired listening port
2. It generates the required payload command.
3. It automatically initializes the listener.
4. Waits for incoming reverse shell connection.

---

## 🧪 Recommended Environment

* Kali Linux
* VirtualBox / VMware lab setups
* Controlled CTF environments
* Isolated penetration testing labs

---

## 🛡 Legal Disclaimer

This project is developed strictly for:

* Educational purposes
* Authorized penetration testing
* Cybersecurity research

Unauthorized use against systems without explicit permission is illegal.

The author assumes no responsibility for misuse or damage caused by this tool.

---

## 👨‍💻 Author

Cybersecurity Student at Karabuk University
Active participant in the Siber Vatan program

Focused Areas:

* Offensive Security
* Exploitation Automation
* Defensive Tooling
* CTF Competitions
* Bash & Low-Level Networking

---

## 🌐 Repository

Hosted on GitHub

---

## ⭐ Future Improvements (Roadmap)

* Multi-listener support
* Integrated payload encoding
* Logging & session tracking
* Colorized UI enhancements
* Modular plugin structure

---

### “Automate the repetitive. Focus on the exploit.”

```
```
