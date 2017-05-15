#Dave King
#Python Drill File Copier Final Project
#Python 3.6
#5/15/2017


from tkinter import *
from tkinter import messagebox
from tkinter import filedialog
import db_main
import db_func

def load_gui(self):
    self.btnSource = Button(self.lb1,text='Choose\nSource', command=lambda: db_func.getSourceDir(self), padx=5)
    self.btnSource.grid(row=0, column=0, sticky='w')
    self.lblSource = Label(self.lb1, justify=LEFT, wraplength=400)
    self.lblSource.grid(row=0, column=1, sticky='w')
    self.btnDest = Button(self.lb1, text='Choose\nDestination', command=lambda: db_func.getDestDir(self), padx=5)
    self.btnDest.grid(row=1, column=0, sticky='w')
    self.lblDest = Label(self.lb1, justify=LEFT, wraplength=400)
    self.lblDest.grid(row=1, column=1, sticky='w')

    self.btnCommit = Button(self.lb1, text='Execute', command=lambda: db_func.moveFiles(self), width=8, padx=5)
    self.btnCommit.grid(row=2, column=0, sticky='w')
    self.btnClear = Button(self.lb1, text='Reset', command=lambda: db_func.clearInfo(self), width=8, padx=5)
    self.btnClear.grid(row=3, column=0, sticky='e')

    self.textInfo = Text(self.lb2, height=4)
    self.textInfo.grid(row=0, column=0)
    self.textInfo.config(state='disabled')

    self.scrollCopy = Scrollbar(self.lb3)
    self.textCopy = Text(self.lb3, height=18)
    self.scrollCopy.grid(row=0, column=0)
    self.textCopy.grid(row=0, column=0)
    self.scrollCopy.config(command=self.textCopy.yview)
    self.textCopy.config(yscrollcommand=self.scrollCopy.set)
    self.textCopy.config(state='disabled')

    db_func.createDB(self)
    db_func.showLastMove(self)

if __name__ == "__main__":
    pass
