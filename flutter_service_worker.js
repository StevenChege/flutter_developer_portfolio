'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "bae86380d78af2fbd6a0db4a5868582c",
"manifest.json": "7772f1db39348196899f0acf1c8c4219",
"version.json": "93f36c3751ee3f609beda61cb5641710",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"index.html": "0f91ab37c149fb3646a06d8c679aec6f",
"/": "0f91ab37c149fb3646a06d8c679aec6f",
"icons/Icon-512.png": "b2a0ab07974a3398bf5f6119bfba8b50",
"icons/Icon-192.png": "44f52fa806b8901e7e2c5d04a068fda8",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"assets/AssetManifest.json": "4184ec876e31be72acbe87295c8c3d4b",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b37ae0f14cbc958316fac4635383b6e8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "aa1ec80f1b30a51d64c72f669c1326a7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5178af1d278432bec8fc830d50996d6f",
"assets/assets/fonts/HelveticaNowDisplay-Medium.ttf": "53b5d05abde1c9192de6f6a954a5fef9",
"assets/assets/fonts/agustina.otf": "7b9833076716a8d14eec0cf885a3153c",
"assets/assets/fonts/HelveticaNowDisplay-ExtraBold.ttf": "d62cd5734d3a8ec9c487fa9aafcd9c68",
"assets/assets/fonts/HelveticaNowDisplay-Regular.ttf": "9632144b89660f0f032a3a0a01e533c7",
"assets/assets/images/404err.svg": "c3f209aded0706c16530acd2694646bd",
"assets/assets/images/lamp.png": "ccda0abd490e08f4c880344ec8e80430",
"assets/assets/images/work_4.png": "74e5fc2d50c04cdd638cfa878bd2ef66",
"assets/assets/images/hand.png": "d7c6f40ec1244a86fb4610cd515fee55",
"assets/assets/images/landing_image2.jpg": "74f8773c42954505c79f53d948d3a222",
"assets/assets/images/github.png": "3d4c7482f267f5accbb7461766f3f790",
"assets/assets/images/whats_app.png": "a59e768eebc730446e35f676487b8815",
"assets/assets/images/desktop.png": "d4794e3ddcb4fce9a2c12246e3b4d8a7",
"assets/assets/images/work_3.png": "035401cff7e0fc62875bb280c53523c5",
"assets/assets/images/Hover.png": "f0a2318c40269d84384f56f54d25ad69",
"assets/assets/images/arrowhead-up.png": "6debbfa27236d71812fcd3cbcbced73a",
"assets/assets/images/sign_white.png": "0496f316c753d1d52a7081c735289b82",
"assets/assets/images/Hover_flip.png": "57d317fc22080b316188ebe73407065b",
"assets/assets/images/people.png": "f6561cf54d239a098a72225cd21bdc80",
"assets/assets/images/hi.gif": "cad5918d86b6a7e83f1fb4acead70e4c",
"assets/assets/images/yui.png": "3cf727247752b730a05f51fe0177036f",
"assets/assets/images/email.png": "f59e8ec158ec05d21c8b251d7b0017ca",
"assets/assets/images/blog.png": "5e1cbb2c67e2b8ea9ae4bcce0705d2a4",
"assets/assets/images/rapid.png": "8d3ff9fbdddae77403af46662f011ee8",
"assets/assets/images/safari_retreats_image.png": "ff051e85041efa8bc276060357d07572",
"assets/assets/images/landing_image4.jpg": "7d5b39f75a0e395be8c9cfaece9a09f2",
"assets/assets/images/persona.png": "cd843ab057f7130a7daedb4cb2f1f6d6",
"assets/assets/images/qrcode_app_image.jpg": "b5a50b02b48902aca9740cddce836c0c",
"assets/assets/images/twitter.png": "3a012c94a4478ff39f043cb6fcac7d0a",
"assets/assets/images/work_2.png": "e1d3843d3e6d8752cfe40f655caab6d5",
"assets/assets/images/sign.png": "65512d5220d17943bed196dc7087159f",
"assets/assets/images/google-play.png": "fb3f50af5e98fa60446b185970137a12",
"assets/assets/images/bg_img_2.png": "8257ef89b2dfeab767578260965a7e2d",
"assets/assets/images/contact_icon.png": "856b95eb03d60fa2576140e4c3d034b9",
"assets/assets/images/recent_work_bg.png": "531a8461fd1ec42f03f4cfb891790635",
"assets/assets/images/download.png": "d9317d736e7b69f20f57f6ab13f34d3c",
"assets/assets/images/flutter.png": "0b5a2f8d3f4d173805affaf9f84f6c87",
"assets/assets/images/graphic.png": "d7aaa5a5615483382572b5d5c24c5e5b",
"assets/assets/images/Intreaction_design.png": "98e873648b7c2d3062556f2f8c09d4c3",
"assets/assets/images/landing_image1.jpg": "7c3edd3139e99d12f477fa1d9f63318e",
"assets/assets/images/android.png": "765adf924dae4d5e67bfb640bcd05c48",
"assets/assets/images/app.png": "9d2da88edb7f550ef24874b306b4ae12",
"assets/assets/images/landing_image3.jpg": "595ce968e815d9ed1bb9f4dba1c1c7d0",
"assets/assets/images/night.png": "06e78d9b2daa2690a909d7c5631fe0d9",
"assets/assets/images/fiverr.png": "9d4018924e1f0e983a86e7eaf8a0958b",
"assets/assets/images/ui.png": "6ca82a6c70f80fd75c56b1fe66caa180",
"assets/NOTICES": "53cbaa9480881bdfa849aede28e15195",
"assets/FontManifest.json": "83c3d7625dc91665dfaaf2a5682a21da",
"splash/style.css": "fa7b5e5be4245f87a471cbfed441b461",
"splash/img/light-4x.png": "faddaca4befd92fbb851a85fae38163c",
"splash/img/dark-3x.png": "e504a762c0ec55a5fb5e995859d25165",
"splash/img/dark-1x.png": "8082b2e7643375e0194db4031cbb7056",
"splash/img/dark-2x.png": "4766bb2f71ad704eee71e2dd97f89fc4",
"splash/img/dark-4x.png": "faddaca4befd92fbb851a85fae38163c",
"splash/img/light-3x.png": "e504a762c0ec55a5fb5e995859d25165",
"splash/img/light-1x.png": "8082b2e7643375e0194db4031cbb7056",
"splash/img/light-2x.png": "4766bb2f71ad704eee71e2dd97f89fc4",
"splash/splash.js": "c6a271349a0cd249bdb6d3c4d12f5dcf",
"favicon.png": "b2a0ab07974a3398bf5f6119bfba8b50"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
