#!/usr/bin/env python
#coding:utf8

import os
import sys

black_list = [
     "/Users/duanhongjin/Projects/SourceCode/pdfium",
]

root_dir = sys.path[0]

def run_repos(path):
    os.chdir(path)
    os.system("git fetch --all --tags")
    os.system("git submodule update --init --recursive")
    os.chdir(root_dir)

def main():
    for path, dirlist, filelist in os.walk(root_dir):
        if ".git" in dirlist:
            print path
            if path in black_list:
                print "Ignored"
            else:
                run_repos(path)
            dirlist[:] = [] # ignore submodule
            print "================================================================================"

if __name__ == '__main__':
  sys.exit(main())
