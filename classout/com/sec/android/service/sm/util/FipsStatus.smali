.class public Lcom/sec/android/service/sm/util/FipsStatus;
.super Ljava/lang/Object;
.source "FipsStatus.java"


# static fields
.field public static final CRYPTO_PROC_PATH:Ljava/lang/String; = "/proc/sys/crypto"

.field public static final FIPS_STATUS_FILE:Ljava/lang/String; = "fips_status"

.field public static final IN_FIPS_ERROR:I = 0x1

.field public static final NOT_IN_FIPS_ERROR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SMS[Fips]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFipsStatus()I
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 26
    new-instance v3, Ljava/io/File;

    const-string v8, "/proc/sys/crypto"

    const-string v9, "fips_status"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v3, "fipsStatus":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_17
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_21} :catch_71
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_90
    .catchall {:try_start_17 .. :try_end_21} :catchall_a7

    .line 33
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_21
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "status":Ljava/lang/String;
    const/4 v5, 0x1

    .line 35
    .local v5, "result":I
    if-eqz v6, :cond_b7

    .line 36
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2b} :catch_d4
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_d1
    .catchall {:try_start_21 .. :try_end_2b} :catchall_ce

    move-result v8

    if-lez v8, :cond_b7

    .line 38
    :try_start_2e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_51
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_31} :catch_d4
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_d1
    .catchall {:try_start_2e .. :try_end_31} :catchall_ce

    move-result v8

    if-nez v8, :cond_4f

    const/4 v5, 0x0

    .line 43
    :goto_35
    :try_start_35
    const-string v8, "SMS[Fips]"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FipsStatus: getFipsStatus="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_49} :catch_d4
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_49} :catch_d1
    .catchall {:try_start_35 .. :try_end_49} :catchall_ce

    .line 53
    if-eqz v1, :cond_4e

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_68

    .line 65
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "result":I
    .end local v6    # "status":Ljava/lang/String;
    :cond_4e
    :goto_4e
    return v5

    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "result":I
    .restart local v6    # "status":Ljava/lang/String;
    :cond_4f
    move v5, v7

    .line 38
    goto :goto_35

    .line 39
    :catch_51
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v8, "SMS[Fips]"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FipsStatus: exception while parsing status="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_66} :catch_d4
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_66} :catch_d1
    .catchall {:try_start_52 .. :try_end_66} :catchall_ce

    .line 41
    const/4 v5, 0x1

    goto :goto_35

    .line 55
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_68
    move-exception v4

    .line 56
    .local v4, "ioe":Ljava/io/IOException;
    const-string v7, "SMS[Fips]"

    const-string v8, "FipsStatus: close exception"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 47
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "result":I
    .end local v6    # "status":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_71
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_72
    :try_start_72
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: status file does not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_a7

    .line 53
    if-eqz v0, :cond_7e

    :try_start_7b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_87

    .line 64
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_7e
    :goto_7e
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: returning with not in fip error"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 65
    goto :goto_4e

    .line 55
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_87
    move-exception v4

    .line 56
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 49
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_90
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    :goto_91
    :try_start_91
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: exception while reading status file"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_a7

    .line 53
    if-eqz v0, :cond_7e

    :try_start_9a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_7e

    .line 55
    :catch_9e
    move-exception v4

    .line 56
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 51
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_a7
    move-exception v7

    .line 53
    :goto_a8
    if-eqz v0, :cond_ad

    :try_start_aa
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    .line 58
    :cond_ad
    :goto_ad
    throw v7

    .line 55
    :catch_ae
    move-exception v4

    .line 56
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 53
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "result":I
    .restart local v6    # "status":Ljava/lang/String;
    :cond_b7
    if-eqz v1, :cond_7e

    :try_start_b9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_7e

    .line 55
    :catch_bd
    move-exception v4

    .line 56
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 60
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "result":I
    .end local v6    # "status":Ljava/lang/String;
    :cond_c6
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: unable to read status file"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 51
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_ce
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_a8

    .line 49
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_d1
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_91

    .line 47
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_d4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_72
.end method
