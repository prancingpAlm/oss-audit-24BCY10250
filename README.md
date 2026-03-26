## Student Name: Nitya N Gopalakrishnan
## Registration Number:24BCY10250
## Chosen software: Linux Kernel
## Description of Scripts:
  # Script 1-System Identity Report
  This script displays important system information such as user name, home directory, kernel version, OS distribution, uptime, and current date/time. It uses        Linux commands and presents the output in a formatted report.

  Steps to Run-
  1.Open Linux terminal
  2.Create file: nano script1.sh
  3.Paste code and save
  4.Make executable:chmod +x script1.sh
  5.Run: ./script.sh

  Dependencies-
  1.uname
  2.whoami
  3.date
  4.uptime
  5./etc/os-release file

  # Script 2-FOSS Package Inspector
  This script checks whether a given software package is installed. For the Linux Kernel, it uses uname -r to display version details. For other packages, it uses package management commands to verify installation and shows a short description.

  Steps to Run-
  1.Open Linux terminal
  2.Create file: nano script2.sh
  3.save and make executable:chmod +x script2.sh
  4.Run with argument: ./script2.sh 

  Dependencies-
  1.uname
  2.dpkg
  3.grep

  # Script 3-Disk and Permission Auditor 
  This script analyzes the system’s disk usage and checks file permissions in a specified directory. It displays information about total disk space, used and available space, and lists files with their permissions. The script helps users understand storage usage and identify files with restricted or open permissions. It uses standard Linux commands to gather and present this information in a readable format.

  Steps to Run-
  1.Open Linux terminal
  2.Create file: nano script3.sh
  3.save and make executable:chmod +x script3.sh
  4.Run with argument: ./script3.sh 

  Dependencies-
  1.df: to check disk usage
  2.du:to analyse directory size
  3.ls -l: to view file permissions
  4.grep(optional)

  # Script 4-Log File Analyzer
  This script reads a log file and counts how many times a specific keyword (like “error”) appears. It processes the file line by line and displays the total count along with matching lines.

  Steps to Run-
  1.Open Linux terminal
  2.Create file: nano script4.sh
  3.save and make executable:chmod +x script4.sh
  4.Run with argument: ./script4.sh 

  Dependencies-
  1.grep
  2.cat
  3.tail

  # Script 5-Open Source Manifesto Generator
  This script generates a personalized open-source manifesto by asking the user three questions. It stores the responses, combines them into a paragraph, adds the current date, and saves the output into a text file.

  Steps to Run-
  1.Open Linux terminal
  2.Create file: nano script5.sh
  3.save and make executable:chmod +x script5.sh
  4.Run with argument: ./script5.sh 

  Dependencies-
  1.read(in-built)
  2.date
  3.echo
  4.cat
  
