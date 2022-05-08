#  PDF-Shrinker 

#### <i>A command-line tool to shrink all <b>PDF</b> files contained inside a folder & it's subfolders.
</i>

---
### NOTE:
- Intended for <b>Debian/Ubuntu based</b> Linux systems (Debian, Ubuntu, PopOS, Mint, Kali, Elementary etc.)
- It uses the [Ghostscript](https://www.ghostscript.com/doc/current/Readme.htm) driver.
- It works by converting the PDF file to PostScript and back.
---
## Instructions:

1. Store the <b>.pdf</b> files you want to shrink inside a folder.
1. Clone the repo and move/copy the [shrink_script.sh](./shrink_script.sh) file into the files folder
1. Open Terminal in this folder:
    
    Provide execution permission to the shell script file:
    ```bash
    sudo chmod +x shrink_script.sh
    ``` 

    Run the script:
    ```bash
    ./shrink_script.sh
    ```
(The process takes a few minutes so don't panic if it feels stuck)

--- 
### References: 
- https://askubuntu.com/questions/113544/how-can-i-reduce-the-file-size-of-a-scanned-pdf-file
- https://www.ghostscript.com/doc/current/Use.htm
