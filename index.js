// Development
var DEVELOPER_TOKEN = "S=s1:U=93789:E=16245b78c23:C=15aee065d98:P=1cd:A=en-devtoken:V=2:H=40111702b333cd21cfe23e33c1c9875a";
// Production
//var DEVELOPER_TOKEN = "S=s645:U=6bd656e:E=162472919a0:C=15aef77eb10:P=1cd:A=en-devtoken:V=2:H=d01e20cad281b26f2cb484b850454864";

var Evernote = require('evernote');
var client = new Evernote.Client({ token: DEVELOPER_TOKEN });
var noteStore = client.getNoteStore();

//notebook取得
// noteStore.getPublicNotebook('tonishi157', 'korean').then(function(notebook) {
//   console.log(notebook);
// });

var filter = {
  notebookGuid: '2dc2d3f1-588e-4cdb-907e-21b9be936c3e'
};
var spec = {
  includeTitle: true,
  includeCreated: true,
  includeTagGuids: true
};

//notebookのnote一覧取得
noteStore.findNotesMetadata(filter, 0, 100, spec).then(function(notebook) {
  console.log(notebook.notes);
});

//notebookのタグ一覧取得
noteStore.listTagsByNotebook('2dc2d3f1-588e-4cdb-907e-21b9be936c3e').then(function(tags){
  console.log(tags);
});
