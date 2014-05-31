.class public Lcom/android/server/ssrm/SSRMUtil;
.super Ljava/lang/Object;
.source "SSRMUtil.java"


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "SSRMUtil"

.field static mIsFactoryMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->mIsFactoryMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    if-nez p0, :cond_5

    .line 51
    const-string v0, ""

    .line 53
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p0, :cond_5

    .line 44
    const-string v0, ""

    .line 46
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static executeCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeCommand:: cmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 183
    .local v3, "runtime":Ljava/lang/Runtime;
    :try_start_1a
    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 184
    .local v2, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 186
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_33

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_2c

    .line 190
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "process":Ljava/lang/Process;
    :goto_32
    return-void

    .line 188
    :catch_33
    move-exception v4

    goto :goto_32
.end method

.method public static getMobileAPClientNum()I
    .registers 11

    .prologue
    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, "mBufferedReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 147
    .local v5, "mResult":I
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/net/arp"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_42
    .catchall {:try_start_2 .. :try_end_e} :catchall_5b

    .line 149
    .end local v3    # "mBufferedReader":Ljava/io/BufferedReader;
    .local v4, "mBufferedReader":Ljava/io/BufferedReader;
    :cond_e
    :goto_e
    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_3d

    .line 150
    const-string v8, " +"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "mSplit":[Ljava/lang/String;
    if-eqz v6, :cond_e

    array-length v8, v6

    const/4 v9, 0x4

    if-lt v8, v9, :cond_e

    .line 153
    const/4 v8, 0x3

    aget-object v7, v6, v8

    .line 155
    .local v7, "mac":Ljava/lang/String;
    const-string v8, "..:..:..:..:..:.."

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 156
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    const/16 v9, 0x12c

    invoke-virtual {v8, v9}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_37} :catch_79
    .catchall {:try_start_e .. :try_end_37} :catchall_76

    move-result v1

    .line 158
    .local v1, "isReachable":Z
    if-eqz v1, :cond_e

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 168
    .end local v1    # "isReachable":Z
    .end local v6    # "mSplit":[Ljava/lang/String;
    .end local v7    # "mac":Ljava/lang/String;
    :cond_3d
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_6b

    :goto_40
    move-object v3, v4

    .line 174
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "mBufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "mBufferedReader":Ljava/io/BufferedReader;
    :goto_41
    return v5

    .line 164
    :catch_42
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    :goto_43
    :try_start_43
    const-string v8, "SSRMUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_5b

    .line 168
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_41

    .line 169
    :catch_50
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "SSRMUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5b
    move-exception v8

    .line 168
    :goto_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 167
    :goto_5f
    throw v8

    .line 169
    :catch_60
    move-exception v0

    .line 170
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "SSRMUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "mBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "mBufferedReader":Ljava/io/BufferedReader;
    :catch_6b
    move-exception v0

    .line 170
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "SSRMUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    :catchall_76
    move-exception v8

    move-object v3, v4

    .end local v4    # "mBufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "mBufferedReader":Ljava/io/BufferedReader;
    goto :goto_5c

    .line 164
    .end local v3    # "mBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "mBufferedReader":Ljava/io/BufferedReader;
    :catch_79
    move-exception v0

    move-object v3, v4

    .end local v4    # "mBufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "mBufferedReader":Ljava/io/BufferedReader;
    goto :goto_43
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 93
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_7
    return-void
.end method

.method public static readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "strTemp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 101
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_3e
    .catchall {:try_start_2 .. :try_end_c} :catchall_37

    .line 102
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSysfs:: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_30} :catch_4e
    .catchall {:try_start_c .. :try_end_30} :catchall_4b

    .line 107
    if-eqz v1, :cond_35

    .line 108
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_49

    :cond_35
    :goto_35
    move-object v0, v1

    .line 113
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_36
    :goto_36
    return-object v2

    .line 106
    :catchall_37
    move-exception v3

    .line 107
    :goto_38
    if-eqz v0, :cond_3d

    .line 108
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_47

    .line 106
    :cond_3d
    :goto_3d
    throw v3

    .line 104
    :catch_3e
    move-exception v3

    .line 107
    :goto_3f
    if-eqz v0, :cond_36

    .line 108
    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_36

    .line 110
    :catch_45
    move-exception v3

    goto :goto_36

    :catch_47
    move-exception v4

    goto :goto_3d

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_49
    move-exception v3

    goto :goto_35

    .line 106
    :catchall_4b
    move-exception v3

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_38

    .line 104
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_4e
    move-exception v3

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3f
.end method

.method public static setFactoryMode(Z)V
    .registers 1
    .param p0, "isFactoryMode"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lcom/android/server/ssrm/SSRMUtil;->mIsFactoryMode:Z

    .line 40
    return-void
.end method

.method public static updateJitterBooster(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->mIsFactoryMode:Z

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 77
    :cond_a
    :goto_a
    return-void

    .line 75
    :cond_b
    const-string v0, "/sys/class/sec/tsp/cmd"

    invoke-static {p0, v0, p1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a
.end method

.method public static updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->mIsFactoryMode:Z

    if-eqz v0, :cond_5

    .line 62
    :goto_4
    return-void

    .line 60
    :cond_5
    const-string v0, "/sys/class/sec/tsp/cmd"

    invoke-static {p0, v0, p1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4
.end method

.method public static updateTouchFwReportRate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->mIsFactoryMode:Z

    if-eqz v0, :cond_5

    .line 85
    :goto_4
    return-void

    .line 83
    :cond_5
    const-string v0, "/sys/class/sec/tsp/cmd"

    invoke-static {p0, v0, p1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {p0, v0}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4
.end method

.method public static updateTouchKeyBooster(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->mIsFactoryMode:Z

    if-eqz v0, :cond_5

    .line 69
    :goto_4
    return-void

    .line 68
    :cond_5
    const-string v0, "/sys/class/sec/sec_touchkey/boost_level"

    invoke-static {p0, v0, p1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeSysfs:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_33

    .line 140
    :cond_32
    :goto_32
    return-void

    .line 124
    :cond_33
    const/4 v2, 0x0

    .line 126
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_34
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_4c
    .catchall {:try_start_34 .. :try_end_39} :catchall_89

    .line 127
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_39
    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 128
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_45} :catch_cb
    .catchall {:try_start_39 .. :try_end_45} :catchall_c8

    .line 132
    if-eqz v3, :cond_4a

    .line 134
    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_ac

    :cond_4a
    :goto_4a
    move-object v2, v3

    .line 139
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_32

    .line 129
    :catch_4c
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    :goto_4d
    :try_start_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_4d .. :try_end_67} :catchall_89

    .line 132
    if-eqz v2, :cond_32

    .line 134
    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_32

    .line 135
    :catch_6d
    move-exception v0

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_89
    move-exception v4

    :goto_8a
    if-eqz v2, :cond_8f

    .line 134
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    .line 132
    :cond_8f
    :goto_8f
    throw v4

    .line 135
    :catch_90
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_ac
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_c8
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8a

    .line 129
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_cb
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4d
.end method

.method public static x([I)Ljava/lang/String;
    .registers 4
    .param p0, "e"    # [I

    .prologue
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_14

    .line 195
    aget v2, p0, v0

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 197
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
