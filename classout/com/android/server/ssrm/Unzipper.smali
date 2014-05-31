.class public Lcom/android/server/ssrm/Unzipper;
.super Ljava/lang/Object;
.source "Unzipper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzip(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;
    .registers 14
    .param p0, "fileZip"    # Ljava/io/File;

    .prologue
    .line 31
    const-string v12, "636c61737365732e646578"

    invoke-static {v12}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    .local v8, "mFileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 34
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 35
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 36
    .local v10, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_e
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_7a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_5a

    .line 40
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_13
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_7c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_6e

    .line 41
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_18
    new-instance v11, Ljava/util/zip/ZipInputStream;

    invoke-direct {v11, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_7f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_71

    .line 42
    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .local v11, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v9, 0x0

    .line 44
    .local v9, "zentry":Ljava/util/zip/ZipEntry;
    :cond_1e
    :try_start_1e
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    if-eqz v9, :cond_56

    .line 45
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_1e

    .line 49
    const/16 v12, 0x400

    new-array v3, v12, [B

    .line 50
    .local v3, "buf":[B
    const/4 v7, 0x0

    .line 52
    .local v7, "len":I
    :goto_33
    invoke-virtual {v11, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_56

    .line 53
    const/4 v12, 0x0

    invoke-virtual {v0, v3, v12, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_3e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3e} :catch_75

    goto :goto_33

    .line 58
    .end local v3    # "buf":[B
    .end local v7    # "len":I
    :catch_3f
    move-exception v4

    move-object v10, v11

    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 59
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "zentry":Ljava/util/zip/ZipEntry;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_43
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 64
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_46
    if-eqz v10, :cond_4b

    .line 66
    :try_start_48
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_5f

    .line 72
    :cond_4b
    :goto_4b
    if-eqz v1, :cond_50

    .line 74
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_64

    .line 80
    :cond_50
    :goto_50
    if-eqz v5, :cond_55

    .line 82
    :try_start_52
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_69

    .line 88
    :cond_55
    :goto_55
    return-object v0

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_56
    move-object v10, v11

    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 62
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_46

    .line 60
    .end local v9    # "zentry":Ljava/util/zip/ZipEntry;
    :catch_5a
    move-exception v4

    .line 61
    .local v4, "e":Ljava/io/IOException;
    :goto_5b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 67
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5f
    move-exception v4

    .line 68
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .line 75
    .end local v4    # "e":Ljava/io/IOException;
    :catch_64
    move-exception v4

    .line 76
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 83
    .end local v4    # "e":Ljava/io/IOException;
    :catch_69
    move-exception v4

    .line 84
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 60
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_6e
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5b

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_71
    move-exception v4

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5b

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_75
    move-exception v4

    move-object v10, v11

    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5b

    .line 58
    .end local v9    # "zentry":Ljava/util/zip/ZipEntry;
    :catch_7a
    move-exception v4

    goto :goto_43

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_7c
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_43

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_7f
    move-exception v4

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_43
.end method
