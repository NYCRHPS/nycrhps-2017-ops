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
		},
		interpreter : 'node@6.10.0'
	}, {
		name: "admin",
		script: "index.js",
		cwd: "/home/ubuntu/nycrhps-2017-admin/",
		watch: true,
		ignore_watch : ["node_modules", "tmp"],
		env: {
			"NODE_ENV": "development",
		},
		env_production: {
			"NODE_ENV": "production"
		},
		interpreter : 'node@6.10.0'
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
		},
		interpreter : 'node@6.10.0'
	}, {
		name: "discord-bot",
		script: "index.js",
		cwd: "/home/ubuntu/NYCRHPS-discord-bot/",
		watch: true,
		env: {
			"NODE_ENV": "development",
		},
		env_production: {
			"NODE_ENV": "production"
		},
		interpreter : 'node@16.13.2'
	}]
};
