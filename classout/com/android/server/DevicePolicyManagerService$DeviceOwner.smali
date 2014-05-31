.class Lcom/android/server/DevicePolicyManagerService$DeviceOwner;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceOwner"
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner.xml"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"


# instance fields
.field private mOwnerName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3671
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3672
    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->readOwnerFile()V

    .line 3673
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    .line 3675
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3676
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->mPackageName:Ljava/lang/String;

    .line 3677
    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->mOwnerName:Ljava/lang/String;

    .line 3678
    return-void
.end method

.method static isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 3696
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_11

    .line 3697
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_c} :catch_12

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_11

    .line 3698
    const/4 v2, 0x1

    .line 3704
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_11
    :goto_11
    return v2

    .line 3701
    :catch_12
    move-exception v0

    .line 3702
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Owner package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not installed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method static isRegistered()Z
    .registers 3

    .prologue
    .line 3681
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private writeOwnerFileLocked()V
    .registers 8

    .prologue
    .line 3740
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "device_owner.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3743
    .local v0, "file":Landroid/util/AtomicFile;
    :try_start_10
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 3744
    .local v3, "output":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3745
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3746
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3747
    const/4 v4, 0x0

    const-string v5, "device-owner"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3748
    const/4 v4, 0x0

    const-string v5, "package"

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3749
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->mOwnerName:Ljava/lang/String;

    if-eqz v4, :cond_42

    .line 3750
    const/4 v4, 0x0

    const-string v5, "name"

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->mOwnerName:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3752
    :cond_42
    const/4 v4, 0x0

    const-string v5, "device-owner"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3753
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3754
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 3755
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_51} :catch_52

    .line 3759
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "output":Ljava/io/FileOutputStream;
    :goto_51
    return-void

    .line 3756
    :catch_52
    move-exception v1

    .line 3757
    .local v1, "ioe":Ljava/io/IOException;
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Exception when writing device-owner file\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->mOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3686
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method readOwnerFile()V
    .registers 11

    .prologue
    .line 3708
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "device_owner.xml"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3711
    .local v0, "file":Landroid/util/AtomicFile;
    :try_start_10
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 3712
    .local v1, "input":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3713
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3716
    :cond_1c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_26

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1c

    .line 3718
    :cond_26
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3719
    .local v4, "tag":Ljava/lang/String;
    const-string v7, "device-owner"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_65

    .line 3720
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device Owner file does not start with device-owner tag: found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_4b} :catch_4b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4b} :catch_7b

    .line 3726
    .end local v1    # "input":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    :catch_4b
    move-exception v6

    .line 3727
    .local v6, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing device-owner file\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    .end local v6    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_64
    return-void

    .line 3723
    .restart local v1    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "type":I
    :cond_65
    const/4 v7, 0x0

    :try_start_66
    const-string v8, "package"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->mPackageName:Ljava/lang/String;

    .line 3724
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->mOwnerName:Ljava/lang/String;

    .line 3725
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_66 .. :try_end_7a} :catch_4b
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_7a} :catch_7b

    goto :goto_64

    .line 3728
    .end local v1    # "input":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    :catch_7b
    move-exception v2

    .line 3729
    .local v2, "ioe":Ljava/io/IOException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Exception when reading device-owner file\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method

.method writeOwnerFile()V
    .registers 2

    .prologue
    .line 3734
    monitor-enter p0

    .line 3735
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->writeOwnerFileLocked()V

    .line 3736
    monitor-exit p0

    .line 3737
    return-void

    .line 3736
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method
