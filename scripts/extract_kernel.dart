import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  String dir = args[0];
  Directory dirdir = Directory("$dir/gen/full_lowered/");
  List<FileSystemEntity> dirlist = dirdir.listSync(recursive: true).toList();

  dirlist.forEach((el) {
    extract(el.path, dir);
  });

  print("\u2705 Kernels extracted!");
}

void extract(String name, String dir) {
  if (name.contains("/")) name = name.substring(name.lastIndexOf('/') + 1);
  String content = File("$dir/gen/full_lowered/$name").readAsStringSync();
  List<String> lines = LineSplitter().convert(content);

  String exFunc = "";
  String funcDecl = "";
  bool isPrivate = false;

  bool startCopy = false;
  int brackCount = 1;

  for (String line in lines) {
    if (startCopy) {
      exFunc += line + "\n";

      brackCount += '{'.allMatches(line).length;
      brackCount -= '}'.allMatches(line).length;

      if (brackCount == 0) startCopy = false;
    } else if (line.contains("func") && line.contains("kernel")) {
      isPrivate = line.contains("private");
      exFunc = line + "\n";
      int ob = line.lastIndexOf('{');
      funcDecl = line.substring(0, ob);
      startCopy = true;
    }
  }

  bool first = true;
  content = lines.fold("", (p, e) {
    if (first) {
      first = false;
      return p;
    }
    return "$p$e\n";
  });

  if (!isPrivate) {
    funcDecl = funcDecl.replaceFirst("func", "func private");
  }

  content = content.replaceAll(exFunc, "");
  content = lines[0] + "\n$funcDecl\n" + content;

  if (!isPrivate) {
    exFunc = exFunc.replaceFirst("func", "func private");
  }

  File("$dir/gen/kernel/$name").writeAsStringSync(exFunc);
  File("$dir/gen/driver/$name").writeAsStringSync(content);
}
