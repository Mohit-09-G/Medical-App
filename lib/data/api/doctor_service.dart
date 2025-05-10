import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:health_app/data/models/usermodel.dart';

class DoctorService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference _doctorCollection;
  final RxList<DoctorsModel> doctorsList = RxList<DoctorsModel>();

  DoctorService() {
    _doctorCollection = _firebaseFirestore.collection('doctors');
  }

  Future<void> uploadDoctors() async {
    try {
      WriteBatch batch = _firebaseFirestore.batch();

      for (var doctor in doctorsList) {
        DocumentReference documentReference = _doctorCollection.doc();
        batch.set(documentReference, doctor.toMap());
      }

      await batch.commit();
      print('All doctors uploaded successfully!');
    } catch (e) {
      print('Error uploading doctors: $e');
      rethrow;
    }
  }

  Future<void> downloadDoctors() async {
    try {
      QuerySnapshot querySnapshot = await _doctorCollection.get();

      doctorsList.clear();
      doctorsList.addAll(
        querySnapshot.docs
            .map((doc) =>
                DoctorsModel.fromMap(doc.data() as Map<String, dynamic>))
            .toList(),
      );

      print('Doctors data downloaded successfully!');
    } catch (e) {
      print('Error downloading doctors: $e');
      rethrow;
    }
  }

  Future<void> insertDialogData(
      String docname, String docSpeciality, String docEducation) async {
    try {
      DocumentReference documentReference = _doctorCollection.doc();
      await documentReference.set({
        'name': docname,
        'speciality': docSpeciality,
        'education': docEducation,
      });
      print("Doctor data added successfully!");
    } catch (e) {
      print("Error adding doctor data: $e");
    }
  }
}
