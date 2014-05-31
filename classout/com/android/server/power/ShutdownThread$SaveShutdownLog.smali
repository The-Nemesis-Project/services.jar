.class Lcom/android/server/power/ShutdownThread$SaveShutdownLog;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveShutdownLog"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1621
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownThread$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/power/ShutdownThread$1;

    .prologue
    .line 1621
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread$SaveShutdownLog;-><init>()V

    return-void
.end method

.method private getLastShutdownLogName()Ljava/lang/String;
    .registers 19

    .prologue
    .line 1623
    new-instance v3, Ljava/io/File;

    const-string v13, "/data/log/"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 1625
    .local v7, "listOfFiles":[Ljava/io/File;
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 1626
    .local v8, "loglist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object v0, v7

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_13
    if-ge v4, v6, :cond_37

    aget-object v1, v0, v4

    .line 1627
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1628
    .local v2, "fname":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_34

    const-string v13, "dumpState_lastshutdown."

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_34

    .line 1629
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    .line 1630
    .local v11, "moddate":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    .end local v11    # "moddate":J
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1634
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fname":Ljava/lang/String;
    :cond_37
    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v13

    # getter for: Lcom/android/server/power/ShutdownThread;->MAX_LAST_SHUTDOWNLOG:I
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1600()I

    move-result v14

    if-ge v13, v14, :cond_74

    .line 1635
    const-string v13, "ShutdownThread"

    const-string v14, "dumpState_lastshutdown.%d.log.gz"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const-string v13, "dumpState_lastshutdown.%d.log.gz"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1640
    :goto_73
    return-object v13

    .line 1638
    :cond_74
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1639
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1640
    .local v9, "modDate":J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_73
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1646
    const-string v5, "ShutdownThread"

    const-string v6, "saveShutdownLog start"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v3, 0x0

    .line 1649
    .local v3, "process":Ljava/lang/Process;
    :try_start_8
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/log"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v0, "dataLogDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1651
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1652
    const-string v5, "ShutdownThread"

    const-string v6, "/data/log not exist!!"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread$SaveShutdownLog;->getLastShutdownLogName()Ljava/lang/String;

    move-result-object v2

    .line 1656
    .local v2, "filename":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/bin/sh"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "-c"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "logcat -v threadtime -d -b events -b system -b main | gzip > /data/log/%s ; sync"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1659
    .local v4, "shellCommandForLogcat":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1660
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_4a} :catch_52
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_4a} :catch_6c
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_4a} :catch_86

    .line 1668
    .end local v0    # "dataLogDirectory":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "shellCommandForLogcat":[Ljava/lang/String;
    :goto_4a
    const-string v5, "ShutdownThread"

    const-string v6, "saveShutdownLog finish"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    return-void

    .line 1661
    :catch_52
    move-exception v1

    .line 1662
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveShutdownLog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1663
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6c
    move-exception v1

    .line 1664
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveShutdownLog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1665
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_86
    move-exception v1

    .line 1666
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveShutdownLog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method
