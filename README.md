<a name="readme-top"></a>

[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
    <img src="readme_files/logo.png" alt="Logo" width="80" height="80">

  <h3 align="center">Automated Server Setup with Ansible (RHEL & Ubuntu)</h3>

</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

<img src="readme_files/cover.jpg" alt="Cover Image">

* **Project Name:** Automated Server Setup with Ansible (RHEL & Ubuntu)  
* **Version:** v1.0.0  
* **Department:** Technology

---

### Description

This project automates the initial configuration of new servers running Ubuntu and Red Hat Enterprise Linux (RHEL) using Ansible, streamlining essential setup tasks. This ensures a consistent, secure, and efficient server deployment process for both operating systems.

The Ansible playbook handles the following tasks:

* **Installation of Core Packages:** Automatically installs necessary packages such as `apt-utils`, `python3-venv`, `python3-dev`, `libpq-dev`, `git`, `docker.io`, `ansible`, `curl`, `nano`, `whois`, `tree`, `p7zip-full`, `postgresql-client`, and `unzip`.

* **System Restart Management:** Monitors and triggers system restarts when necessary to apply changes.

* **User Management:** Creates a new sudo user to improve security and access control.

* **Firewall Configuration:** Sets up firewall rules to enhance server security.

* **SSH Key Pair Generation:** Automatically generates an SSH key pair for secure remote access.

* **Passwordless Root Access:** Configures passwordless root access for easier administration.

* **Git Configuration & Project Pull:** Configures Git and pulls specified GitHub repositories to automate project setup.

This solution saves time by eliminating manual configuration and ensures uniform server environments across deployments.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

### Built With

This project was developed using:

* **Ansible** – For automating server configuration and management.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Contact

Mohamed AbdelGawad Ibrahim  
[@m-abdelgawad](https://www.linkedin.com/in/m-abdelgawad/)  
<a href="tel:+201069052620">+201069052620</a>  
[muhammadabdelgawwad@gmail.com](mailto:muhammadabdelgawwad@gmail.com)

GitHub Profile Link: [https://github.com/m-abdelgawad](https://github.com/m-abdelgawad)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/m-abdelgawad/
