.class public Lcom/android/server/pm/HandlerCacheManager;
.super Ljava/lang/Object;
.source "HandlerCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;,
        Lcom/android/server/pm/HandlerCacheManager$QueueableHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HandlerCacheManager"

.field public static final PERSONA_DEVICE_POLICY_HANDLER:Ljava/lang/String; = "persona_device_policy"

.field public static final PERSONA_FILE_HANDLER:Ljava/lang/String; = "persona_file_system"

.field public static final PERSONA_LOCK_SETTINGS_HANDLER:Ljava/lang/String; = "persona_lock_settings"

.field public static final PERSONA_POLICY_HANDLER:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_STATE_HANDLER:Ljava/lang/String; = "persona_state"

.field private static mCurrentPersona:I

.field private static final observerCacheSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IPersonaObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sCurrentCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/pm/HandlerCacheManager;


# instance fields
.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, -0x1

    sput v0, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handlerThread:Landroid/os/HandlerThread;

    .line 47
    sput-object p0, Lcom/android/server/pm/HandlerCacheManager;->sInstance:Lcom/android/server/pm/HandlerCacheManager;

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerCacheManager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handlerThread:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/HandlerCacheManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized clearHandlersForPersona(I)V
    .registers 7
    .param p0, "personaId"    # I

    .prologue
    .line 137
    const-class v3, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v3

    :try_start_3
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearHandlersForPersona: personaId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v2, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 140
    .local v1, "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_39

    .line 141
    const-string v2, "persona_file_system"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "fileHandler":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 143
    if-eqz v0, :cond_3b

    .line 144
    const-string v2, "persona_file_system"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_45

    .line 149
    .end local v0    # "fileHandler":Ljava/lang/Object;
    :cond_39
    :goto_39
    monitor-exit v3

    return-void

    .line 146
    .restart local v0    # "fileHandler":Ljava/lang/Object;
    :cond_3b
    :try_start_3b
    sget-object v2, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_45

    goto :goto_39

    .line 137
    .end local v0    # "fileHandler":Ljava/lang/Object;
    .end local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_45
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getHandler(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v2, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v2

    const/4 v0, 0x0

    .line 65
    .local v0, "mBinder":Ljava/lang/Object;
    :try_start_4
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    if-eqz v1, :cond_9c

    .line 66
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_79

    .line 77
    .end local v0    # "mBinder":Ljava/lang/Object;
    :goto_10
    if-nez v0, :cond_77

    const-string v1, "persona_state"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    sget v1, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    if-lez v1, :cond_77

    .line 80
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    if-nez v1, :cond_51

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    .line 82
    const-string v1, "HandlerCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " registerHandler creating new cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    sget-object v4, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_51
    const-string v1, "HandlerCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHandler() returning queuing StateHandler for persona "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;

    sget v1, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    invoke-direct {v0, v1}, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;-><init>(I)V

    .line 91
    .local v0, "mBinder":Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_4 .. :try_end_77} :catchall_99

    .line 94
    .end local v0    # "mBinder":Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;
    :cond_77
    monitor-exit v2

    return-object v0

    .line 71
    .local v0, "mBinder":Ljava/lang/Object;
    :cond_79
    :try_start_79
    const-string v1, "HandlerCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHandler() mBinder for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_79 .. :try_end_97} :catchall_99

    goto/16 :goto_10

    .line 63
    .end local v0    # "mBinder":Ljava/lang/Object;
    :catchall_99
    move-exception v1

    monitor-exit v2

    throw v1

    .line 74
    .restart local v0    # "mBinder":Ljava/lang/Object;
    :cond_9c
    :try_start_9c
    const-string v1, "HandlerCacheManager"

    const-string v3, "getHandler() sCurrentCache is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_99

    goto/16 :goto_10
.end method

.method public static declared-synchronized getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "personaId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v3, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v3

    :try_start_3
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandlerForPersona :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "mBinder":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 102
    .local v1, "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v1, Ljava/util/HashMap;

    .line 103
    .restart local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_cd

    .line 104
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_ab

    .line 106
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandler() mBinder for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "mBinder":Ljava/lang/Object;
    :goto_54
    if-nez v0, :cond_a9

    const-string v2, "persona_state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    if-lez p0, :cond_a9

    .line 118
    if-nez v1, :cond_89

    .line 119
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    .restart local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " registerHandler creating new cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v2, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_89
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandler() returning queuing StateHandler for persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;

    invoke-direct {v0, p0}, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;-><init>(I)V

    .line 129
    .local v0, "mBinder":Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a9
    .catchall {:try_start_3 .. :try_end_a9} :catchall_ca

    .line 132
    .end local v0    # "mBinder":Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;
    :cond_a9
    monitor-exit v3

    return-object v0

    .line 109
    .local v0, "mBinder":Ljava/lang/Object;
    :cond_ab
    :try_start_ab
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandler() mBinder for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_ab .. :try_end_c9} :catchall_ca

    goto :goto_54

    .line 99
    .end local v0    # "mBinder":Ljava/lang/Object;
    .end local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_ca
    move-exception v2

    monitor-exit v3

    throw v2

    .line 112
    .restart local v0    # "mBinder":Ljava/lang/Object;
    .restart local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_cd
    :try_start_cd
    const-string v2, "HandlerCacheManager"

    const-string v4, "getHandler() sTempCache is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_ca

    goto :goto_54
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/pm/HandlerCacheManager;
    .registers 2

    .prologue
    .line 55
    const-class v1, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/pm/HandlerCacheManager;->sInstance:Lcom/android/server/pm/HandlerCacheManager;

    if-nez v0, :cond_e

    .line 56
    new-instance v0, Lcom/android/server/pm/HandlerCacheManager;

    invoke-direct {v0}, Lcom/android/server/pm/HandlerCacheManager;-><init>()V

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->sInstance:Lcom/android/server/pm/HandlerCacheManager;

    .line 58
    :cond_e
    sget-object v0, Lcom/android/server/pm/HandlerCacheManager;->sInstance:Lcom/android/server/pm/HandlerCacheManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V
    .registers 11
    .param p0, "personaId"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mHandler"    # Ljava/lang/Object;
    .param p3, "observerCallback"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 160
    const-class v4, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v4

    :try_start_3
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerHandler personaId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 165
    .local v2, "sPersonaCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 168
    .local v1, "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    if-nez v2, :cond_68

    .line 169
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "sPersonaCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 170
    .restart local v2    # "sPersonaCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " registerHandler creating new cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_68
    if-nez v1, :cond_79

    .line 176
    new-instance v1, Landroid/os/RemoteCallbackList;

    .end local v1    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 177
    .restart local v1    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_79
    if-eqz p2, :cond_e0

    if-eqz p1, :cond_e0

    .line 182
    const-string v3, "HandlerCacheManager"

    const-string v5, " registerHandler adding to map"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "existingHandler":Ljava/lang/Object;
    if-eqz v0, :cond_9a

    instance-of v3, v0, Lcom/android/server/pm/HandlerCacheManager$QueueableHandler;

    if-eqz v3, :cond_9a

    .line 187
    const-string v3, "HandlerCacheManager"

    const-string v5, " registerHandler existingHandler is QueueableHandler"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    check-cast v0, Lcom/android/server/pm/HandlerCacheManager$QueueableHandler;

    .end local v0    # "existingHandler":Ljava/lang/Object;
    invoke-interface {v0, p2}, Lcom/android/server/pm/HandlerCacheManager$QueueableHandler;->dequeueTo(Ljava/lang/Object;)V

    .line 193
    :cond_9a
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " just put handler :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz p3, :cond_e0

    .line 196
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerHandler() added observerCallback for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " personaId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v1, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 203
    :cond_e0
    sget v3, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    if-ne v3, p0, :cond_f3

    .line 204
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sput-object v3, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;
    :try_end_f3
    .catchall {:try_start_3 .. :try_end_f3} :catchall_f5

    .line 206
    :cond_f3
    monitor-exit v4

    return-void

    .line 160
    .end local v1    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    .end local v2    # "sPersonaCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_f5
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized registerObserver(ILandroid/content/pm/IPersonaObserver;)V
    .registers 9
    .param p0, "personaId"    # I
    .param p1, "observerCallback"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 210
    const-class v4, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v4

    :try_start_3
    const-string v3, "HandlerCacheManager"

    const-string v5, "registerObserver() observerCallback "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 214
    .local v2, "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    if-nez v2, :cond_28

    .line 215
    new-instance v2, Landroid/os/RemoteCallbackList;

    .end local v2    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 216
    .restart local v2    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_28
    if-eqz p1, :cond_34

    .line 220
    const-string v3, "HandlerCacheManager"

    const-string v5, "registerObserver() added observerCallback "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 224
    :cond_34
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 225
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    if-ge v0, v1, :cond_5a

    .line 226
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerObserver() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 228
    :cond_5a
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5f

    .line 229
    monitor-exit v4

    return-void

    .line 210
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    :catchall_5f
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .registers 4
    .param p0, "personaId"    # I

    .prologue
    .line 153
    const-class v1, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    .line 154
    sput p0, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 155
    monitor-exit v1

    return-void

    .line 153
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterObserver(ILandroid/content/pm/IPersonaObserver;)V
    .registers 9
    .param p0, "personaId"    # I
    .param p1, "observerCallback"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 233
    const-class v4, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v4

    :try_start_3
    const-string v3, "HandlerCacheManager"

    const-string/jumbo v5, "unregisterObserver() observerCallback "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 238
    .local v2, "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    if-eqz v2, :cond_50

    .line 240
    if-eqz p1, :cond_27

    .line 241
    const-string v3, "HandlerCacheManager"

    const-string/jumbo v5, "unregisterObserver() removed observerCallback "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 245
    :cond_27
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 246
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    if-ge v0, v1, :cond_4d

    .line 247
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerObserver() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 249
    :cond_4d
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_52

    .line 251
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_50
    monitor-exit v4

    return-void

    .line 233
    .end local v2    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    :catchall_52
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public onFirstBoot(I)V
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/HandlerCacheManager$4;-><init>(Lcom/android/server/pm/HandlerCacheManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method public onInit(I)V
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/HandlerCacheManager$2;-><init>(Lcom/android/server/pm/HandlerCacheManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method public onKeyGuardStateChanged(IZ)V
    .registers 5
    .param p1, "personaId"    # I
    .param p2, "state"    # Z

    .prologue
    .line 404
    const-string v0, "HandlerCacheManager"

    const-string v1, "onKeyGuardStateChanged() handler.post()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/HandlerCacheManager$6;-><init>(Lcom/android/server/pm/HandlerCacheManager;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public onPersonaSwitch(I)V
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/HandlerCacheManager$1;-><init>(Lcom/android/server/pm/HandlerCacheManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method public onSessionExpired(I)V
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 372
    const-string v0, "HandlerCacheManager"

    const-string v1, "onSessionExpired() handler.post()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/HandlerCacheManager$5;-><init>(Lcom/android/server/pm/HandlerCacheManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method

.method public onStateChange(III)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "state"    # I
    .param p3, "oldState"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/HandlerCacheManager$3;-><init>(Lcom/android/server/pm/HandlerCacheManager;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method
