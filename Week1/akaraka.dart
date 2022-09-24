//akaraka 2022 lineup
void main() {
  Singer njs = new Singer('NewJeans', 2022, 1);
  Singer w = new Singer.fromMap({
    'name': 'winner',
    'year': 2014,
    'id': 4,
  });

  Idol i = new Idol('Ive', 2022, 5);
  i.saySinger();

  print(w.id);
}

class Singer {
  final name;
  num year;
  int id;

  Singer(
    String name,
    int year,
    int id,
  )   : this.name = name,
        this.year = year,
        this.id = id;

  Singer.fromMap(
    Map values,
  )   : this.name = values['name'],
        this.year = values['year'],
        this.id = values['id'];

  void saySinger() {
    print("안녕하세요, 저는 가수입니다.");
  }
}

class Idol extends Singer {
  Idol(
    String name,
    int year,
    int id,
  ) : super(
          name,
          year,
          id,
        );

  @override
  void saySinger() {
    super.saySinger();
    print("그리고 저는 아이돌입니다.");
  }
}
