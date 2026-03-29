**# Open Source Audit - VLC Media Player**



**Student: Shubhangana Kanthed**  

**Registration Number: 24BAI10963**  

**Chosen Software: VLC Media Player**



\---



**## Project Description**



This is a capstone project for the Open Source Software course. VLC was chosen because it started as a student project in Paris and now runs on billions of devices. The project includes an audit of VLC — its origin, license, philosophy, Linux footprint, and five shell scripts.



\---



**## Scripts Description**



* script1.sh – Displays system information including kernel version, username, home directory, uptime, current date, and OS license.
* script2.sh – Checks if VLC is installed on the system. If installed, shows version and license information. Prints a philosophy note about open source.
* script3.sh – Loops through system directories (/etc, /var/log, /home, /usr/bin, /tmp) and reports disk usage and permissions. Also checks the VLC config directory.
* script4.sh – Reads a log file line by line, counts occurrences of a keyword (default: "error"), and shows the last 5 matching lines. Includes retry logic for empty files.
* script5.sh – Asks the user three questions and generates a personalized open source manifesto saved as a .txt file.



\---



**## Requirements**



\- Linux operating system (Ubuntu/Debian recommended)

\- Bash shell

\- VLC Media Player installed (`sudo apt install vlc`)



\---



**## How to Run the Scripts**



1. Clone the repository or download the scripts

&#x09;git clone https://github.com/shubhangana27/oss-audit-24BAI10963.git

&#x09;cd oss-audit-24BAI10963

2\. Make all scripts executable

&#x09;chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

3\. Run Script 1

&#x09;./script1.sh

4\. Run Script 2

&#x09;./script2.sh

5\. Run Script 3

&#x09;./script3.sh

6\. Run Script 4

&#x09;Create a test log file

&#x09;echo "error: something failed" > test.log

&#x09;echo "ERROR: critical issue" >> test.log

&#x09;

&#x09;Run the script

&#x09;./script4.sh test.log error

7\. Run Script 5

&#x09;./script5.sh



\---



**## Dependencies**



\- vlc – Required for script2.sh to display license information

\- dpkg – Pre-installed on Ubuntu/Debian systems

\- Standard Linux utilities (ls, du, grep, awk, cut) – Pre-installed



\---



**## Notes**



\- Script 4 accepts a log file as first argument and optional keyword as second argument

\- Script 5 creates a manifesto file in the current directory

\- All scripts include comments explaining each section

