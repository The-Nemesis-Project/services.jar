.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BootReceiver$SaveLastkmsg;
    }
.end annotation


# static fields
.field private static final LAST_KMSG_SIZE:I = 0x20000

.field private static final LOG_SIZE:I

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final PROC_RESET_RESON:Ljava/lang/String; = "/proc/reset_reason"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TOMBSTONE_DIR:Ljava/io/File;

.field private static sTombstoneObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const v0, 0x18000

    :goto_d
    sput v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 65
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    return-void

    .line 62
    :cond_1c
    const/high16 v0, 0x10000

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Ljava/io/File;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 57
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    return v0
.end method

.method static synthetic access$500(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Landroid/os/DropBoxManager;
    .param p1, "x1"    # Landroid/content/SharedPreferences;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static/range {p0 .. p5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .registers 21
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    if-eqz p0, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 389
    :cond_c
    :goto_c
    return-void

    .line 366
    :cond_d
    const-string v13, "BootReceiver"

    const-string v14, "Copying audit failures to DropBox"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v3, Ljava/io/File;

    const-string v13, "/proc/last_kmsg"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 370
    .local v4, "fileTime":J
    const-wide/16 v13, 0x0

    cmp-long v13, v4, v13

    if-lez v13, :cond_c

    .line 372
    if-eqz p1, :cond_42

    .line 373
    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 374
    .local v7, "lastTime":J
    cmp-long v13, v7, v4

    if-eqz v13, :cond_c

    .line 377
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-interface {v13, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 380
    .end local v7    # "lastTime":J
    :cond_42
    const-string v13, "[[TRUNCATED]]\n"

    move/from16 v0, p3

    invoke-static {v3, v0, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 381
    .local v11, "log":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_57
    if-ge v6, v9, :cond_7c

    aget-object v10, v2, v6

    .line 383
    .local v10, "line":Ljava/lang/String;
    const-string v13, "audit"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_79

    .line 384
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 387
    .end local v10    # "line":Ljava/lang/String;
    :cond_7c
    const-string v13, "BootReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Copied "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " worth of audits to DropBox"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v13}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method private static addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 344
    if-eqz p0, :cond_a

    invoke-virtual {p0, p5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 361
    :cond_a
    :goto_a
    return-void

    .line 346
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_a

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 349
    .local v1, "fileTime":J
    cmp-long v5, v1, v6

    if-lez v5, :cond_a

    .line 351
    if-eqz p1, :cond_33

    .line 352
    invoke-interface {p1, p3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 353
    .local v3, "lastTime":J
    cmp-long v5, v3, v1

    if-eqz v5, :cond_a

    .line 356
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    .end local v3    # "lastTime":J
    :cond_33
    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to DropBox ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[[TRUNCATED]]\n"

    invoke-static {v0, p4, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p5, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .registers 23
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    const/16 v17, 0x0

    .line 394
    .local v17, "upload_needed":Z
    if-eqz p0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 416
    :cond_e
    :goto_e
    return-void

    .line 395
    :cond_f
    const-string v2, "BootReceiver"

    const-string v3, "Checking for fsck errors"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v9, Ljava/io/File;

    const-string v2, "/dev/fscklogs/log"

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 399
    .local v10, "fileTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_e

    .line 401
    const-string v2, "[[TRUNCATED]]\n"

    move/from16 v0, p3

    invoke-static {v9, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 402
    .local v15, "log":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/String;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_3c
    if-ge v12, v13, :cond_4a

    aget-object v14, v8, v12

    .line 404
    .local v14, "line":Ljava/lang/String;
    const-string v2, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 405
    const/16 v17, 0x1

    .line 410
    .end local v14    # "line":Ljava/lang/String;
    :cond_4a
    if-eqz v17, :cond_5b

    .line 411
    const-string v5, "/dev/fscklogs/log"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    :cond_5b
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_e

    .line 403
    .restart local v14    # "line":Ljava/lang/String;
    :cond_5f
    add-int/lit8 v12, v12, 0x1

    goto :goto_3c
.end method

.method private logBootEvents(Landroid/content/Context;)V
    .registers 19
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    const-string v4, "dropbox"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 264
    .local v1, "db":Landroid/os/DropBoxManager;
    const-string v4, "log_files"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 265
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Build: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Hardware: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Revision: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ro.revision"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Bootloader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Radio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Kernel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/version"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x400

    const-string v7, "...\n"

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "headers":Ljava/lang/String;
    invoke-static {}, Landroid/os/RecoverySystem;->handleAftermath()Ljava/lang/String;

    move-result-object v15

    .line 277
    .local v15, "recovery":Ljava/lang/String;
    if-eqz v15, :cond_bb

    if-eqz v1, :cond_bb

    .line 278
    const-string v4, "SYSTEM_RECOVERY_LOG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_bb
    const-string v4, "ro.runtime.firstboot"

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_133

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 283
    .local v14, "now":Ljava/lang/String;
    const-string v4, "ro.runtime.firstboot"

    invoke-static {v4, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    if-eqz v1, :cond_dd

    .line 285
    const-string v4, "SYSTEM_BOOT"

    invoke-virtual {v1, v4, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_dd
    const-string v4, "/proc/last_kmsg"

    sget v5, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v5, v5

    const-string v6, "SYSTEM_LAST_KMSG"

    invoke-static/range {v1 .. v6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    const-string v4, "/cache/recovery/log"

    sget v5, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v5, v5

    const-string v6, "SYSTEM_RECOVERY_LOG"

    invoke-static/range {v1 .. v6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    const-string v4, "/data/dontpanic/apanic_console"

    sget v5, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v5, v5

    const-string v6, "APANIC_CONSOLE"

    invoke-static/range {v1 .. v6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    const-string v4, "/data/dontpanic/apanic_threads"

    sget v5, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v5, v5

    const-string v6, "APANIC_THREADS"

    invoke-static/range {v1 .. v6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    sget v4, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v4, v4

    const-string v5, "SYSTEM_AUDIT"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    sget v4, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v4, v4

    const-string v5, "SYSTEM_FSCK"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    .end local v14    # "now":Ljava/lang/String;
    :goto_115
    sget-object v4, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 315
    .local v16, "tombstoneFiles":[Ljava/io/File;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11c
    if-eqz v16, :cond_155

    move-object/from16 v0, v16

    array-length v4, v0

    if-ge v12, v4, :cond_155

    .line 316
    aget-object v4, v16, v12

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-string v6, "SYSTEM_TOMBSTONE"

    invoke-static/range {v1 .. v6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    add-int/lit8 v12, v12, 0x1

    goto :goto_11c

    .line 306
    .end local v12    # "i":I
    .end local v16    # "tombstoneFiles":[Ljava/io/File;
    :cond_133
    if-eqz v1, :cond_13a

    const-string v4, "SYSTEM_RESTART"

    invoke-virtual {v1, v4, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_13a
    const-string v4, "BootReceiver"

    const-string v5, "Notify a SYSTEM_RESTART"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v13, Landroid/content/Intent;

    const-string v4, "intent.action.logkit.autotrigger"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v13, "intent":Landroid/content/Intent;
    const-string v4, "reason"

    const-string v5, "SystemRestart"

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_115

    .line 322
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v12    # "i":I
    .restart local v16    # "tombstoneFiles":[Ljava/io/File;
    :cond_155
    new-instance v4, Lcom/android/server/BootReceiver$2;

    sget-object v5, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    move-object/from16 v5, p0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object/from16 v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    .line 338
    sget-object v4, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    invoke-virtual {v4}, Landroid/os/FileObserver;->startWatching()V

    .line 339
    return-void
.end method

.method private logResetReson()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    .line 113
    new-instance v2, Ljava/io/File;

    const-string v4, "/proc/reset_reason"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_f

    .line 135
    :cond_e
    :goto_e
    return-void

    .line 117
    :cond_f
    const/4 v3, 0x0

    .line 119
    .local v3, "resetString":Ljava/lang/String;
    const/16 v4, 0x400

    :try_start_12
    const-string v5, "\n"

    invoke-static {v2, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_65

    move-result-object v3

    .line 123
    :goto_18
    const-string v4, "Reset_Reason"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_42

    .line 126
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 127
    const-string v4, "RR"

    invoke-static {v3, v4}, Landroid/os/Debug;->dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_42
    const-string v4, "KP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    const-string v4, "PP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    const-string v4, "DP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 131
    :cond_5a
    const/4 v0, 0x0

    .line 132
    .local v0, "SaveLastkmsg":Ljava/lang/Thread;
    new-instance v0, Lcom/android/server/BootReceiver$SaveLastkmsg;

    .end local v0    # "SaveLastkmsg":Ljava/lang/Thread;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>(Lcom/android/server/BootReceiver$1;)V

    .line 133
    .restart local v0    # "SaveLastkmsg":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_e

    .line 120
    .end local v0    # "SaveLastkmsg":Ljava/lang/Thread;
    :catch_65
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Reset_Reason"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readTextFile error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private removeOldUpdatePackages(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const-string v0, "com.google.android.systemupdater"

    const-string v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    invoke-static {p1, v0, v1}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    new-instance v0, Lcom/android/server/BootReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/BootReceiver$1;->start()V

    .line 109
    return-void
.end method
