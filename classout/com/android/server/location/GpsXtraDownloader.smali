.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "count":I
    const-string v6, "XTRA_SERVER_1"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "server1":Ljava/lang/String;
    const-string v6, "XTRA_SERVER_2"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "server2":Ljava/lang/String;
    const-string v6, "XTRA_SERVER_3"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "server3":Ljava/lang/String;
    if-eqz v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    .line 68
    :cond_1c
    if-eqz v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    .line 69
    :cond_20
    if-eqz v5, :cond_24

    add-int/lit8 v0, v0, 0x1

    .line 71
    :cond_24
    if-nez v0, :cond_2e

    .line 72
    const-string v6, "GpsXtraDownloader"

    const-string v7, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_2d
    return-void

    .line 75
    :cond_2e
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    .line 77
    if-eqz v3, :cond_5a

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput-object v3, v6, v0

    .line 78
    :goto_3b
    if-eqz v4, :cond_44

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    aput-object v4, v6, v1

    move v1, v0

    .line 79
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_44
    if-eqz v5, :cond_58

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    aput-object v5, v6, v1

    .line 82
    :goto_4c
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 83
    .local v2, "random":Ljava/util/Random;
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_2d

    .end local v0    # "count":I
    .end local v2    # "random":Ljava/util/Random;
    .restart local v1    # "count":I
    :cond_58
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_4c

    :cond_5a
    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_3b
.end method

.method static Inject_user_agent()Ljava/lang/String;
    .registers 12

    .prologue
    .line 186
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy_MM_dd"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 188
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    const-string v0, "TMO"

    .line 189
    .local v0, "carrier":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 190
    .local v5, "manufacturer":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 191
    .local v6, "modelname":Ljava/lang/String;
    const-string v1, ""

    .line 192
    .local v1, "chipset":Ljava/lang/String;
    const-string v7, ""

    .line 193
    .local v7, "other_tech":Ljava/lang/String;
    sget-object v9, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 194
    .local v9, "version":Ljava/lang/String;
    const-string v2, "Android"

    .line 195
    .local v2, "deviceclass":Ljava/lang/String;
    sget-wide v10, Landroid/os/Build;->TIME:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "launched_time":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "full_name":Ljava/lang/String;
    return-object v3
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .registers 19
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isProxySet"    # Z
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I

    .prologue
    .line 118
    const/4 v3, 0x0

    .line 120
    .local v3, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_1
    const-string v11, "SPR"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    const-string v11, "BST"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    const-string v11, "VMU"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 123
    :cond_1f
    invoke-static {}, Lcom/android/server/location/GpsXtraDownloader;->Inject_user_agent()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 128
    :goto_27
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 130
    .local v8, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p1, :cond_3e

    .line 131
    new-instance v7, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v7, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 132
    .local v7, "proxy":Lorg/apache/http/HttpHost;
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    invoke-static {v11, v7}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 135
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    :cond_3e
    const-string v11, "Accept"

    const-string v12, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v8, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v11, "x-wap-profile"

    const-string v12, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-interface {v8, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v3, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 144
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 145
    .local v10, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_a5
    .catchall {:try_start_1 .. :try_end_57} :catchall_ad

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_6a

    .line 147
    const/4 v2, 0x0

    .line 177
    if-eqz v3, :cond_62

    .line 178
    :goto_5f
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 181
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    :cond_62
    :goto_62
    return-object v2

    .line 126
    :cond_63
    :try_start_63
    const-string v11, "Android"

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    goto :goto_27

    .line 150
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    :cond_6a
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_a5
    .catchall {:try_start_63 .. :try_end_6d} :catchall_ad

    move-result-object v6

    .line 151
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 152
    .local v2, "body":[B
    if-eqz v6, :cond_96

    .line 154
    :try_start_71
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_91

    .line 155
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    long-to-int v11, v11

    new-array v2, v11, [B

    .line 156
    new-instance v4, Ljava/io/DataInputStream;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8b
    .catchall {:try_start_71 .. :try_end_8b} :catchall_9e

    .line 158
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_8b
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_99

    .line 161
    :try_start_8e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_bd
    .catchall {:try_start_8e .. :try_end_91} :catchall_9e

    .line 168
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :cond_91
    :goto_91
    if-eqz v6, :cond_96

    .line 169
    :try_start_93
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_a5
    .catchall {:try_start_93 .. :try_end_96} :catchall_ad

    .line 177
    :cond_96
    if-eqz v3, :cond_62

    goto :goto_5f

    .line 160
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_99
    move-exception v11

    .line 161
    :try_start_9a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_b4
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    .line 160
    :goto_9d
    :try_start_9d
    throw v11
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    .line 168
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_9e
    move-exception v11

    if-eqz v6, :cond_a4

    .line 169
    :try_start_a1
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 168
    :cond_a4
    throw v11
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a5} :catch_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_ad

    .line 174
    .end local v2    # "body":[B
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    :catch_a5
    move-exception v11

    .line 177
    if-eqz v3, :cond_ab

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 181
    :cond_ab
    const/4 v2, 0x0

    goto :goto_62

    .line 177
    :catchall_ad
    move-exception v11

    if-eqz v3, :cond_b3

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 177
    :cond_b3
    throw v11

    .line 162
    .restart local v2    # "body":[B
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    :catch_b4
    move-exception v5

    .line 163
    .local v5, "e":Ljava/io/IOException;
    :try_start_b5
    const-string v12, "GpsXtraDownloader"

    const-string v13, "Unexpected IOException."

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9d

    .line 162
    .end local v5    # "e":Ljava/io/IOException;
    :catch_bd
    move-exception v5

    .line 163
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v11, "GpsXtraDownloader"

    const-string v12, "Unexpected IOException."

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catchall {:try_start_b5 .. :try_end_c5} :catchall_9e

    goto :goto_91
.end method


# virtual methods
.method downloadXtraData()[B
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "proxyHost":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 90
    .local v1, "proxyPort":I
    if-eqz v0, :cond_1c

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1c

    const/4 v4, 0x1

    .line 91
    .local v4, "useProxy":Z
    :goto_13
    const/4 v2, 0x0

    .line 92
    .local v2, "result":[B
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 94
    .local v3, "startIndex":I
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v6, :cond_1e

    .line 95
    const/4 v5, 0x0

    .line 111
    :goto_1b
    return-object v5

    .end local v2    # "result":[B
    .end local v3    # "startIndex":I
    .end local v4    # "useProxy":Z
    :cond_1c
    move v4, v5

    .line 90
    goto :goto_13

    .line 99
    .restart local v2    # "result":[B
    .restart local v3    # "startIndex":I
    .restart local v4    # "useProxy":Z
    :cond_1e
    if-nez v2, :cond_3d

    .line 100
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v6, v6, v7

    invoke-static {v6, v4, v0, v1}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 103
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 104
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v7, v7

    if-ne v6, v7, :cond_39

    .line 105
    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 108
    :cond_39
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v6, v3, :cond_1e

    :cond_3d
    move-object v5, v2

    .line 111
    goto :goto_1b
.end method
