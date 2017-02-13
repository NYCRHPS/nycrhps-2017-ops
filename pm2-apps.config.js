module.exports = {
	apps: [{
		name: "website",
		script: "index.js",
		cwd: "/home/ubuntu/nycrhps-2017/",
		watch: true,
		env: {
			"NODE_ENV": "development",
		},
		env_production: {
			"NODE_ENV": "production"
		}
	}, {
		name: "admin",
		script: "index.js",
		cwd: "/home/ubuntu/nycrhps-2017-admin/",
		watch: true,
		env: {
			"NODE_ENV": "development",
		},
		env_production: {
			"NODE_ENV": "production"
		}
	}, {
		name: "casting",
		script: "index.js",
		cwd: "/home/ubuntu/nycrhps-casting/",
		watch: true,
		env: {
			"NODE_ENV": "development",
		},
		env_production: {
			"NODE_ENV": "production"
		}
	}]
};
