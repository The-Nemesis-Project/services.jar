.class public final Lcom/android/server/pm/PolicyVerification;
.super Ljava/lang/Object;
.source "PolicyVerification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PolicyVerification$PolicyVerify;
    }
.end annotation


# static fields
.field private static final FILE_CONTEXTS:Ljava/lang/String; = "/file_contexts"

.field private static final FILE_CONTEXTS_PREFIX:Ljava/lang/String; = "HF="

.field private static final MAC_PERMISSIONS:Ljava/lang/String; = "/mac_permissions.xml"

.field private static final MAC_PERMISSIONS_PREFIX:Ljava/lang/String; = "HM="

.field private static final POLICY_FILE_PREFIX:Ljava/lang/String; = "SEPF"

.field private static final PROPERTY_CONTEXTS:Ljava/lang/String; = "/property_contexts"

.field private static final PROPERTY_CONTEXTS_PREFIX:Ljava/lang/String; = "HP="

.field private static PolicyFileList:[Ljava/lang/String; = null

.field private static final SEAPP_CONTEXTS:Ljava/lang/String; = "/seapp_contexts"

.field private static final SEAPP_CONTEXTS_PREFIX:Ljava/lang/String; = "HA="

.field private static final SECURITY_DIR_PATH:Ljava/lang/String; = "data/security"

.field private static final SEPOLICY:Ljava/lang/String; = "/sepolicy"

.field private static final SEPOLICY_PREFIX:Ljava/lang/String; = "HS="

.field private static final SEPOLICY_VERSION:Ljava/lang/String; = "/sepolicy_version"

.field private static final SEPOLICY_VERSION_SIGN:Ljava/lang/String; = "/sepolicy_version_sign"

.field private static final SPOTA_DIR_PATH:Ljava/lang/String; = "data/security/spota"

.field private static final TAG:Ljava/lang/String; = "PolicyVerification"

.field private static final VERSION_FILE:Ljava/lang/String; = "VE="


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sepolicy"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/seapp_contexts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/property_contexts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/file_contexts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/mac_permissions.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/sepolicy_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArray2Hex([B)Ljava/lang/String;
    .registers 10
    .param p0, "hash"    # [B

    .prologue
    .line 253
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 254
    .local v2, "formatter":Ljava/util/Formatter;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-ge v3, v4, :cond_1e

    aget-byte v1, v0, v3

    .line 255
    .local v1, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 258
    .end local v1    # "b":B
    :cond_1e
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static calculateHash(Ljava/security/MessageDigest;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "algorithm"    # Ljava/security/MessageDigest;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v3, 0x0

    .line 227
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v6, -0x1

    .line 231
    .local v6, "length":I
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_2f

    .line 233
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_9
    new-array v0, v7, [B

    .line 234
    .local v0, "b":[B
    :goto_b
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_28

    .line 235
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_b

    .line 237
    .end local v0    # "b":[B
    :catch_17
    move-exception v1

    move-object v3, v4

    .line 238
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1c
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 244
    .local v5, "hash":[B
    :try_start_20
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2a

    .line 249
    :goto_23
    invoke-static {v5}, Lcom/android/server/pm/PolicyVerification;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "hash":[B
    .restart local v0    # "b":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_28
    move-object v3, v4

    .line 239
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1c

    .line 245
    .end local v0    # "b":[B
    .restart local v5    # "hash":[B
    :catch_2a
    move-exception v2

    .line 246
    .local v2, "ei":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 237
    .end local v2    # "ei":Ljava/lang/Exception;
    .end local v5    # "hash":[B
    :catch_2f
    move-exception v1

    goto :goto_19
.end method

.method private static compareHashValue()Z
    .registers 8

    .prologue
    .line 125
    const/4 v0, 0x1

    .line 127
    .local v0, "bRet":Z
    const/4 v4, 0x0

    .line 128
    .local v4, "versionhashvalue":[Ljava/lang/String;
    sget-object v5, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    array-length v5, v5

    new-array v1, v5, [Ljava/lang/String;

    .line 129
    .local v1, "filehashvalue":[Ljava/lang/String;
    sget-object v5, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 131
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    sget-object v5, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_23

    .line 132
    const-string v5, "data/security/spota"

    sget-object v6, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Lcom/android/server/pm/PolicyVerification;->fileGetHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 136
    :cond_23
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->getSPotaFileHash()[Ljava/lang/String;

    move-result-object v4

    .line 138
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_28
    sget-object v5, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_52

    .line 139
    aget-object v5, v1, v3

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_55

    .line 140
    const-string v5, "PolicyVerification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "policy file hash not equal. idx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    .line 146
    :cond_52
    const/4 v1, 0x0

    .line 147
    const/4 v4, 0x0

    .line 148
    return v0

    .line 138
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_28
.end method

.method private static fileGetHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "Path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v2, ""

    .line 214
    .local v2, "hash":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "fullfileName":Ljava/lang/String;
    :try_start_13
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 217
    .local v3, "md5":Ljava/security/MessageDigest;
    invoke-static {v3, v1}, Lcom/android/server/pm/PolicyVerification;->calculateHash(Ljava/security/MessageDigest;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1e

    move-result-object v2

    .line 221
    .end local v3    # "md5":Ljava/security/MessageDigest;
    :goto_1d
    return-object v2

    .line 218
    :catch_1e
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private static fileRead(Ljava/lang/String;)[B
    .registers 11
    .param p0, "szFile"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "bytearray":[B
    const/4 v3, 0x0

    .line 84
    .local v3, "fileinputstream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_21
    .catchall {:try_start_2 .. :try_end_7} :catchall_38

    .line 85
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .local v4, "fileinputstream":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 86
    .local v5, "numberBytes":I
    new-array v0, v5, [B

    .line 87
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 88
    .local v6, "readBytes":I
    if-eq v6, v5, :cond_1a

    .line 89
    const-string v7, "PolicyVerification"

    const-string v8, "Read Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_54
    .catchall {:try_start_7 .. :try_end_1a} :catchall_51

    .line 95
    :cond_1a
    if-eqz v4, :cond_1f

    .line 96
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_48

    :cond_1f
    :goto_1f
    move-object v3, v4

    .line 102
    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .end local v5    # "numberBytes":I
    .end local v6    # "readBytes":I
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    :cond_20
    :goto_20
    return-object v0

    .line 91
    :catch_21
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    :goto_22
    :try_start_22
    const-string v7, "PolicyVerification"

    const-string v8, "Read Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_38

    .line 95
    if-eqz v3, :cond_20

    .line 96
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_20

    .line 97
    :catch_2f
    move-exception v2

    .line 98
    .local v2, "ei":Ljava/io/IOException;
    const-string v7, "PolicyVerification"

    const-string v8, "File Close Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ei":Ljava/io/IOException;
    :catchall_38
    move-exception v7

    .line 95
    :goto_39
    if-eqz v3, :cond_3e

    .line 96
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 94
    :cond_3e
    :goto_3e
    throw v7

    .line 97
    :catch_3f
    move-exception v2

    .line 98
    .restart local v2    # "ei":Ljava/io/IOException;
    const-string v8, "PolicyVerification"

    const-string v9, "File Close Error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 97
    .end local v2    # "ei":Ljava/io/IOException;
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v5    # "numberBytes":I
    .restart local v6    # "readBytes":I
    :catch_48
    move-exception v2

    .line 98
    .restart local v2    # "ei":Ljava/io/IOException;
    const-string v7, "PolicyVerification"

    const-string v8, "File Close Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 94
    .end local v2    # "ei":Ljava/io/IOException;
    .end local v5    # "numberBytes":I
    .end local v6    # "readBytes":I
    :catchall_51
    move-exception v7

    move-object v3, v4

    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    goto :goto_39

    .line 91
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v4    # "fileinputstream":Ljava/io/FileInputStream;
    :catch_54
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    goto :goto_22
.end method

.method private static getSPotaFileHash()[Ljava/lang/String;
    .registers 19

    .prologue
    .line 152
    const/4 v7, 0x0

    .line 153
    .local v7, "fr":Ljava/io/FileReader;
    sget-object v17, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    .line 154
    .local v14, "readhashvalue":[Ljava/lang/String;
    const-string v16, ""

    .line 155
    .local v16, "sepolicy":Ljava/lang/String;
    const-string v15, ""

    .line 156
    .local v15, "seapp_contexts":Ljava/lang/String;
    const-string v12, ""

    .line 157
    .local v12, "property_contexts":Ljava/lang/String;
    const-string v6, ""

    .line 158
    .local v6, "file_contexts":Ljava/lang/String;
    const-string v10, ""

    .line 160
    .local v10, "mac_permissions":Ljava/lang/String;
    const/4 v11, 0x0

    .line 163
    .local v11, "nIdx":I
    :try_start_19
    new-instance v5, Ljava/io/File;

    const-string v17, "data/security/spota/sepolicy_version"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v5, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_27} :catch_fd
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_fa
    .catchall {:try_start_19 .. :try_end_27} :catchall_f8

    .line 165
    .end local v7    # "fr":Ljava/io/FileReader;
    .local v8, "fr":Ljava/io/FileReader;
    :try_start_27
    new-instance v13, Ljava/io/BufferedReader;

    invoke-direct {v13, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 167
    .local v13, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 169
    .local v9, "line":Ljava/lang/String;
    :cond_2d
    :goto_2d
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e1

    .line 170
    const-string v17, "HS="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_57

    .line 171
    move-object/from16 v16, v9

    .line 172
    const-string v17, "HS="

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 173
    const/16 v17, 0x0

    aput-object v16, v14, v17
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4b} :catch_73
    .catchall {:try_start_27 .. :try_end_4b} :catchall_9f

    goto :goto_2d

    .line 194
    .end local v9    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v3

    move-object v7, v8

    .line 195
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fr":Ljava/io/FileReader;
    .local v3, "ef":Ljava/io/FileNotFoundException;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_f8

    .line 201
    if-eqz v7, :cond_56

    .line 202
    :try_start_53
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_f1

    .line 208
    .end local v3    # "ef":Ljava/io/FileNotFoundException;
    :cond_56
    :goto_56
    return-object v14

    .line 174
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fr":Ljava/io/FileReader;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_57
    :try_start_57
    const-string v17, "HA="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_83

    .line 175
    move-object v15, v9

    .line 176
    const-string v17, "HA="

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 177
    const/16 v17, 0x1

    aput-object v15, v14, v17
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_72} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_72} :catch_73
    .catchall {:try_start_57 .. :try_end_72} :catchall_9f

    goto :goto_2d

    .line 197
    .end local v9    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    :catch_73
    move-exception v2

    move-object v7, v8

    .line 198
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fr":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :goto_75
    :try_start_75
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_f8

    .line 201
    if-eqz v7, :cond_56

    .line 202
    :try_start_7a
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_56

    .line 203
    :catch_7e
    move-exception v4

    .line 204
    .end local v2    # "e":Ljava/io/IOException;
    .local v4, "ei":Ljava/io/IOException;
    :goto_7f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 178
    .end local v4    # "ei":Ljava/io/IOException;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fr":Ljava/io/FileReader;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_83
    :try_start_83
    const-string v17, "HP="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a7

    .line 179
    move-object v12, v9

    .line 180
    const-string v17, "HP="

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 181
    const/16 v17, 0x2

    aput-object v12, v14, v17
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_9e} :catch_4c
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_9e} :catch_73
    .catchall {:try_start_83 .. :try_end_9e} :catchall_9f

    goto :goto_2d

    .line 200
    .end local v9    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    :catchall_9f
    move-exception v17

    move-object v7, v8

    .line 201
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :goto_a1
    if-eqz v7, :cond_a6

    .line 202
    :try_start_a3
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_ec

    .line 200
    :cond_a6
    :goto_a6
    throw v17

    .line 182
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fr":Ljava/io/FileReader;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_a7
    :try_start_a7
    const-string v17, "HF="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c4

    .line 183
    move-object v6, v9

    .line 184
    const-string v17, "HF="

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    const/16 v17, 0x3

    aput-object v6, v14, v17

    goto/16 :goto_2d

    .line 186
    :cond_c4
    const-string v17, "HM="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2d

    .line 187
    move-object v10, v9

    .line 188
    const-string v17, "HM="

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 189
    const/16 v17, 0x4

    aput-object v10, v14, v17

    goto/16 :goto_2d

    .line 192
    :cond_e1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_e4} :catch_4c
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_e4} :catch_73
    .catchall {:try_start_a7 .. :try_end_e4} :catchall_9f

    .line 201
    if-eqz v8, :cond_e9

    .line 202
    :try_start_e6
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_f3

    :cond_e9
    :goto_e9
    move-object v7, v8

    .line 206
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto/16 :goto_56

    .line 203
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    :catch_ec
    move-exception v4

    .line 204
    .restart local v4    # "ei":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    .line 203
    .end local v4    # "ei":Ljava/io/IOException;
    .restart local v3    # "ef":Ljava/io/FileNotFoundException;
    :catch_f1
    move-exception v4

    goto :goto_7f

    .end local v3    # "ef":Ljava/io/FileNotFoundException;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fr":Ljava/io/FileReader;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_f3
    move-exception v4

    .line 204
    .restart local v4    # "ei":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e9

    .line 200
    .end local v4    # "ei":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fr":Ljava/io/FileReader;
    .end local v9    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catchall_f8
    move-exception v17

    goto :goto_a1

    .line 197
    :catch_fa
    move-exception v2

    goto/16 :goto_75

    .line 194
    :catch_fd
    move-exception v3

    goto/16 :goto_4e
.end method

.method public static verifySEAndroidPolicy()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 62
    const-string v5, "data/security/spota/sepolicy_version"

    invoke-static {v5}, Lcom/android/server/pm/PolicyVerification;->fileRead(Ljava/lang/String;)[B

    move-result-object v2

    .line 63
    .local v2, "version":[B
    const-string v5, "data/security/spota/sepolicy_version_sign"

    invoke-static {v5}, Lcom/android/server/pm/PolicyVerification;->fileRead(Ljava/lang/String;)[B

    move-result-object v3

    .line 64
    .local v3, "versionsign":[B
    const-string v5, "/publiccert.pem"

    invoke-static {v5}, Lcom/android/server/pm/PolicyVerification;->fileRead(Ljava/lang/String;)[B

    move-result-object v1

    .line 67
    .local v1, "publiccert":[B
    :try_start_13
    invoke-static {v3, v2, v1}, Lcom/android/server/pm/PolicyVerification;->verifySignature([B[B[B)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->compareHashValue()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_21

    move-result v5

    if-eqz v5, :cond_20

    .line 68
    const/4 v4, 0x1

    .line 75
    :cond_20
    :goto_20
    return v4

    .line 72
    :catch_21
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method private static verifySignature([B[B[B)Z
    .registers 8
    .param p0, "signature"    # [B
    .param p1, "data"    # [B
    .param p2, "pubKey"    # [B

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "retVal":Z
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 111
    :try_start_7
    invoke-static {p0, p1, p2}, Landroid/os/SELinux;->verifySignature([B[B[B)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 112
    const/4 v0, 0x1

    .line 121
    :cond_e
    :goto_e
    return v0

    .line 114
    :cond_f
    const-string v2, "PolicyVerification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verify Signature Fail - retVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_27} :catch_28

    goto :goto_e

    .line 116
    :catch_28
    move-exception v1

    .line 117
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PolicyVerification"

    const-string v3, "Exception in XSecureKeyLoader.verifySignature"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method
