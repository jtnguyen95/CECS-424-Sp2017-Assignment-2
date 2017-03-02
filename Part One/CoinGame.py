#Jonathan Nguyen 012210040
#CECS 424 Assignment#2

#This point of this program is to move a string of ten characters in order to produce alternating
#characters: HHHHHTTTTT -> HTHTHTHTHT OR THTHTHTHTH. The player is only allowed to move two touching
#coins at a time and can only move them into gaps of previously moved coins. Since there are no gaps
# on the first turn, you are only able to move two coins to either the end or the beginning
# of the string of coins. You have 5 turns.

#global variables
pieces = 'H H H H H T T T T T' #pieces
space = ['^', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] #space
turns = 0
cursorPos = 0
select = 0
selectPos = -1
moveTo = -1

#allows user to move cursor under pieces so that he or she may be able to select
def moveCursor():
    #globals
    global cursorPos
    global pieces
    global select
    global turns
    global selectPos
    global moveTo

    #prints pieces
    print(pieces.replace(" ", ""))

    #prints cursor
    print("".join(space))

    #instructions
    move = input('Enter "L" to shift left, "R" to shift right, "S" to select 2 coins, "M" to move 2 coins to '
                 'the new position')
    if ((move == 'r' or move == 'R') and cursorPos < len(space) - 1): #if cursor is moved left
        temp = space[cursorPos]
        space[cursorPos] = space[cursorPos + 1]
        space[cursorPos + 1] = temp
        cursorPos = cursorPos + 1
        print('')
    elif ((move == 'l' or move == 'L') and cursorPos != 0): #if cursor is moved right
        temp = space[cursorPos]
        space[cursorPos] = space[cursorPos - 1]
        space[cursorPos - 1] = temp
        cursorPos = cursorPos - 1
        print('')
    elif (move == 's' or move == 'S'): #If user selects a piece
        pieces = pieces.split(" ")
        if((cursorPos < len(pieces) - 1) and (pieces[cursorPos + 1] != '_')):
            selectPos = cursorPos
            select = 1
        else:
            print('INVALID MOVE. TRY AGAIN.')
        pieces = " ".join(pieces)
    elif (((move == 'm' or move == 'M') and select == 1)): #if user would like to move
        moveTo = cursorPos
        movePieces()

    else: #invalid move
        print('INVALID MOVE. TRY AGAIN.')
        print('')

#Logic to move pieces around
def movePieces():
    #globals
    global cursorPos
    global turns
    global select
    global selectPos
    global moveTo
    global pieces

    #convert pieces into array
    pieces = pieces.split(" ")

    #temps to swap pieces
    temp1 = pieces[selectPos]
    temp2 = pieces[selectPos + 1]
    if(turns == 0 and moveTo == 9 and (selectPos != 9 and selectPos != 8)): #if first turn and user appends to right
        pieces[selectPos + 1] = '_'
        pieces[selectPos] = '_'
        pieces.insert(len(pieces), temp1)
        pieces.insert(len(pieces), temp2)
        space.insert(len(space), ' ')
        space.insert(len(space), ' ')
        turns = turns + 1
        select = 0
        pieces = " ".join(pieces)
    elif(turns == 0 and moveTo == 0 and selectPos != 0): # if first turn and user appends to left
        pieces[selectPos + 1] = '_'
        pieces[selectPos] = '_'
        pieces.insert(0, temp2)
        pieces.insert(0, temp1)
        space.insert(len(space), ' ')
        space.insert(len(space), ' ')
        turns = turns + 1
        select = 0
        pieces = " ".join(pieces)
    elif(pieces[moveTo] == '_' and pieces[moveTo + 1] == '_'): #any other turn w/ valid position
        pieces[selectPos + 1] = '_'
        pieces[selectPos] = '_'
        pieces[moveTo] = temp1
        pieces[moveTo + 1] = temp2
        turns = turns + 1
        select = 0
        pieces = " ".join(pieces)
    else:
        print('INVALID POSITION.')
        pieces = " ".join(pieces)


#Main program to run game
def main():
    global cursorPos
    global turns
    global pieces

    #instructions
    print('INSTRUCTIONS: \n Your goal is to alternate the following coins to appear as HTHTHTHTHT OR THTHTHTHTH. '
          'SELECT two coins by \n positioning the cursor under the left of the two coins, and then MOVE those two coins'
          ' to a new position. \n On the first turn, you are only able to move the two coins to the beginning or the '
          'end of the coins. \n Thereafter,you are only able to move coins into the empty gap that appears after the '
          'first turn.\n'
          ' NOTE: You can only use "M" after you have selected two valid coins. \n '
          'P.S. You only have FIVE(5) moves. Good luck!')

    #while loop for game
    while (turns < 5):
        moveCursor()

    #print
    pieces = pieces.replace(" ", "")
    print(pieces)

    #condition if user won or lost
    if((pieces[2:12]) == "THTHTHTHTH" or pieces[0:10] == "HTHTHTHTHT"):
        print('You win!')
    else:
        print('You lose! Try again!')

main()
