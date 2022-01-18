import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  String dir = args[0];
  Directory dirdir = Directory("$dir/gen/kernel_llvm/");
  List<FileSystemEntity> dirlist = dirdir.listSync(recursive: true).toList();

  dirlist.forEach((el) {
    rename(el.path, dir);
  });

  print("\u2705 Kernels renamed!");
}

void rename(String name, String dir) {
  if (name.contains("/")) name = name.substring(name.lastIndexOf('/') + 1);
  String content = File("$dir/gen/kernel_llvm/$name").readAsStringSync();
  content = content.replaceAll("@kernel", "@renamed_kernel");
  File("$dir/gen/kernel_llvm/$name").writeAsStringSync(content);
}
