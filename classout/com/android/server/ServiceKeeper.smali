.class public Lcom/android/server/ServiceKeeper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ServiceKeeper.java"


# static fields
.field private static final AGENT_BRIDGE:I = 0x10

.field private static final AGENT_PROVIDER:I = 0x4

.field private static final AGENT_PROXY:I = 0x8

.field private static final AGENT_SYNCER:I = 0x2

.field private static final AUTHORIZE_POLICY_FILE:[Ljava/io/File;

.field public static final FIXMO_CONTAINER_VALUE:I = 0x2

.field public static final GOOD_CONTAINER_VALUE:I = 0x1

.field public static final MYCONTAINER_CONTAINER_VALUE:I = 0x4

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static OPEN_METHODS_IDENTIFIER:Ljava/lang/String; = null

.field public static final PERSONA_CONTAINER_VALUE:I = 0x3

.field private static TAG:Ljava/lang/String;

.field private static isActive:Z

.field private static loadFilesLockObject:Ljava/lang/Object;

.field private static mSKLog:Lcom/android/server/SKLogger;

.field static openMethodCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static permissionsLocation:Ljava/lang/String;

.field private static serviceKeeper:Lcom/android/server/ServiceKeeper;

.field static serviceTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 59
    sput-object v5, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 60
    sput-object v5, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 62
    sput-object v5, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 63
    const-string v0, "ServiceKeeper"

    sput-object v0, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    .line 64
    const-string v0, "_open"

    sput-object v0, Lcom/android/server/ServiceKeeper;->OPEN_METHODS_IDENTIFIER:Ljava/lang/String;

    .line 65
    sput-boolean v4, Lcom/android/server/ServiceKeeper;->isActive:Z

    .line 66
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "security/persona/permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceKeeper;->permissionsLocation:Ljava/lang/String;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "security/authorize.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/spota/authorize.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/authorize.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:[Ljava/io/File;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 88
    return-void
.end method

.method public static authorizeLoadProcedure()Z
    .registers 3

    .prologue
    .line 165
    sget-object v1, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_3
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v0

    if-nez v0, :cond_18

    .line 168
    sget-object v0, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ServiceKeeper;->loadFromAuthorizeFile(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    .line 170
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_17

    .line 171
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private static checkForMethodAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "sEInfo"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "agentType"    # I

    .prologue
    .line 518
    sget-object v8, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    if-nez v8, :cond_46

    .line 519
    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In checkForMethodAuthorization() : ServiceTable is Null: service =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " agentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sEInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v8, 0x0

    .line 643
    :goto_45
    return v8

    .line 526
    :cond_46
    sget-object v8, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v8, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_90

    .line 530
    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In checkForMethodAuthorization() : Service is not in service keeper: service =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " agentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sEInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v8, 0x0

    goto :goto_45

    .line 542
    :cond_90
    sget-object v8, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v8, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ServiceObject;

    .line 543
    .local v7, "serviceObject":Lcom/android/server/ServiceObject;
    iget-boolean v8, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-eqz v8, :cond_df

    .line 547
    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In checkForMethodAuthorization() : Service is sterile : service =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " agentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sEInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v8, 0x0

    goto/16 :goto_45

    .line 554
    :cond_df
    iget-object v3, v7, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    .line 555
    .local v3, "methodsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/server/MethodPermissionPackage;>;"
    invoke-virtual {v3, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_12a

    .line 559
    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In checkForMethodAuthorization() : Method not in service: service =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " agentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sEInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v8, 0x0

    goto/16 :goto_45

    .line 566
    :cond_12a
    invoke-virtual {v3, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MethodPermissionPackage;

    .line 568
    .local v2, "methodPermissionPackage":Lcom/android/server/MethodPermissionPackage;
    iget-boolean v8, v2, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    if-eqz v8, :cond_177

    .line 572
    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In checkForMethodAuthorization() : Method is sterile: service =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " agentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sEInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v8, 0x0

    goto/16 :goto_45

    .line 581
    :cond_177
    iget-object v8, v2, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    sget-object v9, Lcom/android/server/ServiceKeeper;->OPEN_METHODS_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c4

    .line 585
    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In checkForMethodAuthorization() : Open Method: service =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " agentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sEInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v8, 0x1

    goto/16 :goto_45

    .line 594
    :cond_1c4
    iget-object v8, v2, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1cf

    .line 604
    const/4 v8, 0x1

    goto/16 :goto_45

    .line 606
    :cond_1cf
    and-int/lit8 v8, p4, 0x2

    if-nez v8, :cond_1df

    and-int/lit8 v8, p4, 0x10

    if-nez v8, :cond_1df

    and-int/lit8 v8, p4, 0x8

    if-nez v8, :cond_1df

    and-int/lit8 v8, p4, 0x4

    if-eqz v8, :cond_23c

    .line 610
    :cond_1df
    iget-object v8, v2, Lcom/android/server/MethodPermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 611
    .local v6, "permittedTypeString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 613
    .local v5, "permittedType":I
    and-int v8, p4, v5

    if-eqz v8, :cond_1e5

    .line 614
    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In checkForMethodAuthorization() : Agent Type Match: service =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " agentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sEInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v8, 0x1

    goto/16 :goto_45

    .line 624
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "permittedType":I
    .end local v6    # "permittedTypeString":Ljava/lang/String;
    :cond_23c
    iget-object v8, v2, Lcom/android/server/MethodPermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 626
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageObject;>;"
    :cond_242
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a1

    .line 627
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageObject;

    .line 628
    .local v4, "packageObject":Lcom/android/server/PackageObject;
    iget-object v8, v4, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_242

    iget-object v8, v4, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_242

    .line 632
    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In checkForMethodAuthorization() : Package Name Match: service =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " agentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sEInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v8, 0x1

    goto/16 :goto_45

    .line 643
    .end local v4    # "packageObject":Lcom/android/server/PackageObject;
    :cond_2a1
    const/4 v8, 0x0

    goto/16 :goto_45
.end method

.method private static checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "seInfo"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "agentType"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 649
    sget-object v8, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    if-nez v8, :cond_7

    .line 705
    :cond_6
    :goto_6
    return v6

    .line 659
    :cond_7
    sget-object v8, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v8, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 671
    sget-object v8, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v8, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ServiceObject;

    .line 672
    .local v5, "serviceObject":Lcom/android/server/ServiceObject;
    iget-boolean v8, v5, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-nez v8, :cond_6

    .line 678
    iget-object v8, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v8, v8, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    move v6, v7

    .line 681
    goto :goto_6

    .line 683
    :cond_27
    and-int/lit8 v8, p3, 0x2

    if-nez v8, :cond_37

    and-int/lit8 v8, p3, 0x10

    if-nez v8, :cond_37

    and-int/lit8 v8, p3, 0x8

    if-nez v8, :cond_37

    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_55

    .line 687
    :cond_37
    iget-object v8, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v8, v8, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 688
    .local v4, "permittedTypeString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 689
    .local v3, "permittedType":I
    and-int v8, p3, v3

    if-eqz v8, :cond_3f

    move v6, v7

    .line 690
    goto :goto_6

    .line 693
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "permittedType":I
    .end local v4    # "permittedTypeString":Ljava/lang/String;
    :cond_55
    iget-object v8, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v8, v8, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 695
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageObject;>;"
    :cond_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 696
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageObject;

    .line 697
    .local v2, "packageObject":Lcom/android/server/PackageObject;
    iget-object v8, v2, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    iget-object v8, v2, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    move v6, v7

    .line 701
    goto :goto_6
.end method

.method private static createAuthorizationTables(Lorg/w3c/dom/Element;)Z
    .registers 16
    .param p0, "policyElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 210
    const-string v12, "service"

    invoke-interface {p0, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 211
    .local v8, "servicesList":Lorg/w3c/dom/NodeList;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceTable()Ljava/util/Hashtable;

    move-result-object v12

    sput-object v12, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 212
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getOpenMethodCache()Ljava/util/HashSet;

    move-result-object v12

    sput-object v12, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 214
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_152

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v0, v12, :cond_152

    .line 216
    const/4 v9, 0x0

    .line 217
    .local v9, "singleServiceElement":Lorg/w3c/dom/Element;
    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .end local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    check-cast v9, Lorg/w3c/dom/Element;

    .line 219
    .restart local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    new-instance v7, Lcom/android/server/ServiceObject;

    invoke-direct {v7}, Lcom/android/server/ServiceObject;-><init>()V

    .line 221
    .local v7, "serviceObject":Lcom/android/server/ServiceObject;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string v13, "name"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "serviceName":Ljava/lang/String;
    const-string v12, "seinfo"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 227
    .local v1, "itemsWithinService":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_85

    .line 228
    iput-boolean v10, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 229
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4a
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v2, v12, :cond_85

    .line 231
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v11, :cond_82

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_82

    .line 234
    iget-object v12, v7, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v12, v12, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string/jumbo v14, "value"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 241
    .end local v2    # "j":I
    :cond_85
    const-string v12, "package"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 244
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_e5

    .line 245
    iput-boolean v10, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 246
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_94
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v2, v12, :cond_e5

    .line 248
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v11, :cond_e2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_e2

    .line 251
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string v13, "name"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string v13, "seinfo"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "packageSeinfo":Ljava/lang/String;
    new-instance v4, Lcom/android/server/PackageObject;

    invoke-direct {v4, v3, v5}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v4, "packageObject":Lcom/android/server/PackageObject;
    iget-object v12, v7, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v12, v12, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageObject":Lcom/android/server/PackageObject;
    .end local v5    # "packageSeinfo":Ljava/lang/String;
    :cond_e2
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 264
    .end local v2    # "j":I
    :cond_e5
    const-string v12, "agentType"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 267
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_12f

    .line 268
    iput-boolean v10, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 269
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_f4
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v2, v12, :cond_12f

    .line 271
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v11, :cond_12c

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_12c

    .line 274
    iget-object v12, v7, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v12, v12, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string/jumbo v14, "value"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f4

    .line 281
    .end local v2    # "j":I
    :cond_12f
    const-string v12, "method"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 284
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_140

    .line 285
    iput-boolean v10, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 286
    invoke-static {v1, v7, v6}, Lcom/android/server/ServiceKeeper;->processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z

    .line 290
    :cond_140
    sget-object v12, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v12, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_149

    .line 301
    .end local v0    # "i":I
    .end local v1    # "itemsWithinService":Lorg/w3c/dom/NodeList;
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "serviceObject":Lcom/android/server/ServiceObject;
    .end local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    :goto_148
    return v10

    .line 298
    .restart local v0    # "i":I
    .restart local v1    # "itemsWithinService":Lorg/w3c/dom/NodeList;
    .restart local v6    # "serviceName":Ljava/lang/String;
    .restart local v7    # "serviceObject":Lcom/android/server/ServiceObject;
    .restart local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    :cond_149
    sget-object v12, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v12, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    .end local v0    # "i":I
    .end local v1    # "itemsWithinService":Lorg/w3c/dom/NodeList;
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "serviceObject":Lcom/android/server/ServiceObject;
    .end local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    :cond_152
    move v10, v11

    .line 301
    goto :goto_148
.end method

.method private static getAppinfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 727
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne p2, v4, :cond_8

    .line 730
    const/4 v0, 0x0

    .line 753
    :cond_7
    :goto_7
    return-object v0

    .line 732
    :cond_8
    const/4 v0, 0x0

    .line 734
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_9
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 735
    .local v3, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 736
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/16 v4, 0x80

    invoke-interface {v2, p1, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 738
    if-nez v0, :cond_7

    .line 739
    invoke-static {p0, p2, p3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 740
    const/16 v4, 0x80

    invoke-interface {v2, p1, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 741
    if-nez v0, :cond_7

    .line 742
    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In getappinfo 2, appinfo is null.  pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appinfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_65} :catch_66

    goto :goto_7

    .line 746
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "userId":I
    :catch_66
    move-exception v1

    .line 748
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v5, "Exception in getAppInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v5, "Exception in getAppInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Details:pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appinfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method private static getAuthorizeFilePath([Ljava/io/File;)Ljava/lang/String;
    .registers 11
    .param p0, "policyFiles"    # [Ljava/io/File;

    .prologue
    const/4 v9, 0x2

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "authorizeFile":Ljava/lang/String;
    const/4 v4, 0x0

    .line 119
    .local v4, "policyFile":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 120
    .local v2, "i":I
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v3

    .line 121
    .local v3, "index":I
    packed-switch v3, :pswitch_data_a8

    .line 161
    :cond_b
    :goto_b
    const/4 v6, 0x0

    :goto_c
    return-object v6

    .line 130
    :catch_d
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authorize file not found in location "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v2

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2e
    if-nez v0, :cond_b

    if-eqz p0, :cond_b

    aget-object v6, p0, v2

    if-eqz v6, :cond_b

    .line 126
    :try_start_36
    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_d

    move-result-object v0

    move-object v6, v0

    .line 129
    goto :goto_c

    .line 142
    :pswitch_3e
    add-int/lit8 v6, v3, -0x1

    :try_start_40
    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v5, Ljava/io/FileReader;

    add-int/lit8 v6, v3, -0x1

    aget-object v6, p0, v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4f} :catch_61

    .line 145
    .end local v4    # "policyFile":Ljava/io/FileReader;
    .local v5, "policyFile":Ljava/io/FileReader;
    if-eqz v5, :cond_57

    .line 146
    :try_start_51
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_a4

    move-object v4, v5

    .end local v5    # "policyFile":Ljava/io/FileReader;
    .restart local v4    # "policyFile":Ljava/io/FileReader;
    move-object v6, v0

    .line 147
    goto :goto_c

    .end local v4    # "policyFile":Ljava/io/FileReader;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :cond_57
    move-object v4, v5

    .line 154
    .end local v5    # "policyFile":Ljava/io/FileReader;
    .restart local v4    # "policyFile":Ljava/io/FileReader;
    :goto_58
    const/4 v6, 0x2

    :try_start_59
    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_83

    move-result-object v0

    move-object v6, v0

    .line 155
    goto :goto_c

    .line 149
    :catch_61
    move-exception v1

    .line 150
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_62
    sget-object v6, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authorize file not found in location "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, -0x1

    aget-object v8, p0, v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_83
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authorize file not found in location "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v9

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "policyFile":Ljava/io/FileReader;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :catch_a4
    move-exception v1

    move-object v4, v5

    .end local v5    # "policyFile":Ljava/io/FileReader;
    .restart local v4    # "policyFile":Ljava/io/FileReader;
    goto :goto_62

    .line 121
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method public static declared-synchronized getOpenMethodCache()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    const-class v1, Lcom/android/server/ServiceKeeper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    if-nez v0, :cond_e

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 107
    :cond_e
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageName(Landroid/content/Context;II)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 789
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p1, v2, :cond_31

    .line 790
    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getpackagename pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package name = android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v1, "android"

    .line 805
    :goto_30
    return-object v1

    .line 794
    :cond_31
    const/4 v1, 0x0

    .line 800
    .local v1, "packageName":Ljava/lang/String;
    :try_start_32
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_67

    move-result-object v1

    .line 804
    :goto_3a
    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getpackagename pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 801
    :catch_67
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getPackageName"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method private static getRelevantContainerType(Ljava/lang/String;)I
    .registers 2
    .param p0, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 709
    const-string v0, "gsd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 710
    const/4 v0, 0x1

    .line 721
    :goto_9
    return v0

    .line 711
    :cond_a
    const-string v0, "fixmo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 712
    const/4 v0, 0x2

    goto :goto_9

    .line 713
    :cond_14
    const-string v0, "persona"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 714
    const/4 v0, 0x3

    goto :goto_9

    .line 715
    :cond_1e
    const-string v0, "mycontainer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 716
    const/4 v0, 0x4

    goto :goto_9

    .line 721
    :cond_28
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static declared-synchronized getServiceKeeper()Lcom/android/server/ServiceKeeper;
    .registers 2

    .prologue
    .line 91
    const-class v1, Lcom/android/server/ServiceKeeper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    if-nez v0, :cond_e

    .line 92
    new-instance v0, Lcom/android/server/ServiceKeeper;

    invoke-direct {v0}, Lcom/android/server/ServiceKeeper;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 93
    :cond_e
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getServiceTable()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const-class v1, Lcom/android/server/ServiceKeeper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    if-nez v0, :cond_e

    .line 112
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 113
    :cond_e
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getagenttype(Landroid/content/pm/ApplicationInfo;II)I
    .registers 5
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 774
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 785
    :cond_7
    :goto_7
    return v0

    .line 779
    :cond_8
    if-eqz p0, :cond_7

    .line 785
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->agentType:I

    goto :goto_7
.end method

.method private static getseinfo(Landroid/content/pm/ApplicationInfo;II)Ljava/lang/String;
    .registers 5
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 757
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 760
    const-string/jumbo v0, "system"

    .line 770
    :goto_9
    return-object v0

    .line 762
    :cond_a
    if-nez p0, :cond_15

    .line 763
    sget-object v0, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v1, "in getSEinfo: appinfo null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v0, 0x0

    goto :goto_9

    .line 770
    :cond_15
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_9
.end method

.method public static isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I
    .registers 33
    .param p0, "mcontext"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "Service"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    .line 377
    :try_start_0
    sget-object v3, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 380
    const-string v3, "_open"

    invoke-static {v3}, Lcom/android/server/ServiceKeeper;->getRelevantContainerType(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    move-result v4

    .line 504
    :goto_29
    return v4

    .line 382
    :catch_2a
    move-exception v24

    .line 383
    .local v24, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in getting from openCache"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_47
    :try_start_47
    invoke-static {}, Lcom/android/server/SEAMService;->isBootComplete()Z

    move-result v23

    .line 387
    .local v23, "bootCompleted":Z
    if-nez v23, :cond_74

    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_57

    move-result v3

    move/from16 v0, p1

    if-ne v0, v3, :cond_74

    .line 389
    const/4 v4, 0x0

    goto :goto_29

    .line 391
    .end local v23    # "bootCompleted":Z
    :catch_57
    move-exception v24

    .line 392
    .restart local v24    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in processing bootComplete check"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_74
    const/16 v22, 0x0

    .line 395
    .local v22, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .line 396
    .local v5, "seInfo":Ljava/lang/String;
    const/4 v6, 0x0

    .line 397
    .local v6, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 398
    .local v7, "agentType":I
    const/4 v9, 0x0

    .line 399
    .local v9, "isSourceTrusted":Z
    const/4 v10, 0x0

    .line 400
    .local v10, "isNoAudit":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 423
    .local v26, "origId":J
    invoke-static/range {p0 .. p2}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v6

    .line 424
    if-nez v6, :cond_c9

    .line 425
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 426
    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In isAuthorized() : Package Name returned null : Returning -1 : : Exiting : service =  "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " method = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " uid = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "pid = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v4, -0x1

    goto/16 :goto_29

    .line 437
    :cond_c9
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v6, v1, v2}, Lcom/android/server/ServiceKeeper;->getAppinfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    .line 438
    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/server/ServiceKeeper;->getseinfo(Landroid/content/pm/ApplicationInfo;II)Ljava/lang/String;

    move-result-object v5

    .line 439
    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/server/ServiceKeeper;->getagenttype(Landroid/content/pm/ApplicationInfo;II)I

    move-result v7

    .line 440
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    if-eqz v22, :cond_108

    .line 443
    :try_start_ec
    move-object/from16 v0, v22

    iget-byte v3, v0, Landroid/content/pm/ApplicationInfo;->isNoAudit:B

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1d5

    const/4 v10, 0x1

    .line 444
    :goto_f4
    move-object/from16 v0, v22

    iget-byte v3, v0, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    const/4 v8, 0x1

    if-ne v3, v8, :cond_108

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_108

    .line 445
    const/4 v9, 0x1

    .line 447
    :cond_108
    if-nez v22, :cond_114

    const-string/jumbo v3, "system"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 448
    const/4 v9, 0x1

    .line 450
    :cond_114
    move-object/from16 v0, p3

    invoke-static {v0, v5, v6, v7}, Lcom/android/server/ServiceKeeper;->checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 452
    if-eqz v5, :cond_17f

    .line 453
    invoke-static {v5}, Lcom/android/server/ServiceKeeper;->getRelevantContainerType(Ljava/lang/String;)I

    move-result v4

    .line 454
    .local v4, "retContainerType":I
    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In isAuthorized() : Found Service Match: service =  "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " agentType = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " seInfo = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " packageName = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_15a} :catch_17b

    .line 461
    :try_start_15a
    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    move/from16 v8, p2

    move/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_167
    .catch Ljava/lang/NullPointerException; {:try_start_15a .. :try_end_167} :catch_169
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_167} :catch_17b

    goto/16 :goto_29

    .line 462
    :catch_169
    move-exception v24

    .line 463
    .local v24, "e":Ljava/lang/NullPointerException;
    :try_start_16a
    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v8, "Could not log SKPolicy activity due to NULL pointer."

    move-object/from16 v0, v24

    invoke-static {v3, v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v3

    sput-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_179} :catch_17b

    goto/16 :goto_29

    .line 491
    .end local v4    # "retContainerType":I
    .end local v24    # "e":Ljava/lang/NullPointerException;
    :catch_17b
    move-exception v25

    .line 492
    .local v25, "e1":Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 495
    .end local v25    # "e1":Ljava/lang/Exception;
    :cond_17f
    :try_start_17f
    sget-object v11, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    const/4 v12, -0x1

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    move/from16 v16, p2

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, p1

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    invoke-virtual/range {v11 .. v21}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_194
    .catch Ljava/lang/NullPointerException; {:try_start_17f .. :try_end_194} :catch_209

    .line 500
    :goto_194
    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In isAuthorized() : No match found : Returning -1 : : Exiting : service =  "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " method = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " uid = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "pid = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v4, -0x1

    goto/16 :goto_29

    .line 443
    :cond_1d5
    const/4 v10, 0x0

    goto/16 :goto_f4

    .line 469
    :cond_1d8
    :try_start_1d8
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v5, v6, v1, v7}, Lcom/android/server/ServiceKeeper;->checkForMethodAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 471
    if-eqz v5, :cond_17f

    .line 472
    invoke-static {v5}, Lcom/android/server/ServiceKeeper;->getRelevantContainerType(Ljava/lang/String;)I
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1e7} :catch_17b

    move-result v4

    .line 481
    .restart local v4    # "retContainerType":I
    :try_start_1e8
    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    move/from16 v8, p2

    move/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_1f5
    .catch Ljava/lang/NullPointerException; {:try_start_1e8 .. :try_end_1f5} :catch_1f7
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1f5} :catch_17b

    goto/16 :goto_29

    .line 482
    :catch_1f7
    move-exception v24

    .line 483
    .restart local v24    # "e":Ljava/lang/NullPointerException;
    :try_start_1f8
    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v8, "Could not log SKPolicy activity due to NULL pointer."

    move-object/from16 v0, v24

    invoke-static {v3, v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v3

    sput-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_207} :catch_17b

    goto/16 :goto_29

    .line 496
    .end local v4    # "retContainerType":I
    .end local v24    # "e":Ljava/lang/NullPointerException;
    :catch_209
    move-exception v24

    .line 497
    .restart local v24    # "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v8, "Could not log SKPolicy activity due to NULL pointer."

    move-object/from16 v0, v24

    invoke-static {v3, v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v3

    sput-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    goto/16 :goto_194
.end method

.method public static isTableActive()Z
    .registers 3

    .prologue
    .line 508
    sget-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    if-nez v0, :cond_20

    .line 509
    sget-object v0, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In isTableActive(): isActive is false. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ServiceKeeper;->isActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    .line 512
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private static loadFromAuthorizeFile(Ljava/lang/String;)Z
    .registers 13
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 175
    if-eqz p0, :cond_f

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_10

    .line 206
    :cond_f
    :goto_f
    return v9

    .line 178
    :cond_10
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 181
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v8, "xmlFile":Ljava/io/File;
    :try_start_19
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 184
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 185
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Element;->normalize()V

    .line 187
    const-string v11, "policy"

    invoke-interface {v2, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 188
    .local v7, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 189
    .local v6, "policyElement":Lorg/w3c/dom/Element;
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v6, Lorg/w3c/dom/Element;

    .line 191
    .restart local v6    # "policyElement":Lorg/w3c/dom/Element;
    invoke-static {v6}, Lcom/android/server/ServiceKeeper;->createAuthorizationTables(Lorg/w3c/dom/Element;)Z
    :try_end_39
    .catch Lorg/xml/sax/SAXException; {:try_start_19 .. :try_end_39} :catch_40
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_19 .. :try_end_39} :catch_49
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_39} :catch_52

    move-result v11

    if-eqz v11, :cond_f

    .line 205
    sput-boolean v10, Lcom/android/server/ServiceKeeper;->isActive:Z

    move v9, v10

    .line 206
    goto :goto_f

    .line 195
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    :catch_40
    move-exception v3

    .line 196
    .local v3, "e1":Lorg/xml/sax/SAXException;
    sget-object v10, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v11, "SAXException"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 198
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_49
    move-exception v4

    .line 199
    .local v4, "e2":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v10, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v11, "ParserConfigurationException"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 201
    .end local v4    # "e2":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_52
    move-exception v5

    .line 202
    .local v5, "e3":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v11, "IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private static processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z
    .registers 16
    .param p0, "methodsWithinService"    # Lorg/w3c/dom/NodeList;
    .param p1, "serviceObject"    # Lcom/android/server/ServiceObject;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v0, v10, :cond_133

    .line 308
    const/4 v8, 0x0

    .line 309
    .local v8, "singleMethodElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .end local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    check-cast v8, Lorg/w3c/dom/Element;

    .line 311
    .restart local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    new-instance v7, Lcom/android/server/MethodPermissionPackage;

    invoke-direct {v7}, Lcom/android/server/MethodPermissionPackage;-><init>()V

    .line 312
    .local v7, "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "methodName":Ljava/lang/String;
    const-string v10, "seinfo"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 317
    .local v1, "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_ab

    .line 318
    iput-boolean v9, v7, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 319
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_31
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_ab

    .line 320
    iget-object v10, v7, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const-string/jumbo v12, "value"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_open"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a8

    .line 326
    sget-object v10, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding open method entry - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v10, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 331
    .end local v2    # "j":I
    :cond_ab
    const-string v10, "package"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_f1

    .line 334
    iput-boolean v9, v7, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 335
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_ba
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_f1

    .line 337
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string v11, "seinfo"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "packageSeinfo":Ljava/lang/String;
    new-instance v5, Lcom/android/server/PackageObject;

    invoke-direct {v5, v4, v6}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v5, "packageObject":Lcom/android/server/PackageObject;
    iget-object v10, v7, Lcom/android/server/MethodPermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    .line 349
    .end local v2    # "j":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageObject":Lcom/android/server/PackageObject;
    .end local v6    # "packageSeinfo":Ljava/lang/String;
    :cond_f1
    const-string v10, "agentType"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 351
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_121

    .line 352
    iput-boolean v9, v7, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 353
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_100
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_121

    .line 354
    iget-object v10, v7, Lcom/android/server/MethodPermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const-string/jumbo v12, "value"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_100

    .line 359
    .end local v2    # "j":I
    :cond_121
    iget-object v10, p1, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v10, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_12a

    .line 368
    .end local v1    # "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v7    # "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    .end local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    :goto_129
    return v9

    .line 366
    .restart local v1    # "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    .restart local v3    # "methodName":Ljava/lang/String;
    .restart local v7    # "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    .restart local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    :cond_12a
    iget-object v10, p1, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v10, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 368
    .end local v1    # "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v7    # "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    .end local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    :cond_133
    const/4 v9, 0x1

    goto :goto_129
.end method
