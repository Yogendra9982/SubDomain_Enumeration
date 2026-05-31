
>> Advanced Subdomain Enumerator

A powerful Bash-based reconnaissance automation tool that streamlines the process of subdomain discovery, live host identification, and DNS resolution. The tool combines multiple industry-standard reconnaissance utilities to improve asset coverage and reduce manual effort during the information-gathering phase of security assessments.
## Overview

This project automates passive subdomain enumeration by integrating multiple data sources and consolidating results into a single workflow. It helps security researchers, penetration testers, and bug bounty hunters efficiently identify attack surfaces associated with a target domain.

## Features

* Multi-source passive subdomain enumeration
* Automated result aggregation and deduplication
* Live host detection
* DNS resolution and IP mapping
* Organized output management
* Lightweight and easy-to-use Bash implementation

## Tools Integrated

* Subfinder
* Amass
* Assetfinder
* Httprobe
* Dig

## Workflow

1. Collect subdomains from multiple passive sources.
2. Merge and remove duplicate results.
3. Identify active web hosts.
4. Resolve discovered assets to IP addresses.
5. Store all results in a structured directory for further analysis.

## Installation
```
git clone https://github.com/Yogendra9982/SubDomain_Enumeration.git 

cd  SubDomain_Enumeration

chmod +x Subdomain_enum.sh
```

>> Usage
```
./Subdomain_enum.sh
```

Enter the target domain when prompted.

>> Skills Demonstrated

* Bash Scripting
* Reconnaissance Automation
* Subdomain Enumeration
* Asset Discovery
* DNS Analysis
* Linux Automation
* Security Research

>> Use Cases

* Bug Bounty Reconnaissance
* Attack Surface Mapping
* Security Assessments
* Asset Discovery
* Penetration Testing Preparation

...............................................................................................................................................................................................................
