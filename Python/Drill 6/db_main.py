#Dave King
#Python Drill File Copier Final Project
#Python 3.6
#5/15/2017

import tkinter as tk
from tkinter import *
import db_func
import db_gui

class FileCopy(Frame):
    def __init__(self, master):
        self.master = master
        master.title("File Copier 2.0")
        master.resizable(False, False)
        master.geometry('500x550+0+0')
        self.frameBase = Frame(self.master)
        self.frameBase.pack(expand =1, fill=tk.BOTH)
        self.lb1 = LabelFrame(self.frameBase, text='Copy files made within past 24hrs')
        self.lb1.pack(fill=tk.BOTH)    
        self.lb2 = LabelFrame(self.frameBase, text='INFO WINDOW')
        self.lb2.pack()    
        self.lb3 = LabelFrame(self.frameBase, text='Files that were copied')
        self.lb3.pack(fill=tk.BOTH, expand=1)
        db_gui.load_gui(self)

def main():
    root = Tk()
    app = FileCopy(root)
    root.mainloop()
if __name__ == "__main__": main()

