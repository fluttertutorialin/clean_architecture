/*
Developer: Lakhani kamlesh
Create Date: 20-11-21 3:41
Use: Create get storage method write, writeIfNull, writeInMemory, read, hasData, remove, erase
*/

abstract class GetStorageRepository {
  //WRITE DATA ON YOUR CONTAINER
  Future<void> write(String key, dynamic value);

  //WRITE DATA ON YOUR ONLY IF DATA IS NULL
  Future<void> writeIfNull(String key, dynamic value);

  //WRITE IN MEMORY
  void writeInMemory(String key, dynamic value);

  //READS A VALUE IN YOUR CONTAINER WITH THE GIVEN KEY
  T? read<T>(String key);

  //SESSION CHECK THE DATA IS AVAILABLE RETURN TRUE ELSE FALSE
  bool hasData(String key);

  //REMOVE DATA FROM CONTAINER BY KEY
  Future<void> remove(String key);

  //CLEAR ALL DATA ON YOUR CONTAINER
  Future<void> erase();
}