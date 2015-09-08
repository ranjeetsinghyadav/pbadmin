dataSource {
	pooled = true
	jmxExport = true
	driverClassName = "org.h2.Driver"
	username = "sa"
	password = ""
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = false
	//    cache.region.factory_class = 'org.hibernate.cache.SingletonEhCacheRegionFactory' // Hibernate 3
	cache.region.factory_class = 'org.hibernate.cache.ehcache.SingletonEhCacheRegionFactory' // Hibernate 4
	singleSession = true // configure OSIV singleSession mode
	flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

grails {
	mongo {
		host = "10.0.8.62"
		port = 27017
		username = "portaladmin"
		password = "secret"
		databaseName = "pbadmin"
//		connectionString = "mongodb://10.0.8.62/pbadmin"
		
//		options {
//			connectionsPerHost = 10 // The maximum number of connections allowed per host
//			threadsAllowedToBlockForConnectionMultiplier = 5
//			maxWaitTime = 120000 // Max wait time of a blocking thread for a connection.
//			connectTimeout = 10 // The connect timeout in milliseconds. 0 == infinite
//			socketTimeout = 10 // The socket timeout. 0 == infinite
//			socketKeepAlive = false // Whether or not to have socket keep alive turned on
//			writeNumber = 2 // This specifies the number of servers to wait for on the write operation
//			writeTimeout = 10 // The timeout for write operations in milliseconds
//			writeFsync = false // Whether or not to fsync
//			autoConnectRetry = false // Whether or not the system retries automatically on a failed connect
//			maxAutoConnectRetryTime = 2 // The maximum amount of time in millisecons to spend retrying
//			slaveOk = false // Specifies if the driver is allowed to read from secondaries or slaves
//			ssl = false // Specifies if the driver should use an SSL connection to Mongo
//			sslSocketFactory = … // Specifies the SSLSocketFactory to use for creating SSL connections
//		}
	}
}

// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
			url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
			//			url = 'jdbc:sqlserver://10.0.10.42:1433;DatabaseName=PBCroma'
			//			driverClassName = 'com.microsoft.sqlserver.jdbc.SQLServerDriver'
			//			driverClassName = 'net.sourceforge.jtds.jdbc.Driver'
			//			username = 'pblive'
			//			password = 'PB123Live'
			//			dialect = org.hibernate.dialect.SQLServerDialect
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
			properties {
				// See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
				jmxEnabled = true
				initialSize = 5
				maxActive = 50
				minIdle = 5
				maxIdle = 25
				maxWait = 10000
				maxAge = 10 * 60000
				timeBetweenEvictionRunsMillis = 5000
				minEvictableIdleTimeMillis = 60000
				validationQuery = "SELECT 1"
				validationQueryTimeout = 3
				validationInterval = 15000
				testOnBorrow = true
				testWhileIdle = true
				testOnReturn = false
				jdbcInterceptors = "ConnectionState"
				defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
			}
		}
	}
}
