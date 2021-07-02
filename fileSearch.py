#!/usr/bin/python3
import subprocess
import os, sys

testDirs = ["/usr/share", "/var"]

for testDir in testDirs:
  print(f"Start searching in {testDir} ...")
  for dirs, subdirs, files in os.walk(testDir):
    for file in files:
      filePath = os.path.join(dirs,file)
      out = subprocess.getoutput(f"file {filePath}")
      if 'PDF' in out:
        print(filePath)
        sys.exit()
print("Done.")
