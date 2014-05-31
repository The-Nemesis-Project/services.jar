.class public final Lcom/android/server/ssrm/AmoledAdjustTimer;
.super Ljava/lang/Object;
.source "AmoledAdjustTimer.java"


# static fields
.field private static currTemp:I

.field private static lastValue:I

.field private static prevTemp:I

.field private static sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;


# instance fields
.field final INPUT_PATH:Ljava/lang/String;

.field final OUTPUT_PATH:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field TEMP_TABLE:[I

.field currentTempFile:Ljava/io/File;

.field mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

.field mInputPathExist:Z

.field mOutputPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xc8

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    .line 136
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    .line 138
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    .line 140
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    return-void
.end method

.method private constructor <init>()V
    .registers 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v9, "SSRMv2:AmoledAdjustTimer"

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TAG:Ljava/lang/String;

    .line 32
    new-instance v9, Lcom/android/server/ssrm/DevSysProperty;

    invoke-direct {v9}, Lcom/android/server/ssrm/DevSysProperty;-><init>()V

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    .line 43
    iput-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    .line 45
    iput-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    .line 47
    const-string v9, "/sys/class/power_supply/battery/temp"

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->INPUT_PATH:Ljava/lang/String;

    .line 49
    const-string v9, "/sys/class/lcd/panel/temperature"

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->OUTPUT_PATH:Ljava/lang/String;

    .line 106
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    .line 173
    new-instance v9, Ljava/io/File;

    const-string v12, "/sys/class/power_supply/battery/temp"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    .line 52
    new-instance v0, Ljava/io/File;

    const-string v9, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "a":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v9, "/sys/class/lcd/panel/temperature"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "b":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_90

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_90

    move v9, v10

    :goto_43
    iput-boolean v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_92

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_92

    :goto_51
    iput-boolean v10, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    .line 58
    iget-boolean v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v9, :cond_5b

    iget-boolean v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-nez v9, :cond_94

    .line 59
    :cond_5b
    const-string v9, "SSRMv2:AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mInputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v9, "SSRMv2:AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mOutputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_8f
    :goto_8f
    return-void

    :cond_90
    move v9, v11

    .line 55
    goto :goto_43

    :cond_92
    move v10, v11

    .line 56
    goto :goto_51

    .line 65
    :cond_94
    const/4 v4, 0x0

    .line 66
    .local v4, "in":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 68
    .local v7, "str":Ljava/lang/String;
    :try_start_96
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/sys/class/lcd/panel/temperature"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_a2} :catch_c1
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a2} :catch_d0
    .catchall {:try_start_96 .. :try_end_a2} :catchall_dc

    .line 69
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_a2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a9
    .catch Ljava/io/FileNotFoundException; {:try_start_a2 .. :try_end_a9} :catch_14f
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a9} :catch_14c
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_149

    .line 76
    if-eqz v5, :cond_ae

    .line 78
    :try_start_ab
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_143

    :cond_ae
    :goto_ae
    move-object v4, v5

    .line 85
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :cond_af
    :goto_af
    if-eqz v7, :cond_b7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_e3

    .line 86
    :cond_b7
    const-string v9, "SSRMv2:AmoledAdjustTimer"

    const-string v10, "failed to read /sys/class/lcd/panel/temperature"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    goto :goto_8f

    .line 71
    :catch_c1
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_c2
    :try_start_c2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_dc

    .line 76
    if-eqz v4, :cond_af

    .line 78
    :try_start_c7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_af

    .line 79
    :catch_cb
    move-exception v2

    .line 80
    .local v2, "e":Ljava/io/IOException;
    :goto_cc
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 73
    .end local v2    # "e":Ljava/io/IOException;
    :catch_d0
    move-exception v2

    .line 74
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_d1
    :try_start_d1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_dc

    .line 76
    if-eqz v4, :cond_af

    .line 78
    :try_start_d6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    goto :goto_af

    .line 79
    :catch_da
    move-exception v2

    goto :goto_cc

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_dc
    move-exception v9

    :goto_dd
    if-eqz v4, :cond_e2

    .line 78
    :try_start_df
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_13e

    .line 76
    :cond_e2
    :goto_e2
    throw v9

    .line 92
    :cond_e3
    const/4 v6, 0x0

    .line 93
    .local v6, "len":I
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v8, "tokens":Ljava/util/StringTokenizer;
    :goto_eb
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 96
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_eb

    .line 98
    :cond_f7
    new-array v9, v6, [I

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    .line 99
    new-instance v8, Ljava/util/StringTokenizer;

    .end local v8    # "tokens":Ljava/util/StringTokenizer;
    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .restart local v8    # "tokens":Ljava/util/StringTokenizer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_103
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 101
    iget-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v3

    .line 102
    const-string v9, "SSRMv2:AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TEMP_TABLE["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_103

    .line 79
    .end local v3    # "i":I
    .end local v6    # "len":I
    .end local v8    # "tokens":Ljava/util/StringTokenizer;
    :catch_13e
    move-exception v2

    .line 80
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    .line 79
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_143
    move-exception v2

    .line 80
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_ae

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_149
    move-exception v9

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_dd

    .line 73
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_14c
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_d1

    .line 71
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_14f
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_c2
.end method

.method private getCurrentTemp()I
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v6, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_b

    move v2, v5

    .line 205
    :cond_a
    :goto_a
    return v2

    .line 180
    :cond_b
    iget-object v6, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v6}, Lcom/android/server/ssrm/DevSysProperty;->getBatteryTemperature()I

    move-result v2

    .line 181
    .local v2, "devTemp":I
    const/16 v6, -0x3e7

    if-ne v2, v6, :cond_a

    .line 185
    const/4 v0, 0x0

    .line 188
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_16
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/power_supply/battery/temp"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_22} :catch_3f
    .catchall {:try_start_16 .. :try_end_22} :catchall_4e

    .line 189
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_37

    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_62
    .catchall {:try_start_22 .. :try_end_2b} :catchall_5f

    move-result v2

    .line 197
    .end local v2    # "devTemp":I
    if-eqz v1, :cond_a

    .line 198
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_a

    .line 200
    :catch_32
    move-exception v3

    .line 201
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 197
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "devTemp":I
    :cond_37
    if-eqz v1, :cond_3c

    .line 198
    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_5a

    :cond_3c
    :goto_3c
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_3d
    :goto_3d
    move v2, v5

    .line 205
    goto :goto_a

    .line 193
    :catch_3f
    move-exception v3

    .line 194
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4e

    .line 197
    if-eqz v0, :cond_3d

    .line 198
    :try_start_45
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_3d

    .line 200
    :catch_49
    move-exception v3

    .line 201
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    .line 196
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_4e
    move-exception v5

    .line 197
    :goto_4f
    if-eqz v0, :cond_54

    .line 198
    :try_start_51
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 196
    :cond_54
    :goto_54
    throw v5

    .line 200
    :catch_55
    move-exception v3

    .line 201
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    .line 200
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "str":Ljava/lang/String;
    :catch_5a
    move-exception v3

    .line 201
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 196
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "str":Ljava/lang/String;
    :catchall_5f
    move-exception v5

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_4f

    .line 193
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_62
    move-exception v3

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_40
.end method

.method public static getInstance()Lcom/android/server/ssrm/AmoledAdjustTimer;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/android/server/ssrm/AmoledAdjustTimer;

    invoke-direct {v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    .line 40
    :cond_b
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    return-object v0
.end method


# virtual methods
.method getStepByTemp(I)I
    .registers 4
    .param p1, "temp"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 111
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-ge p1, v1, :cond_f

    .line 115
    :cond_e
    return v0

    .line 110
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getStepByTemp2(I)I
    .registers 4
    .param p1, "temp"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 121
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-gt p1, v1, :cond_f

    .line 125
    :cond_e
    return v0

    .line 120
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getTempByStep(I)I
    .registers 3
    .param p1, "step"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_9

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v0, v0, p1

    goto :goto_8
.end method

.method public update()V
    .registers 8

    .prologue
    .line 143
    iget-boolean v3, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    if-nez v3, :cond_d

    .line 171
    :cond_c
    :goto_c
    return-void

    .line 147
    :cond_d
    invoke-direct {p0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getCurrentTemp()I

    move-result v3

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    .line 149
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v2

    .line 150
    .local v2, "prevStep":I
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v0

    .line 152
    .local v0, "currStep":I
    const-string v3, "SSRMv2:AmoledAdjustTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prevStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-le v2, v0, :cond_8a

    .line 155
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp2(I)I

    move-result v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    .line 158
    .local v1, "newValue":I
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_83

    .line 159
    const-string v3, "SSRMv2:AmoledAdjustTimer"

    const-string v4, "/sys/class/lcd/panel/temperature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_83
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    .line 170
    .end local v1    # "newValue":I
    :cond_85
    :goto_85
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    goto :goto_c

    .line 162
    :cond_8a
    if-ge v2, v0, :cond_85

    .line 163
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    .line 164
    .restart local v1    # "newValue":I
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_b0

    .line 165
    const-string v3, "SSRMv2:AmoledAdjustTimer"

    const-string v4, "/sys/class/lcd/panel/temperature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_b0
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    goto :goto_85
.end method
