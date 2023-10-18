void outer(String name, String id) {
  String inner() {
    int firstSpacePosition = name.indexOf(' ');
    String firstInitial = name[firstSpacePosition + 1];
    String lastName = name.substring(0, firstSpacePosition);

    return ('Hello Agent $firstInitial.$lastName your id is $id');
  }

  print(inner());
}
