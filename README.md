# Container Compare
This is a bash script that compares two Docker images using container-diff, a tool for analyzing differences between Docker images.

## Usage
Clone this repository to your local machine.
Install container-diff by following the instructions on its GitHub repository.
Run the script by navigating to the repository folder in your terminal and executing ./container-compare.sh.
Enter the names of the two Docker images when prompted by the script.
The script will output the comparison results for each of the following types:

- File
- Apt
- Pip
- Size
- History
- 
The comparison results will be stored in the outputs folder in separate files for each type.

## Usage
1. Install the container-diff tool on your system: [Container-Compare](https://github.com/GoogleContainerTools/container-diff)
2. Clone this repository to your local machine
3. Navigate to the cloned repository's directory: 

```
cd container-compare
```

4. Run the script with ./container-compare.sh.
```
❯ ./container-compare.sh

```
5. Follow the prompts to enter the names of the two Docker images you want to compare.
```
Enter the name of the first docker image:
image1
Enter the name of the second docker image:
image2
Comparing type: file
Comparing type: apt
Comparing type: pip
Comparing type: size
Comparing type: history
```
6. The results of the comparison will be saved in the outputs directory.

```
-rw-r--r--  1 Owner  staff    37303 28 Apr 20:21 apt-container-diff
-rw-r--r--  1 Owner  staff  9268473 28 Apr 20:21 file-container-diff
-rw-r--r--  1 Owner  staff      451 28 Apr 20:21 history-container-diff
-rw-r--r--  1 Owner  staff     1022 28 Apr 20:21 pip-container-diff
-rw-r--r--  1 Owner  staff      252 28 Apr 20:21 size-container-diff
```
