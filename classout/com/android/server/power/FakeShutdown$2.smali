.class Lcom/android/server/power/FakeShutdown$2;
.super Ljava/lang/Object;
.source "FakeShutdown.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/FakeShutdown;->prepareAutoPowerOffSound()V
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
    .line 825
    iput-object p1, p0, Lcom/android/server/power/FakeShutdown$2;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 827
    iget-object v1, p0, Lcom/android/server/power/FakeShutdown$2;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/FakeShutdown;->access$200(Lcom/android/server/power/FakeShutdown;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_10

    .line 828
    const-string v1, "FakeShutdown"

    const-string v2, "MediaPlayer is null"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_f
    return-void

    .line 832
    :cond_10
    :try_start_10
    const-string v1, "FakeShutdown"

    const-string v2, "Playing sound file"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v1, p0, Lcom/android/server/power/FakeShutdown$2;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/FakeShutdown;->access$200(Lcom/android/server/power/FakeShutdown;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 835
    iget-object v1, p0, Lcom/android/server/power/FakeShutdown$2;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/FakeShutdown;->access$200(Lcom/android/server/power/FakeShutdown;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_2e} :catch_39

    goto :goto_f

    .line 836
    :catch_2f
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "FakeShutdown"

    const-string/jumbo v2, "sound thread IllegalStateException"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 838
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_39
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "FakeShutdown"

    const-string/jumbo v2, "sound thread InterruptedException"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
