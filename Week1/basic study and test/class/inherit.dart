void main() {
    Human peter = Human(20, "peter", HumanRace.Caucasian, 1000);
}

class Animal {
    int age;
    String name;

    Animal(this.age, this.name);

    void live() {
        print("this is alive animal");
    }
}

class Dog extends Animal {
    String owner;
    String specise;

    Dog(int age, String name, this.owner, this.specise) : super(age, name);

    void bark(){
        print("Bow-wow");
    }
}

class Human extends Animal {
    HumanRace race;
    int personal_asset;

    Human(int age, String name, this.race, this.personal_asset) : super(age, name);

    void greet() {
        print("Hi!");
    }
}

enum HumanRace {Caucasian, Asian, Negroid}

