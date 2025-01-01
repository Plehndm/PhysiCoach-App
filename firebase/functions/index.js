const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("users/" + user.uid);
  await firestore.collection("users").doc(user.uid).delete();
  await firestore
    .collection("activities")
    .where("user", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(`Deleting document ${doc.id} from collection activities`);
        await doc.ref.delete();
      }
    });
  await firestore
    .collection("runningData")
    .where("user", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(`Deleting document ${doc.id} from collection runningData`);
        await doc.ref.delete();
      }
    });
  await firestore
    .collection("trippleJumpData")
    .where("user", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(
          `Deleting document ${doc.id} from collection trippleJumpData`,
        );
        await doc.ref.delete();
      }
    });
  await firestore
    .collection("accelerometerData")
    .where("user", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(
          `Deleting document ${doc.id} from collection accelerometerData`,
        );
        await doc.ref.delete();
      }
    });
  await firestore
    .collection("longJumpData")
    .where("user", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(`Deleting document ${doc.id} from collection longJumpData`);
        await doc.ref.delete();
      }
    });
});
