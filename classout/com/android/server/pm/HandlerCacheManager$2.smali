.class Lcom/android/server/pm/HandlerCacheManager$2;
.super Ljava/lang/Object;
.source "HandlerCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/HandlerCacheManager;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/HandlerCacheManager;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/HandlerCacheManager;I)V
    .registers 3

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/server/pm/HandlerCacheManager$2;->this$0:Lcom/android/server/pm/HandlerCacheManager;

    iput p2, p0, Lcom/android/server/pm/HandlerCacheManager$2;->val$personaId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 287
    const-class v7, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v7

    .line 288
    :try_start_3
    new-instance v4, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/server/pm/HandlerCacheManager$2;->val$personaId:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 289
    .local v4, "personInt":Ljava/lang/Integer;
    # getter for: Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/pm/HandlerCacheManager;->access$000()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 291
    .local v3, "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    if-eqz v3, :cond_4c

    .line 292
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 293
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v1, :cond_49

    .line 294
    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IPersonaObserver;

    .line 295
    .local v2, "observer":Landroid/content/pm/IPersonaObserver;
    const-string v6, "HandlerCacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item() for onInit:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_46

    .line 297
    :try_start_3b
    invoke-interface {v2}, Landroid/content/pm/IPersonaObserver;->onInit()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_41
    .catchall {:try_start_3b .. :try_end_3e} :catchall_46

    .line 293
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 298
    :catch_41
    move-exception v5

    .line 299
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_42
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3e

    .line 304
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "observer":Landroid/content/pm/IPersonaObserver;
    .end local v3    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    .end local v4    # "personInt":Ljava/lang/Integer;
    .end local v5    # "re":Landroid/os/RemoteException;
    :catchall_46
    move-exception v6

    monitor-exit v7
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    throw v6

    .line 302
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v3    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    .restart local v4    # "personInt":Ljava/lang/Integer;
    :cond_49
    :try_start_49
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 304
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_4c
    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_46

    .line 305
    return-void
.end method
