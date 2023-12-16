
import 'package:firebase_auth/firebase_auth.dart';

class  FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  Future<User?> signUpWithEmailAndPassword(String email , String password)
  async{
    try{
      UserCredential createUserResponse = await _auth.createUserWithEmailAndPassword(
          email:email ,  password: password);
      return createUserResponse.user;
    }
    catch (e){
    print('Some error occured');
    }
    return null;
  }
  Future<User?> signInWithEmailAndPassword(String email , String password , String confirmpassword)
  async{
    try{
      UserCredential signInResponse = await _auth.signInWithEmailAndPassword(
          email:email ,  password: password , );
      return signInResponse.user;
    }
    catch (e){
      print('Some error occured');
    }
    return null;
  }


}

