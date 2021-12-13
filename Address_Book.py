# import library
from tkinter import *

# initialize window
root = Tk()
root.geometry('600x600')
bg = PhotoImage(file="C:/vc/img11.png")
my_label = Label(root, image=bg)
my_label.place(x=0, y=0, relwidth=1, relheight=1)
root.title('VC Book')
root.resizable(0, 0)
contactlist = [
    ['Sample Contact', 00000000, 'mail']
]

Name = StringVar()
Number = StringVar()
Email = StringVar()

# create frame
frame = Frame(root)
frame.pack(side=LEFT)

scroll = Scrollbar(frame, orient=HORIZONTAL)
select = Listbox(frame, yscrollcommand=scroll.set, height=20, width=30)
scroll.config(command=select.yview)
scroll.pack(side=LEFT, fill=Y)
select.pack(side=LEFT, fill=BOTH, expand=1)


# function to get select value

def Selected():
    return int(select.curselection()[0])


# to add a new contact
def AddContact():
    contactlist.append([Name.get(), Number.get(), Email.get()])
    Select_set()


# fun to edit existing contact(first select the contact then click on view button then edit the contact and then click on edit button)
def EDIT():
    contactlist[Selected()] = [Name.get(), Number.get(),Email.get()]
    Select_set()


# to delete selected contact
def DELETE():
    del contactlist[Selected()]
    Select_set()


# to view selected contact(first select then click on view button)
def VIEW():
    NAME, PHONE, mail = contactlist[Selected()]
    Name.set(NAME)
    Number.set(PHONE)
    Email.set(mail)
    Select_set()


#exit  window
def EXIT():
    root.destroy()


# empty name and number field
def RESET():
    Name.set('')
    Number.set('')
    Email.set('')


def Select_set():
    contactlist.sort()
    select.delete(0, END)
    for name, phone, Email in contactlist:
        select.insert(END, name)


Select_set()
 #labels and entry widget
Label(root, text="VC CONTACT BOOK", font='Bold', bg='Orange').place(x=225, y=65)

Label(root, text='Name', font='italic', bg='WHITE').place(x=330, y=180)
Entry(root, textvariable=Name).place(x=420, y=185)
Label(root, text='Mobile nO.', font='italic', bg='WHITE').place(x=330, y=213)
Entry(root, textvariable=Number).place(x=420, y=215)
Label(root, text='Email', font='italic', bg='WHITE').place(x=330, y=255)
Entry(root, textvariable=Email).place(x=420, y=255)
#define buttons
Button(root, text=" Add", font='arial 12 bold', bg='SlateGray4', command=AddContact).place(x=30, y=550)
Button(root, text="Update", font='arial 12 bold', bg='SlateGray4', command=EDIT).place(x=110, y=550)
Button(root, text="Delete", font='arial 12 bold', bg='SlateGray4', command=DELETE).place(x=200, y=550)
Button(root, text="View", font='arial 12 bold', bg='SlateGray4', command=VIEW).place(x=300, y=550)
Button(root, text="EXIT", font='arial 12 bold', bg='RED', command=EXIT).place(x=400, y=550)
Button(root, text="Reset", font='arial 12 bold', bg='SlateGray4', command=RESET).place(x=500, y=550)

root.mainloop()

