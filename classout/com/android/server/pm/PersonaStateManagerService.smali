.class public Lcom/android/server/pm/PersonaStateManagerService;
.super Landroid/content/pm/IPersonaStateHandler$Stub;
.source "PersonaStateManagerService.java"


# static fields
.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final TAG:Ljava/lang/String; = "PersonaStateManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaStateManagerService;->sContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/PersonaStateManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/pm/IPersonaStateHandler$Stub;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/pm/PersonaStateManagerService;->mContext:Landroid/content/Context;

    .line 23
    sput-object p1, Lcom/android/server/pm/PersonaStateManagerService;->sContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 2
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public mapToNormalizedState(I)I
    .registers 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    const-string v2, "mapToNormalizedState"

    invoke-static {v2}, Lcom/android/server/pm/PersonaStateManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    const-string v2, "persona_state"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 54
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 55
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1a

    .line 57
    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaStateHandler;->mapToNormalizedState(I)I

    move-result p1

    .line 59
    .end local p1    # "state":I
    :cond_1a
    return p1
.end method

.method public postEvent(Landroid/content/pm/PersonaEvent;)I
    .registers 6
    .param p1, "event"    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v2, "postEvent"

    invoke-static {v2}, Lcom/android/server/pm/PersonaStateManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    const-string v2, "persona_state"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 68
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1b

    .line 69
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_22

    .line 71
    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v2

    .line 76
    :goto_1a
    return v2

    .line 73
    :cond_1b
    const-string v2, "PersonaStateManagerService"

    const-string v3, "postEvent() IPersonaStateHandler from HandlerCacheManager is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_22
    const/4 v2, -0x1

    goto :goto_1a
.end method

.method public postEventForPersona(ILandroid/content/pm/PersonaEvent;)I
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "event"    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v2, "postEvent"

    invoke-static {v2}, Lcom/android/server/pm/PersonaStateManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    const-string v2, "persona_state"

    invoke-static {p1, v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 85
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1b

    .line 86
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_22

    .line 88
    invoke-interface {v1, p2}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v2

    .line 93
    :goto_1a
    return v2

    .line 90
    :cond_1b
    const-string v2, "PersonaStateManagerService"

    const-string v3, "postEvent() IPersonaStateHandler from HandlerCacheManager is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_22
    const/4 v2, -0x1

    goto :goto_1a
.end method
