.class Lcom/android/server/power/ShutdownDialog$StatePrepare$1;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownDialog$StatePrepare;->prepareSound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownDialog$StatePrepare;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownDialog$StatePrepare;)V
    .registers 2

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;->this$1:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 310
    const-string v0, "ShutdownDialog"

    const-string v1, "!@onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method
