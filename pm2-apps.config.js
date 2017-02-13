module.exports = {
  apps : [{
    name        : "website",
    script      : "~/nycrhps-2017/index.js",
    watch       : true,
    env: {
      "NODE_ENV": "development",
    },
    env_production : {
       "NODE_ENV": "production"
    }
  }]
};
