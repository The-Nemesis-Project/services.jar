.class public Lcom/android/server/pm/StrictAtomicFile;
.super Ljava/lang/Object;
.source "StrictAtomicFile.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "StrictAtomicFile"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;

.field private final mMoreBackupName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "baseName"    # Ljava/io/File;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    .line 54
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mbackup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    .line 55
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 71
    iget-object v0, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .registers 5
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .prologue
    .line 153
    if-eqz p1, :cond_14

    .line 154
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 156
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 157
    iget-object v1, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    iget-object v1, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    .line 163
    :cond_14
    :goto_14
    return-void

    .line 159
    :catch_15
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "StrictAtomicFile"

    const-string v2, "failWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .registers 5
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .prologue
    .line 133
    if-eqz p1, :cond_1c

    .line 134
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 136
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 137
    iget-object v1, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 138
    iget-object v1, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 140
    :cond_15
    iget-object v1, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_1d

    .line 145
    :cond_1c
    :goto_1c
    return-void

    .line 141
    :catch_1d
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "StrictAtomicFile"

    const-string v2, "finishWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public getBaseFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method isDamaged(Ljava/io/File;)Z
    .registers 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, "raf_xmltest":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 247
    .local v2, "isDamaged":Z
    :try_start_2
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_1e
    .catchall {:try_start_2 .. :try_end_9} :catchall_2e

    .line 248
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .local v4, "raf_xmltest":Ljava/io/RandomAccessFile;
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0xe

    cmp-long v5, v5, v7

    if-gtz v5, :cond_17

    .line 249
    const/4 v2, 0x1

    .line 250
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_42
    .catchall {:try_start_9 .. :try_end_17} :catchall_3f

    .line 257
    :cond_17
    if-eqz v4, :cond_1c

    :try_start_19
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_3a

    :cond_1c
    :goto_1c
    move-object v3, v4

    .line 260
    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :cond_1d
    :goto_1d
    return v2

    .line 252
    :catch_1e
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    :goto_1f
    const/4 v2, 0x1

    .line 254
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2e

    .line 257
    if-eqz v3, :cond_1d

    :try_start_25
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_1d

    .line 258
    :catch_29
    move-exception v1

    .local v1, "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Ljava/io/IOException;
    :catchall_2e
    move-exception v5

    .line 257
    :goto_2f
    if-eqz v3, :cond_34

    :try_start_31
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    .line 256
    :cond_34
    :goto_34
    throw v5

    .line 258
    :catch_35
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .end local v1    # "ie":Ljava/io/IOException;
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catch_3a
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 256
    .end local v1    # "ie":Ljava/io/IOException;
    :catchall_3f
    move-exception v5

    move-object v3, v4

    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    goto :goto_2f

    .line 252
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catch_42
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    goto :goto_1f
.end method

.method logToFile(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 200
    const-string v2, "StrictAtomicFile"

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 202
    .local v0, "calendar":Ljava/util/Calendar;
    const-string v2, "%d-%d-%d-%d-%d-%d-%d"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x6

    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "dateString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 208
    return-void
.end method

.method public openRead()Ljava/io/FileInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/StrictAtomicFile;->openRead(Ljava/io/PrintWriter;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public openRead(Ljava/io/PrintWriter;)Ljava/io/FileInputStream;
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    iget-object v5, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_99

    iget-object v5, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/StrictAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_99

    move v1, v3

    .line 175
    .local v1, "isBaseAvailable":Z
    :goto_14
    iget-object v5, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/StrictAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_9c

    move v0, v3

    .line 176
    .local v0, "isBackupAvailable":Z
    :goto_25
    iget-object v5, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9e

    iget-object v5, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/StrictAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_9e

    move v2, v3

    .line 178
    .local v2, "isMoreBackupAvailable":Z
    :goto_36
    if-eqz v2, :cond_77

    if-nez v0, :cond_77

    if-nez v1, :cond_77

    .line 179
    if-eqz p1, :cond_6e

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StrictAtomicFile:Only MoreBackup file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StrictAtomicFile:Only MoreBackup file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/StrictAtomicFile;->logToFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 183
    :cond_6e
    iget-object v3, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 184
    const/4 v0, 0x1

    .line 185
    const/4 v2, 0x0

    .line 188
    :cond_77
    if-eqz v0, :cond_91

    .line 189
    if-eqz p1, :cond_85

    .line 190
    const-string v3, "StrictAtomicFile:openRead (mBackupName.exists())"

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 191
    const-string v3, "StrictAtomicFile:openRead (mBackupName.exists())"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/StrictAtomicFile;->logToFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 193
    :cond_85
    iget-object v3, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 194
    iget-object v3, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 196
    :cond_91
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v3

    .end local v0    # "isBackupAvailable":Z
    .end local v1    # "isBaseAvailable":Z
    .end local v2    # "isMoreBackupAvailable":Z
    :cond_99
    move v1, v4

    .line 174
    goto/16 :goto_14

    .restart local v1    # "isBaseAvailable":Z
    :cond_9c
    move v0, v4

    .line 175
    goto :goto_25

    .restart local v0    # "isBackupAvailable":Z
    :cond_9e
    move v2, v4

    .line 176
    goto :goto_36
.end method

.method public readFully()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/server/pm/StrictAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    .line 217
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 218
    .local v4, "pos":I
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 219
    .local v1, "avail":I
    new-array v2, v1, [B

    .line 221
    .local v2, "data":[B
    :cond_b
    :goto_b
    array-length v6, v2

    sub-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2b

    move-result v0

    .line 224
    .local v0, "amt":I
    if-gtz v0, :cond_17

    .line 238
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 227
    return-object v2

    .line 229
    :cond_17
    add-int/2addr v4, v0

    .line 230
    :try_start_18
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 231
    array-length v6, v2

    sub-int/2addr v6, v4

    if-le v1, v6, :cond_b

    .line 232
    add-int v6, v4, v1

    new-array v3, v6, [B

    .line 233
    .local v3, "newData":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2b

    .line 234
    move-object v2, v3

    goto :goto_b

    .line 238
    .end local v0    # "amt":I
    .end local v1    # "avail":I
    .end local v2    # "data":[B
    .end local v3    # "newData":[B
    :catchall_2b
    move-exception v6

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw v6
.end method

.method public saveCorruptedFile()V
    .registers 5

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".corrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 267
    :cond_2b
    return-void
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 81
    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_73

    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {p0, v9}, Lcom/android/server/pm/StrictAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_73

    move v3, v7

    .line 82
    .local v3, "isBaseAvailable":Z
    :goto_14
    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_75

    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {p0, v9}, Lcom/android/server/pm/StrictAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_75

    move v2, v7

    .line 83
    .local v2, "isBackupAvailable":Z
    :goto_25
    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_77

    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0, v9}, Lcom/android/server/pm/StrictAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_77

    move v4, v7

    .line 87
    .local v4, "isMoreBackupAvailable":Z
    :goto_36
    if-eqz v3, :cond_7f

    .line 92
    if-nez v2, :cond_79

    .line 93
    iget-object v7, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 94
    const-string v7, "StrictAtomicFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t rename file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to backup file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_6a
    :goto_6a
    const/4 v6, 0x0

    .line 108
    .local v6, "str":Ljava/io/FileOutputStream;
    :try_start_6b
    new-instance v6, Ljava/io/FileOutputStream;

    .end local v6    # "str":Ljava/io/FileOutputStream;
    iget-object v7, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_72} :catch_a5

    .line 124
    .restart local v6    # "str":Ljava/io/FileOutputStream;
    :goto_72
    return-object v6

    .end local v2    # "isBackupAvailable":Z
    .end local v3    # "isBaseAvailable":Z
    .end local v4    # "isMoreBackupAvailable":Z
    .end local v6    # "str":Ljava/io/FileOutputStream;
    :cond_73
    move v3, v8

    .line 81
    goto :goto_14

    .restart local v3    # "isBaseAvailable":Z
    :cond_75
    move v2, v8

    .line 82
    goto :goto_25

    .restart local v2    # "isBackupAvailable":Z
    :cond_77
    move v4, v8

    .line 83
    goto :goto_36

    .line 98
    .restart local v4    # "isMoreBackupAvailable":Z
    :cond_79
    iget-object v7, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_6a

    .line 101
    :cond_7f
    if-nez v2, :cond_6a

    if-eqz v4, :cond_6a

    .line 102
    const-string v7, "StrictAtomicFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remameTo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v7, p0, Lcom/android/server/pm/StrictAtomicFile;->mMoreBackupName:Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/StrictAtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_6a

    .line 109
    :catch_a5
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v7, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 111
    .local v5, "parent":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_cd

    .line 112
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t create directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 114
    :cond_cd
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f9

    invoke-static {v7, v8, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 119
    :try_start_d6
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_dd
    .catch Ljava/io/FileNotFoundException; {:try_start_d6 .. :try_end_dd} :catch_de

    .restart local v6    # "str":Ljava/io/FileOutputStream;
    goto :goto_72

    .line 120
    .end local v6    # "str":Ljava/io/FileOutputStream;
    :catch_de
    move-exception v1

    .line 121
    .local v1, "e2":Ljava/io/FileNotFoundException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t create "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/StrictAtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
