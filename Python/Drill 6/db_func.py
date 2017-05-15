#Dave King
#Python Drill File Copier Final Project
#Python 3.6
#5/15/2017


import tkinter as tk
from tkinter import *
from tkinter import messagebox
from tkinter import filedialog 
import datetime
import sqlite3 
import os
import shutil
import time
import db_main
import db_gui

def getSourceDir(self):
    directory = filedialog.askdirectory()
    self.lblSource.config(text=directory+'/')
    self.btnSource.config(state="disabled")

def getDestDir(self):
    directory = filedialog.askdirectory()
    self.lblDest.config(text=directory+'/')
    self.btnDest.config(state="disabled")

def moveFiles(self):
    src = self.lblSource.cget('text')
    dest = self.lblDest.cget('text')
    if src != '' and dest != '':
        today = datetime.datetime.now()
        dirList = os.listdir(src)
        self.textCopy.config(state='normal')
        self.textCopy.delete(1.0, END)
        for i in dirList:
            fTime = os.path.getmtime(src+i) 
            fTime = time.localtime(fTime)
            if today.year ==  fTime.tm_year and today.month == fTime.tm_mon and today.day == fTime.tm_mday: 
                self.textCopy.insert(END, i+'\n')
                shutil.copyfile(src+i, dest+i)
        addTimeStamp(self)
        self.textCopy.config(state='disabled')
    else:
        self.textInfo.config(state='normal')
        self.textInfo.delete(1.0, END)
        self.textInfo.insert(END, 'Please choose BOTH destination AND\n source directories before Executing!')
        self.textInfo.config(state='disabled')

def clearInfo(self):
    self.btnSource.config(state='normal')
    self.btnDest.config(state='normal')

    self.textInfo.config(state='normal')
    self.textInfo.delete(1.0, END)
    self.textInfo.insert(END, 'UPDATED TIMESTAMP:\n')
    self.textInfo.config(state='disabled')

    self.textCopy.config(state='normal')
    self.textCopy.delete(1.0, END)
    self.textCopy.insert(END, '')
    self.textCopy.config(state='disabled')

    self.lblSource.config(text='')
    self.lblDest.config(text='')

    showLastMove(self)

def createDB(self):
    conn = sqlite3.connect('dbFileCopy.db')
    with conn:
        c = conn.cursor()
        c.execute("CREATE TABLE IF NOT EXISTS tblCopyTime(ID INTEGER PRIMARY KEY AUTOINCREMENT,date text,time text);")
        conn.commit()
    conn.close()

def showLastMove(self):
    conn = sqlite3.connect('dbFileCopy.db')
    with conn:
        c = conn.cursor()
        c.execute("SELECT COUNT(*) FROM tblCopyTime") 
        count = c.fetchone()[0]
        if count < 1:
            self.textInfo.config(state='normal')
            self.textInfo.insert(END, 'Choose directories, then Execute,\nor press Reset to start over.')
            self.textInfo.config(state='disabled')
        else:
            c.execute("SELECT * FROM tblCopyTime ORDER BY ID DESC LIMIT 1")
            recentTS = c.fetchall()
            recent = recentTS[0]
            recentDate = recent[1]
            recentTimeUnix = recent[2]
            recentTime = datetime.datetime.fromtimestamp(int(round(float(recentTimeUnix)))).strftime("%H:%M:%S")
            self.textInfo.config(state='normal')
            self.textInfo.insert(END, 'The last time files were moved:\n'+recentTime + ' on ' + recentDate)
            self.textInfo.config(state='disabled')  
    conn.close()

def addTimeStamp(self):
    currTime = time.time()
    currDate = time.strftime("%m/%d/%Y")
    conn = sqlite3.connect('dbFileCopy.db')
    with conn:
        c = conn.cursor()
        c.execute("INSERT INTO tblCopyTime (date,time) VALUES (?,?)", (currDate, currTime))
        conn.commit()
    conn.close()
