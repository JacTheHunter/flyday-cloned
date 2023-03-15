importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-messaging-compat.js");

firebase.initializeApp({
    apiKey: "AIzaSyDlArSkMf9nPYpnYunPP9v6YKzST0JwqbA",
    authDomain: "flyday-broker.firebaseapp.com",
    projectId: "flyday-broker",
    storageBucket: "flyday-broker.appspot.com",
    messagingSenderId: "40282239780",
    appId: "1:40282239780:web:5e2e9cd05736c4bd2b39b1"
});
// Necessary to receive background messages:
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((m) => {
  console.log("onBackgroundMessage", m);
});