.class Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;
.super Landroid/content/pm/IPersonaStateHandler$Stub;
.source "HandlerCacheManager.java"

# interfaces
.implements Lcom/android/server/pm/HandlerCacheManager$QueueableHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/HandlerCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueableStateHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QueueableStateHandler"


# instance fields
.field private eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private personaId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 440
    invoke-direct {p0}, Landroid/content/pm/IPersonaStateHandler$Stub;-><init>()V

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->eventList:Ljava/util/List;

    .line 438
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->personaId:I

    .line 441
    iput p1, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->personaId:I

    .line 442
    return-void
.end method


# virtual methods
.method public dequeueTo(Ljava/lang/Object;)V
    .registers 10
    .param p1, "handler"    # Ljava/lang/Object;

    .prologue
    .line 479
    instance-of v5, p1, Landroid/os/IBinder;

    if-eqz v5, :cond_63

    move-object v0, p1

    .line 481
    check-cast v0, Landroid/os/IBinder;

    .line 484
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_7
    const-string v5, "QueueableStateHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dequeueTo() binder.getInterfaceDescriptor() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IPersonaStateHandler"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 487
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v4

    .line 488
    .local v4, "personaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    iget-object v6, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->eventList:Ljava/util/List;

    monitor-enter v6
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_36} :catch_58

    .line 490
    :try_start_36
    iget-object v5, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->eventList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaEvent;
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_55

    .line 492
    .local v3, "personaEvent":Landroid/content/pm/PersonaEvent;
    :try_start_48
    invoke-interface {v4, v3}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_55

    goto :goto_3c

    .line 493
    :catch_4c
    move-exception v1

    .line 494
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4d
    const-string v5, "QueueableStateHandler"

    const-string v7, "postEvent error"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 497
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "personaEvent":Landroid/content/pm/PersonaEvent;
    :catchall_55
    move-exception v5

    monitor-exit v6
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_55

    :try_start_57
    throw v5
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_58} :catch_58

    .line 499
    .end local v4    # "personaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    :catch_58
    move-exception v1

    .line 500
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v5, "QueueableStateHandler"

    const-string v6, "dequeueTo()"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_60
    :goto_60
    return-void

    .line 497
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "personaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    :cond_61
    :try_start_61
    monitor-exit v6
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_55

    goto :goto_60

    .line 503
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "personaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    :cond_63
    const-string v5, "QueueableStateHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot dequeue to object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method public mapToNormalizedState(I)I
    .registers 4
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unable to queue this method call."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postEvent(Landroid/content/pm/PersonaEvent;)I
    .registers 9
    .param p1, "personaEvent"    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    const-string v4, "QueueableStateHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postEvent() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v5, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->eventList:Ljava/util/List;

    monitor-enter v5

    .line 454
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->eventList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_52

    .line 456
    invoke-virtual {p1}, Landroid/content/pm/PersonaEvent;->getEvent()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4d

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 458
    .local v2, "token":J
    const-string v4, "persona"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 460
    .local v0, "service":Lcom/android/server/pm/PersonaManagerService;
    iget v4, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->personaId:I

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v1

    .line 461
    .local v1, "state":I
    if-eqz v1, :cond_3f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4a

    .line 462
    :cond_3f
    iget v4, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->personaId:I

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 463
    iget-object v4, p0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;->eventList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 465
    :cond_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    .end local v0    # "service":Lcom/android/server/pm/PersonaManagerService;
    .end local v1    # "state":I
    .end local v2    # "token":J
    :cond_4d
    invoke-virtual {p1}, Landroid/content/pm/PersonaEvent;->getEvent()I

    move-result v4

    return v4

    .line 455
    :catchall_52
    move-exception v4

    :try_start_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v4
.end method

.method public postEventForPersona(ILandroid/content/pm/PersonaEvent;)I
    .registers 4
    .param p1, "id"    # I
    .param p2, "personaEvent"    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p2}, Landroid/content/pm/PersonaEvent;->getEvent()I

    move-result v0

    return v0
.end method
