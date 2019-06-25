import 'package:hn_app/json_parsing.dart';
import 'package:test_api/test_api.dart';

void main(){

//  test("parses topstories.json", (){
//    const jsonString = "[ 19831526, 19831385, 19817219, 19831991, 19830910, 19829412, 19831748, 19829087, 19830042, 19817264, 19831272, 19829349, 19812704, 19813993, 19817554, 19830255, 19828995, 19829775, 19829460, 19832270, 19831747, 19830264, 19827336, 19826668, 19830220, 19827521, 19822123, 19831407, 19829332, 19825059, 19826637, 19825632, 19829435, 19822152, 19829457, 19825670, 19826083, 19818899, 19817635, 19825202, 19821406, 19828317, 19829828, 19826379, 19830355, 19826827, 19824534, 19825170, 19827910, 19825862, 19827612, 19818089, 19828131, 19818078, 19826169, 19821850, 19827946, 19823464, 19829932, 19817531, 19825871, 19817760, 19830644, 19818916, 19822100, 19825878, 19830505, 19817985, 19824992, 19819636, 19816189, 19828448, 19829235, 19815618, 19823457, 19821359, 19814370, 19818024, 19823437, 19824082, 19813607, 19806422, 19822164, 19827142, 19825669, 19825566, 19818428, 19830625, 19816091, 19826344, 19828101, 19823022, 19822111, 19817002, 19810773, 19818892, 19810504, 19817434, 19825637, 19813748, 19817764, 19821272, 19831316, 19822065, 19831087, 19813586, 19813921, 19819919, 19829105, 19827918, 19825440, 19824016, 19822134, 19816974, 19824735, 19816282, 19822210, 19829841, 19808486, 19811715, 19819605, 19823773, 19819778, 19810092, 19812919, 19821101, 19810618, 19819789, 19813429, 19820218, 19812690, 19822019, 19820946, 19820118, 19818396, 19830998, 19829596, 19809513, 19818908, 19819249, 19816244, 19811093, 19817858, 19807829, 19817838, 19827674, 19823875, 19823157, 19829504, 19826640, 19811467, 19810334, 19811709, 19823701, 19812557, 19813554, 19811685, 19825830, 19807223, 19819398, 19813811, 19806920, 19810100, 19808999, 19815161, 19817810, 19813925, 19813643, 19808829, 19818946, 19806312, 19819571, 19826320, 19811495, 19817136, 19807042, 19808675, 19807035, 19819410, 19811718, 19826127, 19828022, 19818728, 19807046, 19812578, 19811063, 19821167, 19828873, 19819608, 19815300, 19823343, 19810126, 19813686, 19815515, 19807202, 19810981, 19811571, 19807981, 19828532, 19819746, 19806818, 19814626, 19808639, 19811988, 19819114, 19821104, 19824352, 19807247, 19813714, 19810897, 19824656, 19815732, 19818574, 19829812, 19806462, 19819284, 19818082, 19821830, 19814733, 19809793, 19812325, 19806241, 19825245, 19820951, 19816115, 19820920, 19819488, 19815155, 19814764, 19806772, 19823085, 19829289, 19810616, 19813852, 19813796, 19815373, 19806315, 19828953, 19824458, 19815140, 19818686, 19816569, 19825472, 19822403, 19822366, 19817834, 19825925, 19817547, 19819265, 19821847, 19813471, 19822714, 19809868, 19809232, 19824594, 19819190, 19817624, 19824681, 19807673, 19826217, 19815758, 19821379, 19827841, 19819610, 19806529, 19823489, 19818704, 19806998, 19808444, 19809195, 19825852, 19816839, 19822120, 19808270, 19815370, 19810688, 19806828, 19817749, 19810902, 19817488, 19817373, 19814545, 19817210, 19808759, 19811181, 19829252, 19820379, 19823246, 19813288, 19807103, 19813010, 19807002, 19806352, 19819098, 19816948, 19811425, 19815816, 19822681, 19809601, 19809270, 19818931, 19808862, 19808781, 19828512, 19814753, 19819695, 19819559, 19812210, 19810088, 19822880, 19806960, 19814937, 19813559, 19813466, 19825168, 19812312, 19812799, 19822801, 19819582, 19821902, 19813514, 19829287, 19828673, 19814424, 19821360, 19810521, 19824800, 19813054, 19816131, 19823359, 19810613, 19824722, 19808163, 19808952, 19817776, 19815312, 19806919, 19817113, 19820302, 19816967, 19809181, 19821079, 19813389, 19820924, 19820707, 19810299, 19820474, 19809867, 19817159, 19814385, 19815669, 19811580, 19813712, 19824525, 19807733, 19822776, 19818495, 19822505, 19814488, 19811599, 19815963, 19822060, 19812188, 19813785, 19821775, 19817368, 19815317, 19815141, 19816944, 19812575, 19808213, 19820746, 19810163, 19820551, 19816679, 19814336, 19819531, 19816067, 19813489, 19825482, 19813225, 19813200, 19815710, 19815643, 19812629, 19813752, 19811474, 19807082, 19813361, 19813655, 19810543, 19814739, 19817444, 19814579, 19809705, 19817132, 19808608, 19814046, 19808348, 19806188, 19813068, 19812008, 19814293, 19810159, 19810901, 19810563, 19809904, 19809839, 19808751, 19827847, 19814522, 19814521, 19814490, 19807114, 19814145, 19813985, 19806548, 19813719, 19811351, 19813651, 19806224, 19813417, 19813351, 19815259, 19811801, 19811441, 19811072, 19811068, 19811058, 19811051, 19810887, 19809770, 19809058, 19808969, 19808913, 19808376, 19808221, 19821599, 19828164, 19821476, 19819182, 19811045, 19809155, 19814693, 19814611, 19808714, 19816263, 19814834, 19817183, 19811183, 19826846, 19806744, 19816070, 19823465, 19816185, 19815077, 19814223, 19815063, 19826680, 19817333, 19817616, 19808935, 19827167, 19827105 ]";
//
//    expect(parseTopStories(jsonString).first, 19831526);
//  });

  test("parses item.json", (){
    const jsonString = """
{
  "by" : "dhouston",
  "descendants" : 71,
  "id" : 8863,
  "kids" : [ 9224, 8917, 8952, 8884, 8887, 8869, 8958, 8940, 8908, 9005, 8873, 9671, 9067, 9055, 8865, 8881, 8872, 8955, 10403, 8903, 8928, 9125, 8998, 8901, 8902, 8907, 8894, 8870, 8878, 8980, 8934, 8943, 8876 ],
  "score" : 104,
  "time" : 1175714200,
  "title" : "My YC app: Dropbox - Throw away your USB drive",
  "type" : "story",
  "url" : "http://www.getdropbox.com/u/2/screencast.html"
}
""";
    expect(parseArticle(jsonString).by, "dhouston");
  });




}