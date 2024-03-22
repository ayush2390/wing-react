bring ex;
bring cloud;
let api = new cloud.Api(
  cors: true
);
api.get("/title", inflight () => {
    log("Someone called me");
  return {
    status: 200,
    body: "Ayush Thakur this side"
  };
});

let react = new ex.ReactApp(
    useBuildCommand: true,
    projectPath: "../client",
    buildCommand: "npm run start",
    );
    react.addEnvironment("title", "Learn React with Wing");
    react.addEnvironment("apiUrl", api.url);

// react.addEnvironment("title", "Learn React with Wing");

// let api = new cloud.Api(
//   cors: true
// );

// react.addEnvironment("apiUrl", api.url);

// api.get("/title", inflight () => {
//   return {
//     status: 200,
//     body: "Hello from the API"
//   };
// });