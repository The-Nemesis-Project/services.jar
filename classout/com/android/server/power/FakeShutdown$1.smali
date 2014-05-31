.class Lcom/android/server/power/FakeShutdown$1;
.super Landroid/os/UEventObserver;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FakeShutdown;


# direct methods
.method constructor <init>(Lcom/android/server/power/FakeShutdown;)V
    .registers 2

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/server/power/FakeShutdown$1;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 753
    # getter for: Lcom/android/server/power/FakeShutdown;->sFakeState:I
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$000()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    .line 754
    const-string v4, "FakeShutdown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not DOWN_LOWLV : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_23
    return-void

    .line 757
    :cond_24
    const-string v4, "FakeShutdown"

    const-string v5, "!@uevent receive"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v4, "FakeShutdown"

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v4, "PMEVENT"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "pmevent":Ljava/lang/String;
    const-string v4, "ACTION"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "action":Ljava/lang/String;
    const-string v4, "AutoPowerOff"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v4, "change"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 763
    :cond_50
    const-string v4, "FakeShutdown"

    const-string v5, "event property not matched"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 768
    :cond_58
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 771
    .local v3, "powerManagerService":Landroid/os/IPowerManager;
    const/4 v4, 0x0

    :try_start_63
    invoke-interface {v3, v4}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_66} :catch_94

    .line 776
    :goto_66
    const-string v4, "FakeShutdown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@autoPowerOffObserver. silentshutdown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/power/FakeShutdown;->sFakeState:I
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$000()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0}, Lcom/android/server/power/FakeShutdown$1;->stopObserving()V

    .line 779
    const-string v4, "FakeShutdown"

    const-string v5, "!@autoPowerOffObserver. acquire success."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$100()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->silentShutdown(Landroid/content/Context;)V

    goto :goto_23

    .line 772
    :catch_94
    move-exception v1

    .line 773
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_66
.end method
