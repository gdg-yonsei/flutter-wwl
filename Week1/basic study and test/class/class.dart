void main() {
    Book bible = Book("Bible", "UNKNOWN", 800, 10);
    print(bible.name);
    print(bible.readUntil);
    bible.readTo(100);
    print(bible.readUntil);
    bible.readTo(1000);
    print(bible.readUntil);

    Book harry_potter = Book.allRead("Harry Potter", "J.K.Rowling", 500, 200);
    print(harry_potter.name);
    print(harry_potter.readUntil);

    print(harry_potter.owner);
    harry_potter.owner = "Me";
    print(harry_potter.owner);

}

class Book {
    String name;
    String author;
    int pages;
    double price;
    int readUntil = 0;
    String who_owns = "UNKOWN";

    Book(this.name, this.author, this.pages, this.price);
    Book.allRead(this.name, this.author, this.pages, this.price){
        this.readUntil = this.pages;
    }

    String get owner => who_owns;

    void set owner(String person){
        this.who_owns = person;
    }

    readTo(int page){
        if(page <= pages){
            this.readUntil = page;
        } else {
            print("INVALID PAGE INPUT");
        }
    }
}