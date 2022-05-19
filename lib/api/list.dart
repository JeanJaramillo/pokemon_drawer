import 'pokedext.dart';

class listt extends StatelessWidget {
  pokedext poke;

  listt({required this.peli});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.poke.name),
      subtitle: Text(this.poke.weight +
          " (" +
          this.poke.height.toString() +
          ")"),
      trailing: Image.network(this.poke.getImage()),
      onTap: () {
        Navigator.push(
            context,'/');
      },
    );
  }
}