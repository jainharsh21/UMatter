import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String uID;
String name;
String email;
String imageUrl;

Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser userDoctor = authResult.user;

  // Checking if email and name is null
  assert(userDoctor.email != null);
  assert(userDoctor.displayName != null);
  assert(userDoctor.photoUrl != null);

  name = userDoctor.displayName;
  email = userDoctor.email;
  imageUrl = userDoctor.photoUrl;
  uID = userDoctor.uid;

  // Only taking the first part of the name, i.e., First Name
  if (name.contains(" ")) {
    name = name.substring(0, name.indexOf(" "));
  }

  assert(!userDoctor.isAnonymous);
  assert(await userDoctor.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(userDoctor.uid == currentUser.uid);

  return 'signInWithGoogle succeeded: $userDoctor';
}

void signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Doctor Sign Out");
}