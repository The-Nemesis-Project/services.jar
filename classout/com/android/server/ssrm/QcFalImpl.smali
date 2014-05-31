.class public Lcom/android/server/ssrm/QcFalImpl;
.super Ljava/lang/Object;
.source "QcFalImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/QcFalImpl$1;,
        Lcom/android/server/ssrm/QcFalImpl$SysfsPath;,
        Lcom/android/server/ssrm/QcFalImpl$PlatformType;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SSRMv2:QcFalImpl"


# instance fields
.field final DEBUG:Z

.field final UTF8:Ljava/lang/String;

.field mGpuFreqTable:[I

.field mPerfCoreMaxLock:Lorg/codeaurora/Performance;

.field mPerfCoreMinLock:Lorg/codeaurora/Performance;

.field mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

.field mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/QcFalImpl;->DEBUG:Z

    .line 36
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->UTF8:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    .line 177
    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 216
    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 49
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "mPlatformInfo":Ljava/lang/String;
    const-string v1, "msm8960"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 51
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    .line 60
    :goto_2a
    new-instance v1, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    invoke-direct {v1, p0, v2}, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/QcFalImpl;Lcom/android/server/ssrm/QcFalImpl$PlatformType;)V

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    .line 61
    return-void

    .line 52
    :cond_34
    const-string v1, "msm8226"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 53
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_2a

    .line 54
    :cond_41
    const-string v1, "msm8974"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 55
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_2a

    .line 57
    :cond_4e
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_2a
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "filePtr":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private parseCpuCoreTable()[I
    .registers 12

    .prologue
    .line 298
    const-string v7, "SSRMv2:QcFalImpl"

    const-string v8, "parseCpuCoreTable"

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v5, 0x0

    .line 300
    .local v5, "supportedCpuCore":[I
    const/4 v0, 0x0

    .line 302
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_9
    iget-object v7, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 303
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    iget-object v8, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_5d
    .catchall {:try_start_9 .. :try_end_21} :catchall_9f

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 305
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_22
    if-nez v0, :cond_2b

    .line 342
    if-eqz v0, :cond_29

    .line 343
    :try_start_26
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_c4

    :cond_29
    :goto_29
    move-object v6, v5

    .line 350
    .end local v5    # "supportedCpuCore":[I
    .local v6, "supportedCpuCore":[I
    :goto_2a
    return-object v6

    .line 309
    .end local v6    # "supportedCpuCore":[I
    .restart local v5    # "supportedCpuCore":[I
    :cond_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "strSupportedCpuCoreNum":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_5d
    .catchall {:try_start_2b .. :try_end_32} :catchall_9f

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 311
    .local v3, "numOfCpuCore":I
    packed-switch v3, :pswitch_data_fe

    .line 333
    const/4 v5, 0x0

    .line 342
    :goto_39
    if-eqz v0, :cond_3e

    .line 343
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_e3

    .end local v3    # "numOfCpuCore":I
    .end local v4    # "strSupportedCpuCoreNum":Ljava/lang/String;
    :cond_3e
    :goto_3e
    move-object v6, v5

    .line 350
    .end local v5    # "supportedCpuCore":[I
    .restart local v6    # "supportedCpuCore":[I
    goto :goto_2a

    .line 313
    .end local v6    # "supportedCpuCore":[I
    .restart local v3    # "numOfCpuCore":I
    .restart local v4    # "strSupportedCpuCoreNum":Ljava/lang/String;
    .restart local v5    # "supportedCpuCore":[I
    :pswitch_40
    const/4 v7, 0x1

    :try_start_41
    new-array v5, v7, [I

    .end local v5    # "supportedCpuCore":[I
    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v5, v7

    .line 316
    .restart local v5    # "supportedCpuCore":[I
    goto :goto_39

    .line 318
    :pswitch_48
    const/4 v7, 0x2

    new-array v5, v7, [I

    .end local v5    # "supportedCpuCore":[I
    fill-array-data v5, :array_10a

    .line 321
    .restart local v5    # "supportedCpuCore":[I
    goto :goto_39

    .line 323
    :pswitch_4f
    const/4 v7, 0x3

    new-array v5, v7, [I

    .end local v5    # "supportedCpuCore":[I
    fill-array-data v5, :array_112

    .line 326
    .restart local v5    # "supportedCpuCore":[I
    goto :goto_39

    .line 328
    :pswitch_56
    const/4 v7, 0x4

    new-array v5, v7, [I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_59} :catch_5d
    .catchall {:try_start_41 .. :try_end_59} :catchall_9f

    .end local v5    # "supportedCpuCore":[I
    fill-array-data v5, :array_11c

    .line 331
    .restart local v5    # "supportedCpuCore":[I
    goto :goto_39

    .line 336
    .end local v3    # "numOfCpuCore":I
    .end local v4    # "strSupportedCpuCoreNum":Ljava/lang/String;
    .end local v5    # "supportedCpuCore":[I
    :catch_5d
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5e
    const-string v7, "SSRMv2:QcFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_5e .. :try_end_7a} :catchall_9f

    .line 339
    const/4 v5, 0x0

    .line 342
    .restart local v5    # "supportedCpuCore":[I
    if-eqz v0, :cond_3e

    .line 343
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_3e

    .line 345
    :catch_81
    move-exception v2

    .line 346
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:QcFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_9b
    invoke-static {v7, v8}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 341
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "supportedCpuCore":[I
    :catchall_9f
    move-exception v7

    .line 342
    if-eqz v0, :cond_a5

    .line 343
    :try_start_a2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    .line 341
    :cond_a5
    :goto_a5
    throw v7

    .line 345
    :catch_a6
    move-exception v2

    .line 346
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:QcFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    .line 345
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "supportedCpuCore":[I
    :catch_c4
    move-exception v2

    .line 346
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:QcFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 345
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "numOfCpuCore":I
    .restart local v4    # "strSupportedCpuCoreNum":Ljava/lang/String;
    :catch_e3
    move-exception v2

    .line 346
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:QcFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_9b

    .line 311
    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_40
        :pswitch_48
        :pswitch_4f
        :pswitch_56
    .end packed-switch

    .line 318
    :array_10a
    .array-data 4
        0x2
        0x1
    .end array-data

    .line 323
    :array_112
    .array-data 4
        0x3
        0x2
        0x1
    .end array-data

    .line 328
    :array_11c
    .array-data 4
        0x4
        0x3
        0x2
        0x1
    .end array-data
.end method

.method private parseGpuFreqTable()[I
    .registers 13

    .prologue
    .line 354
    const-string v8, "SSRMv2:QcFalImpl"

    const-string v9, "parseGpuFreqTable"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v6, 0x0

    .line 357
    .local v6, "supportedFrequency":[I
    const/4 v4, 0x0

    .line 358
    .local v4, "realArraySize":I
    const/4 v0, 0x0

    .line 360
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_a
    iget-object v8, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 361
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    iget-object v9, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_a5
    .catchall {:try_start_a .. :try_end_22} :catchall_eb

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 363
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_23
    if-nez v0, :cond_2c

    .line 397
    if-eqz v0, :cond_2a

    .line 398
    :try_start_27
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_110

    :cond_2a
    :goto_2a
    move-object v7, v6

    .line 404
    .end local v6    # "supportedFrequency":[I
    .local v7, "supportedFrequency":[I
    :goto_2b
    return-object v7

    .line 366
    .end local v7    # "supportedFrequency":[I
    .restart local v6    # "supportedFrequency":[I
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, "strSupportedFreq":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    array-length v8, v5

    if-ge v3, v8, :cond_47

    .line 368
    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_44

    .line 369
    add-int/lit8 v4, v4, 0x1

    .line 367
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 372
    :cond_47
    array-length v8, v5

    if-eq v4, v8, :cond_6a

    .line 373
    const/4 v3, 0x0

    :goto_4b
    array-length v8, v5

    if-ge v3, v8, :cond_6a

    .line 374
    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_67

    add-int/lit8 v8, v3, 0x1

    array-length v9, v5

    if-ge v8, v9, :cond_67

    .line 375
    add-int/lit8 v8, v3, 0x1

    aget-object v8, v5, v8

    aput-object v8, v5, v3

    .line 376
    add-int/lit8 v8, v3, 0x1

    const-string v9, ""

    aput-object v9, v5, v8

    .line 373
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 381
    :cond_6a
    new-array v6, v4, [I

    .line 382
    const/4 v3, 0x0

    :goto_6d
    if-ge v3, v4, :cond_94

    .line 383
    aget-object v8, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v3

    .line 384
    const-string v8, "SSRMv2:QcFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: supportedFrequency = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 388
    :cond_94
    iget-object v8, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    array-length v9, v6

    iput v9, v8, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 389
    iget-object v8, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_9e} :catch_a5
    .catchall {:try_start_2c .. :try_end_9e} :catchall_eb

    .line 397
    if-eqz v0, :cond_a3

    .line 398
    :try_start_a0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_12f

    .end local v3    # "i":I
    .end local v5    # "strSupportedFreq":[Ljava/lang/String;
    :cond_a3
    :goto_a3
    move-object v7, v6

    .line 404
    .end local v6    # "supportedFrequency":[I
    .restart local v7    # "supportedFrequency":[I
    goto :goto_2b

    .line 390
    .end local v7    # "supportedFrequency":[I
    .restart local v6    # "supportedFrequency":[I
    :catch_a5
    move-exception v2

    .line 391
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a6
    iget-boolean v8, p0, Lcom/android/server/ssrm/QcFalImpl;->DEBUG:Z

    if-eqz v8, :cond_c6

    .line 392
    const-string v8, "SSRMv2:QcFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by Exception, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_a6 .. :try_end_c6} :catchall_eb

    .line 394
    :cond_c6
    const/4 v6, 0x0

    .line 397
    if-eqz v0, :cond_a3

    .line 398
    :try_start_c9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_a3

    .line 400
    :catch_cd
    move-exception v2

    .line 401
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:QcFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_e7
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 396
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_eb
    move-exception v8

    .line 397
    if-eqz v0, :cond_f1

    .line 398
    :try_start_ee
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    .line 396
    :cond_f1
    :goto_f1
    throw v8

    .line 400
    :catch_f2
    move-exception v2

    .line 401
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:QcFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    .line 400
    .end local v2    # "e":Ljava/io/IOException;
    :catch_110
    move-exception v2

    .line 401
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:QcFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 400
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v5    # "strSupportedFreq":[Ljava/lang/String;
    :catch_12f
    move-exception v2

    .line 401
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:QcFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_e7
.end method


# virtual methods
.method acquirePerfCoreMaxLock(I)V
    .registers 11
    .param p1, "coreNum"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 220
    const/16 v0, 0x7fe

    .line 221
    .local v0, "CPUS_ONLINE_MAX_LIMIT_1":I
    const/16 v1, 0x7fd

    .line 222
    .local v1, "CPUS_ONLINE_MAX_LIMIT_2":I
    const/16 v2, 0x7fc

    .line 223
    .local v2, "CPUS_ONLINE_MAX_LIMIT_3":I
    const/16 v3, 0x7fb

    .line 224
    .local v3, "CPUS_ONLINE_MAX_LIMIT_4":I
    const/16 v4, 0x7fb

    .line 226
    .local v4, "CPUS_ONLINE_MAX_LIMIT_MAX":I
    if-lt p1, v7, :cond_11

    const/4 v5, 0x4

    if-le p1, v5, :cond_12

    .line 260
    :cond_11
    :goto_11
    return-void

    .line 231
    :cond_12
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v5, :cond_25

    .line 232
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: create new Performance instance"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v5}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 234
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 238
    :cond_25
    packed-switch p1, :pswitch_data_78

    goto :goto_11

    .line 252
    :pswitch_29
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_1)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 255
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fe

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_11

    .line 240
    :pswitch_43
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_3)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 243
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fc

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_11

    .line 246
    :pswitch_5d
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_2)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 249
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fd

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_11

    .line 238
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_29
        :pswitch_5d
        :pswitch_43
    .end packed-switch
.end method

.method acquirePerfCoreMinLock(I)V
    .registers 6
    .param p1, "coreNum"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 180
    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/4 v0, 0x4

    if-le p1, v0, :cond_9

    .line 214
    :cond_8
    :goto_8
    return-void

    .line 185
    :cond_9
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_1c

    .line 186
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 192
    :cond_1c
    packed-switch p1, :pswitch_data_6c

    goto :goto_8

    .line 206
    :pswitch_20
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 208
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_76

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_8

    .line 194
    :pswitch_39
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_MAX)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 196
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_7e

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_8

    .line 200
    :pswitch_52
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 202
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_86

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_8

    .line 192
    nop

    :pswitch_data_6c
    .packed-switch 0x2
        :pswitch_20
        :pswitch_52
        :pswitch_39
    .end packed-switch

    .line 208
    :array_76
    .array-data 4
        0x702
        0x100
    .end array-data

    .line 196
    :array_7e
    .array-data 4
        0x704
        0x100
    .end array-data

    .line 202
    :array_86
    .array-data 4
        0x703
        0x100
    .end array-data
.end method

.method adjustGpuFreqToIndexValue(II)I
    .registers 5
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 160
    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 162
    :cond_6
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    if-nez v1, :cond_d

    .line 163
    const/4 p2, 0x0

    :cond_b
    :goto_b
    move v0, p2

    .line 174
    :cond_c
    return v0

    .line 165
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 166
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    aget v1, v1, v0

    if-eq p2, v1, :cond_c

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 170
    :cond_1c
    const/4 p2, 0x0

    goto :goto_b
.end method

.method public checkNodeExistence(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 264
    packed-switch p1, :pswitch_data_1a

    .line 275
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 267
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 269
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 271
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 264
    nop

    :pswitch_data_1a
    .packed-switch 0x3
        :pswitch_7
        :pswitch_10
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_14

    .line 289
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 283
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/ssrm/QcFalImpl;->parseGpuFreqTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    .line 284
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    goto :goto_4

    .line 287
    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/ssrm/QcFalImpl;->parseCpuCoreTable()[I

    move-result-object v0

    goto :goto_4

    .line 280
    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .registers 8
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 132
    const-string v0, ""

    .line 134
    .local v0, "path":Ljava/lang/String;
    packed-switch p1, :pswitch_data_58

    .line 148
    :pswitch_6
    const/4 v1, 0x0

    .line 156
    :goto_7
    return v1

    .line 136
    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/QcFalImpl;->acquirePerfCoreMinLock(I)V

    goto :goto_7

    .line 139
    :pswitch_c
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/QcFalImpl;->acquirePerfCoreMaxLock(I)V

    goto :goto_7

    .line 142
    :pswitch_10
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 151
    :goto_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/QcFalImpl;->adjustGpuFreqToIndexValue(II)I

    move-result p2

    .line 153
    const-string v2, "SSRMv2:QcFalImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyToValues:: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "SSRMv2:QcFalImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 145
    :pswitch_53
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 146
    goto :goto_14

    .line 134
    :pswitch_data_58
    .packed-switch 0x3
        :pswitch_10
        :pswitch_53
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .registers 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 94
    const-string v0, ""

    .line 95
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 97
    .local v1, "value":I
    packed-switch p1, :pswitch_data_6e

    .line 121
    :pswitch_8
    const/4 v2, 0x0

    .line 127
    :goto_9
    return v2

    .line 99
    :pswitch_a
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_2a

    .line 100
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v3}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 101
    iput-object v4, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    goto :goto_9

    .line 106
    :pswitch_16
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_2a

    .line 107
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v3}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 108
    iput-object v4, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    goto :goto_9

    .line 113
    :pswitch_22
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 124
    :cond_2a
    :goto_2a
    const-string v3, "SSRMv2:QcFalImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertToDefault:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "SSRMv2:QcFalImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 117
    :pswitch_65
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 119
    goto :goto_2a

    .line 97
    :pswitch_data_6e
    .packed-switch 0x3
        :pswitch_22
        :pswitch_65
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_16
    .end packed-switch
.end method
