#!/bin/bash
# Script 5: OS Manifesto Generator
# Author: Nitya Gopalakrishnan
# Description: generates a personalised open source manifesto and saves it to a file
# alias ll='ls -l'

echo "answer 3 ques to generate your manifesto:"
echo ""

# taking user input
read -p "1. Name one open source tool you use daily: "TOOL
read -p "2. In one word, what does 'freedom' mean to you? "FREEDOM
read -p "3. Name one thing you would build and share freely: "BUILD

# get current date
DATE=$(date "+%d %B %Y")

#output file name
OUTPUT="manifesto_$(whoami).txt"

#write to file

echo "open source manifesto--" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"

#creating paragraph 
echo "open source software is quite handy. Using tools like $TOOL, one can experience $FREEDOM. It inspires one to create projects like $BUILD . Thus, it promotes transparency and is free." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "---" >> "$OUTPUT"

echo "manifesto saved to $OUTPUT"
cat "$OUTPUT"
