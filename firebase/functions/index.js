const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("users/" + user.uid);
  await firestore
    .collection("activities")
    .where("user", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        await doc.ref
          .collection("accelerometerData")
          .get()
          .then(async (q) => {
            for (var d of q.docs) {
              console.log(
                `Deleting document ${d.id} from collection accelerometerData`,
              );
              await d.ref.delete();
            }
          });
      }
    });
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
