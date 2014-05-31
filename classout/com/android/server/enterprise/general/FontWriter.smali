.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final CHMOD_EXECUTE_COMMAND:Ljava/lang/String; = "chmod 711 "

.field public static final CHMOD_READ_COMMAND:Ljava/lang/String; = "chmod 744 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 70
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 72
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .param p1, "FontDir"    # Ljava/io/File;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    .local v3, "newDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "tmp":[Ljava/lang/String;
    if-eqz v4, :cond_21

    .line 289
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v5, v4

    if-ge v2, v5, :cond_1c

    .line 293
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 299
    .end local v1    # "file":Ljava/io/File;
    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 307
    .end local v2    # "i":I
    .local v0, "bRet":Z
    :goto_20
    return v0

    .line 305
    .end local v0    # "bRet":Z
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "bRet":Z
    goto :goto_20
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 325
    .local v1, "run":Ljava/lang/Runtime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 744 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 327
    .local v0, "myProcess":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 329
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 331
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2c} :catch_2e

    .line 337
    .end local v0    # "myProcess":Ljava/lang/Process;
    .end local v1    # "run":Ljava/lang/Runtime;
    :catch_2c
    move-exception v2

    .line 349
    :cond_2d
    :goto_2d
    return-void

    .line 343
    :catch_2e
    move-exception v2

    goto :goto_2d
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 19
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 367
    move-object/from16 v10, p2

    .line 369
    .local v10, "myInputStream":Ljava/io/InputStream;
    move-object/from16 v9, p1

    .line 371
    .local v9, "myDirectory":Ljava/io/File;
    move-object/from16 v8, p3

    .line 373
    .local v8, "myDestination":Ljava/lang/String;
    const-string v0, ""

    .line 379
    .local v0, "absolutePath":Ljava/lang/String;
    :try_start_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .local v2, "dest":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 389
    new-instance v12, Ljava/io/BufferedOutputStream;

    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 393
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 397
    .local v1, "b":[B
    const/4 v11, 0x0

    .line 399
    .local v11, "read":I
    :goto_29
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_79

    .line 401
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_36
    .catchall {:try_start_8 .. :try_end_35} :catchall_a9

    goto :goto_29

    .line 413
    .end local v1    # "b":[B
    .end local v2    # "dest":Ljava/io/File;
    .end local v11    # "read":I
    :catch_36
    move-exception v4

    .line 417
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_37
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 421
    .local v6, "length":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_49

    .line 423
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 427
    :cond_49
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_a9

    .line 435
    if-eqz v10, :cond_51

    .line 437
    :try_start_4e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_dd

    .line 449
    :cond_51
    :goto_51
    :try_start_51
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_5a

    .line 451
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_e7

    .line 463
    :cond_5a
    :goto_5a
    :try_start_5a
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_63

    .line 465
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_63} :catch_f1

    .line 477
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    :cond_63
    :goto_63
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 483
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 487
    .restart local v6    # "length":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_78

    .line 489
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 493
    :cond_78
    return-void

    .line 405
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    .restart local v1    # "b":[B
    .restart local v2    # "dest":Ljava/io/File;
    .restart local v11    # "read":I
    :cond_79
    :try_start_79
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    .line 407
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 409
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_88} :catch_36
    .catchall {:try_start_79 .. :try_end_88} :catchall_a9

    .line 435
    if-eqz v10, :cond_8d

    .line 437
    :try_start_8a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_f7

    .line 449
    :cond_8d
    :goto_8d
    :try_start_8d
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_96

    .line 451
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_96} :catch_100

    .line 463
    :cond_96
    :goto_96
    :try_start_96
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_63

    .line 465
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9f} :catch_a0

    goto :goto_63

    .line 469
    :catch_a0
    move-exception v3

    .line 471
    .local v3, "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    .end local v1    # "b":[B
    .end local v2    # "dest":Ljava/io/File;
    .end local v11    # "read":I
    :goto_a5
    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 433
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_a9
    move-exception v12

    .line 435
    if-eqz v10, :cond_af

    .line 437
    :try_start_ac
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_c2

    .line 449
    :cond_af
    :goto_af
    :try_start_af
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_b8

    .line 451
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b8} :catch_cb

    .line 463
    :cond_b8
    :goto_b8
    :try_start_b8
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_c1

    .line 465
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c1} :catch_d4

    .line 433
    :cond_c1
    :goto_c1
    throw v12

    .line 441
    :catch_c2
    move-exception v3

    .line 443
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : myInputStream.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    .line 455
    .end local v3    # "e":Ljava/io/IOException;
    :catch_cb
    move-exception v3

    .line 457
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : fOut.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    .line 469
    .end local v3    # "e":Ljava/io/IOException;
    :catch_d4
    move-exception v3

    .line 471
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : bos.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 441
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "ex":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":J
    :catch_dd
    move-exception v3

    .line 443
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 455
    .end local v3    # "e":Ljava/io/IOException;
    :catch_e7
    move-exception v3

    .line 457
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 469
    .end local v3    # "e":Ljava/io/IOException;
    :catch_f1
    move-exception v3

    .line 471
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    goto :goto_a5

    .line 441
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    .restart local v1    # "b":[B
    .restart local v2    # "dest":Ljava/io/File;
    .restart local v11    # "read":I
    :catch_f7
    move-exception v3

    .line 443
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 455
    .end local v3    # "e":Ljava/io/IOException;
    :catch_100
    move-exception v3

    .line 457
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 22
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 499
    const/4 v7, 0x0

    .line 501
    .local v7, "fOut":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 503
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v13, p2

    .line 505
    .local v13, "myInputStream":Ljava/io/InputStream;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 506
    .local v10, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 511
    :try_start_1e
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v4, "dest":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_fb
    .catchall {:try_start_1e .. :try_end_28} :catchall_92

    .line 515
    .end local v7    # "fOut":Ljava/io/FileOutputStream;
    .local v8, "fOut":Ljava/io/FileOutputStream;
    :try_start_28
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_fe
    .catchall {:try_start_28 .. :try_end_2d} :catchall_f4

    .line 518
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v15, 0x400

    :try_start_2f
    new-array v1, v15, [B

    .line 521
    .local v1, "b":[B
    const/4 v14, 0x0

    .line 523
    .local v14, "read":I
    :goto_32
    invoke-virtual {v13, v1}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_77

    .line 525
    const/4 v15, 0x0

    invoke-virtual {v3, v1, v15, v14}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_3d
    .catchall {:try_start_2f .. :try_end_3c} :catchall_f7

    goto :goto_32

    .line 537
    .end local v1    # "b":[B
    .end local v14    # "read":I
    :catch_3d
    move-exception v6

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 541
    .end local v4    # "dest":Ljava/io/File;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .local v6, "ex":Ljava/lang/Exception;
    .restart local v7    # "fOut":Ljava/io/FileOutputStream;
    :goto_40
    :try_start_40
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 545
    .local v11, "length":J
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-nez v15, :cond_52

    .line 547
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 551
    :cond_52
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_92

    .line 559
    if-eqz v13, :cond_5a

    .line 561
    :try_start_57
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_be

    .line 573
    :cond_5a
    :goto_5a
    if-eqz v7, :cond_5f

    .line 575
    :try_start_5c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_c7

    .line 587
    :cond_5f
    :goto_5f
    if-eqz v2, :cond_64

    .line 589
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_d0

    .line 607
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "length":J
    :cond_64
    :goto_64
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .restart local v9    # "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 611
    .restart local v11    # "length":J
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-nez v15, :cond_76

    .line 613
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 617
    :cond_76
    return-void

    .line 529
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "fOut":Ljava/io/FileOutputStream;
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "length":J
    .restart local v1    # "b":[B
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dest":Ljava/io/File;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v14    # "read":I
    :cond_77
    :try_start_77
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 531
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 533
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_80} :catch_3d
    .catchall {:try_start_77 .. :try_end_80} :catchall_f7

    .line 559
    if-eqz v13, :cond_85

    .line 561
    :try_start_82
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_d9

    .line 573
    :cond_85
    :goto_85
    if-eqz v8, :cond_8a

    .line 575
    :try_start_87
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_e2

    .line 587
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_8f

    .line 589
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_eb

    :cond_8f
    :goto_8f
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 599
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v7    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_64

    .line 557
    .end local v1    # "b":[B
    .end local v4    # "dest":Ljava/io/File;
    .end local v14    # "read":I
    :catchall_92
    move-exception v15

    .line 559
    :goto_93
    if-eqz v13, :cond_98

    .line 561
    :try_start_95
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_a3

    .line 573
    :cond_98
    :goto_98
    if-eqz v7, :cond_9d

    .line 575
    :try_start_9a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_ac

    .line 587
    :cond_9d
    :goto_9d
    if-eqz v2, :cond_a2

    .line 589
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_b5

    .line 557
    :cond_a2
    :goto_a2
    throw v15

    .line 565
    :catch_a3
    move-exception v5

    .line 567
    .local v5, "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 579
    .end local v5    # "e":Ljava/io/IOException;
    :catch_ac
    move-exception v5

    .line 581
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : fOut.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 593
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b5
    move-exception v5

    .line 595
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : bos.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 565
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "ex":Ljava/lang/Exception;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "length":J
    :catch_be
    move-exception v5

    .line 567
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 579
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c7
    move-exception v5

    .line 581
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : fOut.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 593
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d0
    move-exception v5

    .line 595
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : bos.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 565
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v7    # "fOut":Ljava/io/FileOutputStream;
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "length":J
    .restart local v1    # "b":[B
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dest":Ljava/io/File;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v14    # "read":I
    :catch_d9
    move-exception v5

    .line 567
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 579
    .end local v5    # "e":Ljava/io/IOException;
    :catch_e2
    move-exception v5

    .line 581
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : fOut.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 593
    .end local v5    # "e":Ljava/io/IOException;
    :catch_eb
    move-exception v5

    .line 595
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : bos.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 557
    .end local v1    # "b":[B
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v14    # "read":I
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_f4
    move-exception v15

    move-object v7, v8

    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v7    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_93

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    :catchall_f7
    move-exception v15

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v7    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_93

    .line 537
    .end local v4    # "dest":Ljava/io/File;
    :catch_fb
    move-exception v6

    goto/16 :goto_40

    .end local v7    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/File;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    :catch_fe
    move-exception v6

    move-object v7, v8

    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v7    # "fOut":Ljava/io/FileOutputStream;
    goto/16 :goto_40
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontName"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "createFontDirectory : Start"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v9, 0x0

    .line 182
    .local v9, "settingContext":Landroid/content/Context;
    :try_start_8
    const-string v11, "com.android.settings"

    const/4 v12, 0x2

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_33

    move-result-object v9

    .line 188
    :goto_f
    if-eqz v9, :cond_38

    .line 190
    const-string v11, "fonts"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 191
    .local v6, "newFontDir":Ljava/io/File;
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir object created : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, "tmp":[Ljava/lang/String;
    if-nez v10, :cond_41

    .line 213
    const/4 v1, 0x0

    .line 265
    .end local v1    # "fontFile":Ljava/io/File;
    .end local v6    # "newFontDir":Ljava/io/File;
    .end local v10    # "tmp":[Ljava/lang/String;
    :cond_32
    :goto_32
    return-object v1

    .line 183
    :catch_33
    move-exception v0

    .line 185
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 195
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_38
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Not Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x0

    goto :goto_32

    .line 216
    .restart local v1    # "fontFile":Ljava/io/File;
    .restart local v6    # "newFontDir":Ljava/io/File;
    .restart local v10    # "tmp":[Ljava/lang/String;
    :cond_41
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    array-length v11, v10

    if-ge v2, v11, :cond_4d

    .line 220
    aget-object v11, v10, v2

    invoke-direct {p0, v6, v11}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 228
    :cond_4d
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-eqz v11, :cond_93

    .line 229
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_5a
    :try_start_5a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 239
    .local v7, "run":Ljava/lang/Runtime;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 711 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 243
    .local v5, "myProcess":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 245
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v11

    if-eqz v11, :cond_32

    .line 247
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Cannot chmod"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_8a} :catch_8a
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_8a} :catch_9b

    .line 253
    .end local v5    # "myProcess":Ljava/lang/Process;
    .end local v7    # "run":Ljava/lang/Runtime;
    .end local v8    # "s":Ljava/lang/String;
    :catch_8a
    move-exception v4

    .line 255
    .local v4, "ioEx":Ljava/io/IOException;
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "IOException : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 231
    .end local v4    # "ioEx":Ljava/io/IOException;
    :cond_93
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Not Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 259
    :catch_9b
    move-exception v3

    .line 261
    .local v3, "iEx":Ljava/lang/InterruptedException;
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "InterruptedException : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, ""

    .line 110
    .local v0, "absolutePath":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 118
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 120
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 122
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 124
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_5d
    .catchall {:try_start_2 .. :try_end_42} :catchall_7e

    .line 137
    :try_start_42
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_4b

    .line 139
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_b0

    .line 151
    :cond_4b
    :goto_4b
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_54

    .line 153
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_ba

    .line 164
    .end local v1    # "dest":Ljava/io/File;
    :cond_54
    :goto_54
    const-string v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 167
    return-void

    .line 127
    :catch_5d
    move-exception v3

    .line 129
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_5e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_7e

    .line 137
    :try_start_61
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_6a

    .line 139
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6a} :catch_a6

    .line 151
    :cond_6a
    :goto_6a
    :try_start_6a
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_54

    .line 153
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_73} :catch_74

    goto :goto_54

    .line 157
    :catch_74
    move-exception v2

    .line 159
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : fOut.close() error"

    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_7a
    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_7e
    move-exception v4

    .line 137
    :try_start_7f
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_88

    .line 139
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_88} :catch_92

    .line 151
    :cond_88
    :goto_88
    :try_start_88
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_91

    .line 153
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_91} :catch_9c

    .line 135
    :cond_91
    :goto_91
    throw v4

    .line 143
    :catch_92
    move-exception v2

    .line 145
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9c
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_a6
    move-exception v2

    .line 145
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "dest":Ljava/io/File;
    :catch_b0
    move-exception v2

    .line 145
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :catch_ba
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : fOut.close() error"

    goto :goto_7a
.end method
