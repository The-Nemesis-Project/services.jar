.class Lcom/android/server/pm/HandlerCacheManager$3;
.super Ljava/lang/Object;
.source "HandlerCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/HandlerCacheManager;->onStateChange(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/HandlerCacheManager;

.field final synthetic val$oldState:I

.field final synthetic val$personaId:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/HandlerCacheManager;III)V
    .registers 5

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/pm/HandlerCacheManager$3;->this$0:Lcom/android/server/pm/HandlerCacheManager;

    iput p2, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$personaId:I

    iput p3, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$state:I

    iput p4, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$oldState:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 316
    const-string v6, "HandlerCacheManager"

    const-string v7, "onStateChange()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-class v7, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v7

    .line 318
    :try_start_a
    new-instance v4, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$personaId:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 319
    .local v4, "personInt":Ljava/lang/Integer;
    # getter for: Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/pm/HandlerCacheManager;->access$000()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 321
    .local v3, "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    if-eqz v3, :cond_57

    .line 322
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 323
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v1, :cond_54

    .line 324
    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IPersonaObserver;

    .line 325
    .local v2, "observer":Landroid/content/pm/IPersonaObserver;
    const-string v6, "HandlerCacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item() for onStateChange:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_51

    .line 327
    :try_start_42
    iget v6, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$state:I

    iget v8, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$oldState:I

    invoke-interface {v2, v6, v8}, Landroid/content/pm/IPersonaObserver;->onStateChange(II)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4c
    .catchall {:try_start_42 .. :try_end_49} :catchall_51

    .line 323
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 328
    :catch_4c
    move-exception v5

    .line 329
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_4d
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_49

    .line 334
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "observer":Landroid/content/pm/IPersonaObserver;
    .end local v3    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    .end local v4    # "personInt":Ljava/lang/Integer;
    .end local v5    # "re":Landroid/os/RemoteException;
    :catchall_51
    move-exception v6

    monitor-exit v7
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_51

    throw v6

    .line 332
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v3    # "observerCache":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPersonaObserver;>;"
    .restart local v4    # "personInt":Ljava/lang/Integer;
    :cond_54
    :try_start_54
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 334
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_57
    monitor-exit v7
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_51

    .line 335
    return-void
.end method
