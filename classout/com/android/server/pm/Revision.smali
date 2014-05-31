.class public Lcom/android/server/pm/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Revision"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_sepolicy_build_date()Ljava/lang/String;
    .registers 16

    .prologue
    .line 369
    const/4 v3, 0x0

    .line 370
    .local v3, "buildDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 371
    .local v9, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .line 372
    .local v10, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 373
    .local v11, "priority":I
    const/4 v8, 0x0

    .line 375
    .local v8, "index":I
    const/4 v1, 0x0

    .line 376
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 378
    .local v6, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v11

    .line 379
    const/4 v12, 0x4

    new-array v0, v12, [Ljava/io/File;

    const/4 v12, 0x0

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "security/sepolicy"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "security/spota/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/io/File;

    const-string v14, "sepolicy_version"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput-object v13, v0, v12

    .line 387
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_38
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    add-int/lit8 v13, v11, -0x1

    aget-object v13, v0, v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_46} :catch_a2

    .line 388
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_46
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_50} :catch_a4

    .line 389
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v12, 0x1

    if-eq v11, v12, :cond_9a

    .line 392
    :cond_53
    :try_start_53
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 393
    if-nez v9, :cond_72

    .line 394
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5f} :catch_5f

    .line 404
    :catch_5f
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 405
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_62
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_65
    if-eqz v1, :cond_6b

    .line 410
    :try_start_67
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 411
    const/4 v1, 0x0

    .line 413
    :cond_6b
    if-eqz v6, :cond_71

    .line 414
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_70} :catch_9d

    .line 415
    const/4 v6, 0x0

    .line 421
    :cond_71
    :goto_71
    return-object v3

    .line 396
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_72
    const/16 v12, 0x3d

    :try_start_74
    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 397
    const/4 v12, -0x1

    if-ne v8, v12, :cond_81

    .line 398
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-direct {v12}, Ljava/lang/NumberFormatException;-><init>()V

    throw v12

    .line 400
    :cond_81
    const/4 v12, 0x0

    invoke-virtual {v9, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 401
    const-string v12, "BD"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 402
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_99} :catch_5f

    .end local v3    # "buildDate":Ljava/lang/String;
    .local v4, "buildDate":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "buildDate":Ljava/lang/String;
    .restart local v3    # "buildDate":Ljava/lang/String;
    :cond_9a
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 406
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_65

    .line 417
    :catch_9d
    move-exception v5

    .line 418
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_71

    .line 404
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a2
    move-exception v5

    goto :goto_62

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_a4
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_62
.end method

.method public static get_sepolicy_info()[Ljava/lang/String;
    .registers 17

    .prologue
    .line 425
    const/4 v13, 0x2

    new-array v9, v13, [Ljava/lang/String;

    .line 426
    .local v9, "info":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 427
    .local v10, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 428
    .local v11, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 429
    .local v12, "priority":I
    const/4 v8, 0x0

    .line 431
    .local v8, "index":I
    new-instance v3, Ljava/lang/String;

    const-string v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 433
    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 434
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 436
    .local v6, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v12

    .line 437
    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/sepolicy"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/io/File;

    const-string v15, "sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v0, v13

    .line 442
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v13, "GOOGLE_POLICY"

    const-string v14, "selinux.policy_version"

    const-string v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5c

    .line 443
    const/4 v13, 0x0

    const-string v14, "GOOGLE_POLICY"

    aput-object v14, v9, v13

    .line 444
    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13

    .line 505
    :cond_5b
    :goto_5b
    return-object v9

    .line 449
    :cond_5c
    const/4 v13, 0x1

    if-ne v12, v13, :cond_76

    .line 450
    const/4 v13, 0x0

    :try_start_60
    const-string v14, "Enterprise Policy"

    aput-object v14, v9, v13

    .line 451
    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_102

    .line 494
    :cond_69
    :goto_69
    if-eqz v1, :cond_6f

    .line 495
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 496
    const/4 v1, 0x0

    .line 498
    :cond_6f
    if-eqz v6, :cond_5b

    .line 499
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_74} :catch_fc

    .line 500
    const/4 v6, 0x0

    goto :goto_5b

    .line 453
    :cond_76
    :try_start_76
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    add-int/lit8 v14, v12, -0x1

    aget-object v14, v0, v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_84} :catch_102

    .line 454
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_84
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8e} :catch_104

    .line 456
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_8e
    :goto_8e
    :try_start_8e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_107

    .line 457
    const-string v13, "VE="

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b0

    .line 458
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 459
    const/4 v13, 0x0

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v14, v9, v13

    .line 462
    :cond_b0
    const-string v13, "BD="

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_cc

    .line 463
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 464
    const/4 v13, 0x1

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v14, v9, v13

    .line 467
    :cond_cc
    const/4 v13, 0x0

    aget-object v13, v9, v13

    if-nez v13, :cond_d6

    .line 468
    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v9, v13

    .line 471
    :cond_d6
    const/4 v13, 0x1

    aget-object v13, v9, v13

    if-nez v13, :cond_8e

    .line 472
    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_e0} :catch_e1

    goto :goto_8e

    .line 477
    :catch_e1
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 479
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_e4
    if-eqz v1, :cond_ea

    .line 480
    :try_start_e6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 481
    const/4 v1, 0x0

    .line 483
    :cond_ea
    if-eqz v6, :cond_69

    .line 484
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ef} :catch_f2

    .line 485
    const/4 v6, 0x0

    goto/16 :goto_69

    .line 487
    :catch_f2
    move-exception v5

    .line 488
    .local v5, "ie":Ljava/io/IOException;
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 502
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ie":Ljava/io/IOException;
    :catch_fc
    move-exception v4

    .line 503
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5b

    .line 477
    .end local v4    # "e":Ljava/io/IOException;
    :catch_102
    move-exception v4

    goto :goto_e4

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_104
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_e4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_107
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_69
.end method

.method public static get_sepolicy_version()Ljava/lang/String;
    .registers 17

    .prologue
    .line 289
    const/4 v11, 0x0

    .line 290
    .local v11, "version":Ljava/lang/String;
    const/4 v9, 0x0

    .line 291
    .local v9, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .line 292
    .local v10, "priority":I
    const/4 v8, 0x0

    .line 293
    .local v8, "index":I
    new-instance v3, Ljava/lang/String;

    const-string v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 296
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 299
    .local v6, "in":Ljava/io/DataInputStream;
    const-string v13, "GOOGLE_POLICY"

    const-string v14, "selinux.policy_version"

    const-string v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 300
    new-instance v11, Ljava/lang/String;

    .end local v11    # "version":Ljava/lang/String;
    const-string v13, "GOOGLE_POLICY"

    invoke-direct {v11, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 364
    :goto_24
    return-object v11

    .line 303
    .restart local v11    # "version":Ljava/lang/String;
    :cond_25
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v10

    .line 304
    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/sepolicy"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/io/File;

    const-string v15, "sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v0, v13

    .line 311
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_56
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    add-int/lit8 v14, v10, -0x1

    aget-object v14, v0, v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_64} :catch_e1

    .line 313
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_64
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6e} :catch_e3

    .line 314
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v13, 0x1

    if-ne v10, v13, :cond_86

    .line 315
    :try_start_71
    new-instance v12, Ljava/lang/String;

    const-string v13, "Enterprise Policy"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_78} :catch_92

    .end local v11    # "version":Ljava/lang/String;
    .local v12, "version":Ljava/lang/String;
    move-object v11, v12

    .line 352
    .end local v12    # "version":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    :goto_79
    if-eqz v2, :cond_e6

    .line 353
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_d3

    .line 354
    const/4 v1, 0x0

    .line 356
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_7f
    if-eqz v7, :cond_dc

    .line 357
    :try_start_81
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_df

    .line 358
    const/4 v6, 0x0

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_24

    .line 317
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_86
    :try_start_86
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 319
    if-nez v9, :cond_ae

    .line 320
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_92} :catch_92

    .line 330
    :catch_92
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 332
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_95
    if-eqz v1, :cond_9b

    .line 333
    :try_start_97
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 334
    const/4 v1, 0x0

    .line 336
    :cond_9b
    if-eqz v6, :cond_a1

    .line 337
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a0} :catch_ca

    .line 338
    const/4 v6, 0x0

    .line 343
    :cond_a1
    :goto_a1
    if-eqz v11, :cond_a4

    .line 344
    const/4 v11, 0x0

    .line 347
    :cond_a4
    const-string v13, "Revision"

    const-string v14, "Couldn\'t load policy "

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v3

    .line 348
    goto/16 :goto_24

    .line 323
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_ae
    const/16 v13, 0x3d

    :try_start_b0
    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 324
    const/4 v13, -0x1

    if-ne v8, v13, :cond_bd

    .line 325
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 328
    :cond_bd
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c8} :catch_92

    .end local v11    # "version":Ljava/lang/String;
    .restart local v12    # "version":Ljava/lang/String;
    move-object v11, v12

    .end local v12    # "version":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    goto :goto_79

    .line 340
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_ca
    move-exception v5

    .line 341
    .local v5, "ie":Ljava/io/IOException;
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 360
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ie":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_d3
    move-exception v4

    move-object v1, v2

    .line 361
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_d5
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/IOException;
    :cond_dc
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_24

    .line 360
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_df
    move-exception v4

    goto :goto_d5

    .line 330
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_e1
    move-exception v4

    goto :goto_95

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_e3
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_95

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_e6
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_7f
.end method

.method public static selinux_android_load_priority()I
    .registers 23

    .prologue
    .line 89
    const-wide/16 v13, 0x0

    .line 90
    .local v13, "sepolicy_version_highest":J
    const-wide/16 v15, 0x0

    .line 91
    .local v15, "sepolicy_version_new":J
    const/4 v7, 0x0

    .line 92
    .local v7, "i":I
    const/4 v5, 0x0

    .line 93
    .local v5, "cmp_value":I
    const/4 v3, 0x0

    .line 94
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 95
    .local v8, "in":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 96
    .local v18, "tmp_version":Ljava/lang/String;
    const/4 v10, 0x0

    .line 97
    .local v10, "mdm_policy_status":Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    const-string v19, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 98
    .local v17, "spd_and_version":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    const-string v19, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 99
    .local v11, "ram_and_version":Ljava/lang/String;
    const/4 v12, 0x0

    .line 100
    .local v12, "selinux_policy_priority":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v2, v0, [Ljava/io/File;

    const/16 v19, 0x0

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string v22, "security/sepolicy"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x1

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string v22, "security/spota/sepolicy_version"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x2

    new-instance v20, Ljava/io/File;

    const-string v21, "sepolicy_version"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v2, v19

    .line 108
    .local v2, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v19, "GOOGLE_POLICY"

    const-string v20, "selinux.policy_version"

    const-string v21, "Unknown"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9f

    .line 109
    const/16 v19, 0x3

    .line 192
    :goto_67
    return v19

    .line 124
    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    :cond_68
    :try_start_68
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_76} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_147

    .line 125
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_76
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v18

    .line 126
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v15

    .line 128
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_e7

    .line 129
    cmp-long v19, v15, v13

    if-lez v19, :cond_89

    .line 130
    move-wide v13, v15

    .line 132
    :cond_89
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_8c} :catch_151
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8c} :catch_14a

    move-result-object v17

    .line 133
    add-int/lit8 v12, v7, 0x1

    :cond_8f
    :goto_8f
    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 155
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :goto_91
    if-eqz v3, :cond_97

    .line 156
    :try_start_93
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 157
    const/4 v3, 0x0

    .line 159
    :cond_97
    if-eqz v8, :cond_9d

    .line 160
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9c} :catch_12a

    .line 161
    const/4 v8, 0x0

    .line 167
    :cond_9d
    :goto_9d
    add-int/lit8 v7, v7, 0x1

    .line 112
    :cond_9f
    aget-object v19, v2, v7

    if-eqz v19, :cond_c3

    .line 114
    :try_start_a3
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v19, v2, v7

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_a3 .. :try_end_ac} :catch_103
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ac} :catch_120

    .line 116
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    if-nez v7, :cond_68

    .line 117
    :try_start_ae
    const-string v19, "persist.security.mdm.policy"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_bd
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_bd} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bd} :catch_147

    move-result v19

    if-eqz v19, :cond_68

    .line 119
    add-int/lit8 v12, v7, 0x1

    move-object v8, v9

    .line 170
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :cond_c3
    :goto_c3
    if-eqz v3, :cond_c9

    .line 171
    :try_start_c5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 172
    const/4 v3, 0x0

    .line 174
    :cond_c9
    if-eqz v8, :cond_cf

    .line 175
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_ce} :catch_134

    .line 176
    const/4 v8, 0x0

    .line 182
    :cond_cf
    :goto_cf
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v12, v0, :cond_e4

    .line 183
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v19

    if-eqz v19, :cond_13d

    .line 184
    const/4 v12, 0x2

    .line 185
    const-string v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    :goto_e4
    move/from16 v19, v12

    .line 192
    goto :goto_67

    .line 135
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_e7
    :try_start_e7
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 136
    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/io/FileNotFoundException; {:try_start_e7 .. :try_end_f0} :catch_151
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_f0} :catch_14a

    move-result v5

    .line 139
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_fe

    .line 140
    cmp-long v19, v15, v13

    if-lez v19, :cond_8f

    .line 141
    add-int/lit8 v12, v7, 0x1

    goto :goto_8f

    .line 144
    :cond_fe
    add-int/lit8 v12, v7, 0x1

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 145
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_c3

    .line 148
    :catch_103
    move-exception v6

    .line 149
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_104
    const-string v19, "Revision"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File not found at: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v2, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 150
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_120
    move-exception v6

    .line 151
    .local v6, "e":Ljava/lang/Exception;
    :goto_121
    const-string v19, "Revision"

    const-string v20, "selinux_android_load_priority : Couldn\'t compute selinux_policy_priority "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 163
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_12a
    move-exception v6

    .line 164
    .local v6, "e":Ljava/io/IOException;
    const-string v19, "Revision"

    const-string v20, "selinux_android_load_priority : Couldn\'t close BufferedReader "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 178
    .end local v6    # "e":Ljava/io/IOException;
    :catch_134
    move-exception v6

    .line 179
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v19, "Revision"

    const-string v20, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 188
    .end local v6    # "e":Ljava/io/IOException;
    :cond_13d
    const/4 v12, 0x3

    .line 189
    const-string v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 150
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_147
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_121

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_14a
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_121

    .line 148
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_14e
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_104

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_151
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_104
.end method

.method private static selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "spd_and_version"    # Ljava/lang/String;
    .param p1, "ram_and_version"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "cmp_val":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 79
    const/4 v0, 0x1

    .line 84
    :goto_8
    return v0

    .line 81
    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static selinux_compare_spd_ram()I
    .registers 21

    .prologue
    .line 197
    const-wide/16 v11, 0x0

    .line 198
    .local v11, "sepolicy_version_highest":J
    const-wide/16 v13, 0x0

    .line 199
    .local v13, "sepolicy_version_new":J
    const/4 v6, 0x0

    .line 200
    .local v6, "i":I
    const/4 v4, 0x0

    .line 201
    .local v4, "cmp_value":I
    const/4 v2, 0x0

    .line 202
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 203
    .local v7, "in":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 204
    .local v16, "tmp_version":Ljava/lang/String;
    new-instance v15, Ljava/lang/String;

    const-string v17, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 205
    .local v15, "spd_and_version":Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    const-string v17, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 206
    .local v9, "ram_and_version":Ljava/lang/String;
    const/4 v10, 0x0

    .line 208
    .local v10, "selinux_policy_priority":I
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v1, v0, [Ljava/io/File;

    const/16 v17, 0x0

    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v19

    const-string v20, "security/spota/sepolicy_version"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v18, v1, v17

    const/16 v17, 0x1

    new-instance v18, Ljava/io/File;

    const-string v19, "sepolicy_version"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v1, v17

    const/16 v17, 0x2

    const/16 v18, 0x0

    aput-object v18, v1, v17

    .line 214
    .local v1, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v17, "GOOGLE_POLICY"

    const-string v18, "selinux.policy_version"

    const-string v19, "Unknown"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_56

    .line 215
    const/16 v17, 0x3

    .line 284
    :goto_55
    return v17

    .line 218
    :cond_56
    :goto_56
    aget-object v17, v1, v6

    if-eqz v17, :cond_b0

    .line 220
    :try_start_5a
    new-instance v8, Ljava/io/FileInputStream;

    aget-object v17, v1, v6

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_d3

    .line 221
    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v8, "in":Ljava/io/FileInputStream;
    :try_start_63
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_f1

    .line 222
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_71
    invoke-static {v3}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v16

    .line 223
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v13

    .line 225
    if-nez v6, :cond_97

    .line 226
    cmp-long v17, v13, v11

    if-lez v17, :cond_80

    .line 227
    move-wide v11, v13

    .line 229
    :cond_80
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_83} :catch_f4

    move-result-object v15

    .line 230
    add-int/lit8 v10, v6, 0x1

    :cond_86
    :goto_86
    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 249
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_88
    if-eqz v2, :cond_8e

    .line 250
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 251
    const/4 v2, 0x0

    .line 253
    :cond_8e
    if-eqz v7, :cond_94

    .line 254
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_93} :catch_d8

    .line 255
    const/4 v7, 0x0

    .line 260
    :cond_94
    :goto_94
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 232
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :cond_97
    :try_start_97
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 233
    invoke-static {v15, v9}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9e} :catch_f4

    move-result v4

    .line 236
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_ac

    .line 237
    cmp-long v17, v13, v11

    if-lez v17, :cond_86

    .line 238
    add-int/lit8 v10, v6, 0x1

    goto :goto_86

    .line 241
    :cond_ac
    add-int/lit8 v10, v6, 0x1

    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 263
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_b0
    if-eqz v2, :cond_b6

    .line 264
    :try_start_b2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 265
    const/4 v2, 0x0

    .line 267
    :cond_b6
    if-eqz v7, :cond_bc

    .line 268
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_bb} :catch_dd

    .line 269
    const/4 v7, 0x0

    .line 275
    :cond_bc
    :goto_bc
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_d0

    .line 276
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v17

    if-eqz v17, :cond_e6

    .line 277
    const-string v17, "Revision"

    const-string/jumbo v18, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    :goto_d0
    move/from16 v17, v10

    .line 284
    goto :goto_55

    .line 245
    :catch_d3
    move-exception v5

    .line 246
    .local v5, "e":Ljava/lang/Exception;
    :goto_d4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88

    .line 257
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_d8
    move-exception v5

    .line 258
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_94

    .line 271
    .end local v5    # "e":Ljava/io/IOException;
    :catch_dd
    move-exception v5

    .line 272
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v17, "Revision"

    const-string v18, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 280
    .end local v5    # "e":Ljava/io/IOException;
    :cond_e6
    add-int/lit8 v10, v10, 0x1

    .line 281
    const-string v17, "Revision"

    const-string/jumbo v18, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 245
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catch_f1
    move-exception v5

    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    goto :goto_d4

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catch_f4
    move-exception v5

    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_d4
.end method

.method private static selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "and_version":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v3, "0.0"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "default_version":Ljava/lang/String;
    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 50
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 55
    .end local v1    # "default_version":Ljava/lang/String;
    :goto_11
    return-object v1

    .line 53
    .restart local v1    # "default_version":Ljava/lang/String;
    :cond_12
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 55
    goto :goto_11
.end method

.method private static selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 7
    .param p0, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v3, 0x0

    .line 25
    .local v3, "version":[Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v4, "SEPF_XXX_XX_0000"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "default_full_name":Ljava/lang/String;
    :try_start_8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 31
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_14

    .line 34
    .end local v2    # "line":Ljava/lang/String;
    :catch_14
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Revision"

    const-string v5, "selinux_get_full_version : Couldn\'t extract version name "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v0    # "default_full_name":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1c
    return-object v0

    .line 33
    .restart local v0    # "default_full_name":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1d
    :try_start_1d
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_14

    move-result-object v3

    .line 41
    const/4 v4, 0x1

    aget-object v0, v3, v4

    goto :goto_1c
.end method

.method private static selinux_get_version(Ljava/lang/String;)J
    .registers 7
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 60
    move-object v3, p0

    .line 61
    .local v3, "line":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 63
    .local v0, "default_version":J
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 64
    .local v2, "index":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_d

    .line 68
    .end local v0    # "default_version":J
    :goto_c
    return-wide v0

    .restart local v0    # "default_version":J
    :cond_d
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_c
.end method
