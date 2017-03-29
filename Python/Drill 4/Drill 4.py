#import sys, os, shutil
from datetime import datetime
import calendar


def txtmove(src, dest):

    sid = (60*60*24)
    d = datetime.utcnow()
    unixtime = calendar.timegm(d.utctimetuple())
    newtime = (unixtime - sid)

    d = os.listdir(src)
    for file in d:
        ft = os.path.getctime(src + file)
        if ft > newtime:
            file.endswith('.txt')
            shutil.move(src + file, dest);
            
def main ():


    src = 'C:/Users/Dave-Anico/Desktop/A/'
    dest = 'C:/Users/Dave-Anico/Desktop/B/'    

    txtmove(src, dest)

if __name__=="__main__":
    main();
