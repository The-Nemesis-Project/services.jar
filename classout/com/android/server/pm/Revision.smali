.class public Lcom/android/server/pm/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# static fields
.field private static final SEPOLICY_VERSION_FILE:[Ljava/io/File;

.field private static selinux_policy_priority:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 12
    sput v4, Lcom/android/server/pm/Revision;->selinux_policy_priority:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "security/sepolicy"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/spota/sepolicy_version"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    const-string v3, "sepolicy_version"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/Revision;->SEPOLICY_VERSION_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static selinux_android_load_priority()I
    .registers 10

    .prologue
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .local v5, "sepolicy_version_highest":J
    const-wide/16 v7, 0x0

    .line 40
    .local v7, "sepolicy_version_new":J
    const/4 v2, 0x0

    .line 41
    .local v2, "i":I
    const/4 v0, 0x0

    .line 42
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 43
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    sput v9, Lcom/android/server/pm/Revision;->selinux_policy_priority:I

    .line 44
    :goto_a
    sget-object v9, Lcom/android/server/pm/Revision;->SEPOLICY_VERSION_FILE:[Ljava/io/File;

    aget-object v9, v9, v2

    if-eqz v9, :cond_23

    .line 46
    :try_start_10
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v9, Lcom/android/server/pm/Revision;->SEPOLICY_VERSION_FILE:[Ljava/io/File;

    aget-object v9, v9, v2

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_50

    .line 47
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    if-nez v2, :cond_26

    .line 48
    add-int/lit8 v9, v2, 0x1

    :try_start_1d
    sput v9, Lcom/android/server/pm/Revision;->selinux_policy_priority:I

    .line 49
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_52

    move-object v3, v4

    .line 73
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_23
    sget v9, Lcom/android/server/pm/Revision;->selinux_policy_priority:I

    return v9

    .line 52
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :cond_26
    :try_start_26
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_52

    .line 53
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_30
    invoke-static {v1}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/io/BufferedReader;)J

    move-result-wide v7

    .line 54
    cmp-long v9, v7, v5

    if-ltz v9, :cond_3d

    .line 55
    move-wide v5, v7

    .line 56
    add-int/lit8 v9, v2, 0x1

    sput v9, Lcom/android/server/pm/Revision;->selinux_policy_priority:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3d} :catch_55

    :cond_3d
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    move-object v0, v1

    .line 61
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3f
    if-eqz v0, :cond_45

    .line 62
    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 63
    const/4 v0, 0x0

    .line 65
    :cond_45
    if-eqz v3, :cond_4b

    .line 66
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4a} :catch_4e

    .line 67
    const/4 v3, 0x0

    .line 71
    :cond_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 69
    :catch_4e
    move-exception v9

    goto :goto_4b

    .line 58
    :catch_50
    move-exception v9

    goto :goto_3f

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_52
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_3f

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_55
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3f
.end method

.method private static selinux_get_version(Ljava/io/BufferedReader;)J
    .registers 5
    .param p0, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 27
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 29
    :cond_c
    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 30
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    .line 31
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 33
    :cond_1b
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    return-wide v2
.end method
