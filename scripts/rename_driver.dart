import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  String dir = args[0];
  Directory dirdir = Directory("$dir/gen/driver_llvm/");
  List<FileSystemEntity> dirlist = dirdir.listSync(recursive: true).toList();

  dirlist.forEach((el) {
    rename(el.path, dir);
  });

  print("\u2705 Kernels renamed!");
}

// TODO: Needs code inserted to call init & exit

void rename(String name, String dir) {
  if (name.contains("/")) name = name.substring(name.lastIndexOf('/') + 1);
  String content = File("$dir/gen/driver_llvm/$name").readAsStringSync();

  content = content.replaceAll("@_mlir_ciface_kernel_", "@__program_kernel_");

  File("$dir/gen/driver_llvm/$name").writeAsStringSync(content);
}
