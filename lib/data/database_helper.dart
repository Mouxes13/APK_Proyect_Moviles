import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import '../model/user_model.dart';
import '../model/aspi_model.dart';

class DBHelper {

  static final DBHelper _instance = DBHelper.internal();
  DBHelper.internal();
  factory DBHelper() => _instance;
  static Database _db;
  
  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDB();
    return _db;
  }

  Future<Database> initDB() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'fworkout.db');
    Database db = await openDatabase(
      path,
      version: 1,
      onCreate: _createTables,
    );
    print('[DBHelper] initDB: Success');
    return db;
  }

  void _createTables(Database db, int version) async {
    await db.execute(
      'CREATE TABLE User(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, password TEXT),CREATE TABLE Escuela(id INTEGER KEY AUTOINCREMENT,name TEXT, passord TEXT,subnivel INTEGER, municipio INTEGER,)',    
    );
    print('[DBHelper] _createTables: Success');
    
  }

  void saveAspi(int id,String name, String password, int subnivel,int municipio) async {
    var dbClient = await db;
    await dbClient.transaction((trans) async {
      return await trans.rawInsert(

"INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(1, ' Preparatoria Independencia de Río Grande', ' 32PBH0002I', 2, 2444),INSERT INTO User(id,name,password,subnivel,municipio) VALUES(2, ' Juana de Arco', ' 32PBH0003H', 2, 2461),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(3, ' Colegio del Centro', ' 32PBH0005F', 2, 2461),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(4, ' Escuela Prep Instituto Zacatecas', ' 32PBH0018J', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(5, ' Instituto Tecnológico y de Estudios Superiores de Monterrey Campus Zacatecas', ' 32PBH0036Z', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(6, ' Preparatoria UAF', ' 32PBH0042J', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(7, ' Preparatoria Vetagrande', ' 32PBH0050S', 2, 2455),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(8, ' Instituto Pedagógico J. Peaget', ' 32PBH0051R', 2, 2461),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(9, ' Instituto Educativo de Zacatecas', ' 32PBH0052Q', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(10, ' Colegio Federico Froebel', ' 32PBH0053P', 2, 2461),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(11, ' Centro Escolar Lancaster de Zacatecas', ' 32PBH0056M', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(12, ' Universidad Autónoma de Durango Campus Zacatecas', ' 32PBH0060Z', 2, 2461),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(13, ' Lic. José Minero Roque', ' 32PBH0065U', 2, 2410),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(14, ' Preparatoria Comercial Sor Juana Inés de La Cruz', ' 32PBH0069Q', 2, 2461),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(15, ' Academia Comercial Remington', ' 32PBH0070F', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(16, ' Preparatoria San Matías', ' 32PBH0071E', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(17, ' Instituto Maxwell', ' 32PBH0077Z', 2, 2425),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(18, ' Colegio Juan Pablo Ii', ' 32PBH0078Y', 2, 2444),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(19, ' Colegio Daniel Márquez Medina A.C.', ' 32PBH0079X', 2, 2425),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(20, ' Colegio Santa Elena', ' 32PBH0080M', 2, 2461),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(21, ' Instituto de Formación Integral de Zacatecas', ' 32PBH0082K', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(22, ' Escuela Preparatoria Particular Ramón  López Velarde', ' 32PBH0085H', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(23, ' Instituto Ausubel', ' 32PBH0086G', 2, 2429),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(24, ' Instituto Educativo Nochistlan', ' 32PBH0088E', 2, 2439),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(25, ' Liceo E.S.L. Guadalupe', ' 32PBH0092R', 2, 2461),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(26, ' Liceo Universitario Guadalupe', ' 32PBH0093Q', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(27, ' Instituto del Carmen de Guadalupe', ' 32PBH0094P', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(28, ' Instituto de Educación MONREAL Sandoval', ' 32PBH0096N', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(29, ' CONSEJO Educativo de Zacatecas', ' 32PBH0097M', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(30, ' Colegio Juan Pablo Ii El Grande', ' 32PBH0098L', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(31, ' Superior Teaching Preparatoria', ' 32PBH0102H', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(32, ' Bachillerato General Sierra Madre', ' 32PBH0105E', 2, 2461),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(33, ' Instituto Educativo de Calera', ' 32PBH0106D', 2, 2410),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(34, ' Instituto Asis de Guadalupe', ' 32PBH0107C', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(35, ' Colegio Río Grande', ' 32PBH0108B', 2, 2444),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(36, ' Instituto Edison Ac', ' 32PCB0021B', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(37, ' Cultura  Educación de Fresnillo Asociación Civil', ' 32PCB0022A', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(38, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32DMS0001Q', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(39, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32DMS0002P', 2, 2454),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(40, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32DMS0003O', 2, 2434),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(41, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0001P', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(42, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0002O', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(43, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0003N', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(44, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0004M', 2, 2440),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(45, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0005L', 2, 2454),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(46, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0006K', 2, 2419),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(47, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0007J', 2, 2456),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(48, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0010X', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(49, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0012V', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(50, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0013U', 2, 2431),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(51, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0014T', 2, 2431),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(52, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0015S', 2, 2459),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(53, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0016R', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(54, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0017Q', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(55, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0018P', 2, 2444),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(56, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0019O', 2, 2431),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(57, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0021C', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(58, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0022B', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(59, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0023A', 2, 2449),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(60, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0024Z', 2, 2455),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(61, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0025Z', 2, 2452),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(62, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0026Y', 2, 2407),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(63, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0027X', 2, 2456),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(64, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0028W', 2, 2421),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(65, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0029V', 2, 2444),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(66, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0030K', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(67, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0031J', 2, 2447),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(68, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0032I', 2, 2410),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(69, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0033H', 2, 2454),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(70, ' El Cazadero', ' 32EMS0035F', 2, 2445),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(71, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0036E', 2, 2421),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(72, ' Educación Media Superior A Distancia', ' 32EMS0037D', 2, 2454),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(73, ' Educación Media Superior A Distancia', ' 32EMS0038C', 2, 2456),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(74, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0039B', 2, 2460),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(75, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0040R', 2, 2455),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(76, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0041Q', 2, 2462),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(77, ' Centro de Servicios de Educación Media Superior A Distancia', ' 32EMS0042P', 2, 2429),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(78, ' Profr. José Santos Valdez', ' 32DBP0002M', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(79, ' Lic. Mauricio Magdaleno', ' 32EBH0001D', 2, 2449),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(80, ' José G Montes', ' 32EBH0002C', 2, 2453),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(81, ' Profa. Ma de La O Marín Mota', ' 32EBH0003B', 2, 2435),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(82, ' Francisco García Salinas', ' 32EBH0006Z', 2, 2425),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(83, ' Escuela Preparatoria José Rodríguez Elías', ' 32EBH0007Y', 2, 2428),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(84, ' Valentín Gómez Farías', ' 32EBH0008X', 2, 2436),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(85, ' Prof. Salvador Vidal G', ' 32EBH0009W', 2, 2451),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(86, ' González Ortega', ' 32EBH0011K', 2, 2452),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(87, ' Ing.  Gral. Felipe B. Berriozabal', ' 32EBH0019C', 2, 2424),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(88, ' Gral Lazaro Cardenas', ' 32EBH0020S', 2, 2439),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(89, ' Victor Rosales', ' 32EBH0027L', 2, 2410),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(90, ' Preparatoria Villanueva', ' 32EBH0028K', 2, 2460),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(91, ' Candelario Huizar', ' 32EBH0030Z', 2, 2460),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(92, ' Panfilo Natera', ' 32EBH0031Y', 2, 2421),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(93, ' Lazaro Cardenas del Río', ' 32EBH0032X', 2, 2447),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(94, ' José Vasconcelos', ' 32EBH0033W', 2, 2431),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(95, ' Beatriz Márquez Acosta', ' 32EBH0034V', 2, 2425),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(96, ' Ramón  López Velarde', ' 32EBH0035U', 2, 2432),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(97, ' Adolfo López Mateos', ' 32EBH0036T', 2, 2447),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(98, ' Jaime Torres Bodet', ' 32EBH0037S', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(99, ' Tayahua', ' 32EBH0038R', 2, 2460),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(100, ' Genaro Codina', ' 32EBH0039Q', 2, 2449),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(101, ' Lic. Agustín Yañez', ' 32EBH0040F', 2, 2423),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(102, ' Felix U Gómez', ' 32EBH0041E', 2, 2446),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(103, ' Francisco Goitia', ' 32EBH0042D', 2, 2415),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(104, ' Jesús Reyes Heroles', ' 32EBH0043C', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(105, ' Daniel Camarena', ' 32EBH0044B', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(106, ' Genaro Codina', ' 32EBH0045A', 2, 2439),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(107, ' Eulalio Gutiérrez', ' 32EBH0046Z', 2, 2412),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(108, ' Salvador Varela Resendiz', ' 32EBH0048Y', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(109, ' Colegio de Bachilleres ZACATECAS', ' 32ECB0001I', 2, 2422),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(110, ' Colegio de Bachilleres', ' 32ECB0002H', 2, 2456),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(111, ' Colegio de Bachilleres', ' 32ECB0003G', 2, 2458),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(112, ' Colegio de Bachilleres', ' 32ECB0005E', 2, 2425),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(113, ' Colegio de Bachilleres', ' 32ECB0006D', 2, 2447),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(114, ' Colegio de Bachilleres Ojocaliente', ' 32ECB0007C', 2, 2441),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(115, ' Colegio de Bachilleres Pinos', ' 32ECB0008B', 2, 2443),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(116, ' Colegio de Bachilleres Sain Alto', ' 32ECB0009A', 2, 2445),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(117, ' Colegio de Bachilleres', ' 32ECB0010Q', 2, 2414),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(118, ' Colegio de Bachilleres', ' 32ECB0011P', 2, 2406),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(119, ' Colegio de Bachilleres', ' 32ECB0012O', 2, 2407),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(120, ' Colegio de Bachilleres', ' 32ECB0013N', 2, 2408),INSERT INTO Aspi(id,name,password,subnivel,municipio) VALUES(121, ' Colegio de Bachilleres', ' 32ECB0014M', 2, 2409),"
      );
    });
    print('[DBHelper] saveAspi: Success | $id,$name, $password,$subnivel,$municipio');
  }
  
  void saveUser(String name, String email, String password) async {
    var dbClient = await db;
    await dbClient.transaction((trans) async {
      return await trans.rawInsert(
        'INSERT INTO User(name, email, password) VALUES(\'$name\', \'$email\', \'$password\')',
        
      );
    });
    print('[DBHelper] saveUser: Success | $name, $email, $password');
  }

  Future<List<User>> getUser(String email, String password) async {
    var dbClient = await db;
    List<User> usersList = List();
    List<Map> queryList = await dbClient.rawQuery(
      'SELECT * FROM User WHERE email=\'$email\' AND password=\'$password\'',
    );
    print('[DBHelper] getUser: ${queryList.length} users');
    if (queryList != null && queryList.length > 0) {
      for (int i = 0; i < queryList.length; i++) {
        usersList.add(User(
          queryList[i]['id'].toString(),
          queryList[i]['name'],
          queryList[i]['email'],
          queryList[i]['password'],
        ));
      }
      print('[DBHelper] getUser: ${usersList[0].name}');
      return usersList;
    } else {
      print('[DBHelper] getUser: User is null');
      return null;
    }
  }
  Future<List<Aspi>> getAspi(int id,String name, String password, int subnivel,int municipio) async {
    var dbClient = await db;
    List<Aspi> aspiList = List();
    List<Map> queryList = await dbClient.rawQuery(
      'SELECT * FROM User WHERE id=\'$id\',name=\'$name\',subnivel=\'$subnivel\',municipio=\'$municipio\', AND password=\'$password\'',
    );
    print('[DBHelper] getUser: ${queryList.length} aspirs');
    if (queryList != null && queryList.length > 0) {
      for (int i = 0; i < queryList.length; i++) {
        aspiList.add(Aspi(
          queryList[i]['id'].toString(),
          queryList[i]['name'],
          queryList[i]['password'],
          queryList[i]['municipio'].toString(),
          queryList[i]['subnivel'].toString(),
          queryList[i]['email'],
            queryList[i]['movil'].toString(),
          
          
          
        ));
      }
      print('[DBHelper] getAspi: ${aspiList[0].name}');
      return aspiList;
    } else {
      print('[DBHelper] getAspi: User is null');
      return null;
    }
  }

}
