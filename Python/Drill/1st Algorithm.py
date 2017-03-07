from random import randint

def start(score1=0,p1="",score2=0,p2=""):
    p1= player1(p1)
    p2= player2(p2)
    score1,p1,score2,p2 = dice_game(score1,p1,score2,p2)

def player1(p1):
    if p1 != "":
        print("\nThank you for playing again, {}!".format(p1))
    else:
        stop=True
        while stop:
            if p1 == "":
                p1 = input("\nPlayer 1 what is your name? ").capitalize()
                if p1 !="":
                    print("\n Welcome, {}!".format(p1))
                    stop = False
    return p1

def player2(p2):
    if p2 != "":
        print("\nThank you for playing again, {}!".format(p2))
    else:
        stop=True
        while stop:
            if p2 == "":
                p2 = input("\nPlayer 2 what is your name? ").capitalize()
                if p2 !="":
                    print("\n Welcome, {}!".format(p2))
                    stop = False
                    print("\nIn this game, you will roll random dice to see who wins. \nIt's a game of pure luck.")
    return p2

def dice_game(score1,p1,score2,p2):
    stop = True
    while stop:
        roll = input("Ready to Roll? y/n?:")
        while roll.lower() == "y":
            print("{} rolled a", randint(p1))
            #score1 = (num_rolled + score1)
            #num_rolled = roll(sides)
            #print("{} rolled a {}").format(p2, num_rolled)
            #score2 = (num_rolled + score2)
        #else:
            #print("\n Your holding the game up!")
            #stop = False
        #show_score(score1, p1, score2, p2)
        #score(score1,p1,score2,p2)


#def show_score(score1,p1,score2,p2):
    #print("\n{} has {} points, while {} has {}. First one to 500 wins!").format(p1,score1,p1,score2)
"""
def score(score1,p1,score2,p2):
    if score1 > 25:
        win1(score1,p1,score2,p2)
    if score2 > 25:
        win2(score1,p1,score2,p2)
    else:
        Dice_Game(score1,p1,score2,p2)

def win1(score1,p1,score2,p2):
    print("\nNice job {}, you win!!".format(p1))
    again(score1,p1,score2,p2)

def win2(score1,p1,score2,p2):
    print("\nNice job {}, you win!".format(p2))
    again(score1,p1,score2,p2)

def again(score1,p1,score2,p2):
    stop = True
    while stop:
        choice = input("\n Do you want to play again? y/n: ").lower()
        if choice == "y":
            stop = False
            reset(score1,p1,score2,p2)
        if choice == "n":
            print("\n Thanks for playing!")
            stop = False
            exit()
        else:
            print("\nPlease enter 'y' for 'YES' or 'n' for 'NO'..")

def reset(score1,p1,score2,p2):
    score1=0
    score2=0
    start(score1,p1,score2,p2)

"""


if __name__ == "__main__":
    start()