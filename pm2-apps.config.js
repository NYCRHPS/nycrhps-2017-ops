module.exports = {
  apps : [{
    name        : "website",
    script      : "index.js",
    cwd			: "~/nycrhps-2017/",
    watch       : true,
    env: {
      "NODE_ENV": "development",
    },
    env_production : {
       "NODE_ENV": "production"
    }
  }]
};
