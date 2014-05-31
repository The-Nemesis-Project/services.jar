.class final Lcom/android/server/power/ShutdownThread$10;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$10;->val$msg:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 1723
    if-nez p1, :cond_24

    .line 1724
    const-string v1, "ShutdownThread"

    const-string v2, "!@Text to speech"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1726
    .local v0, "param":Ljava/util/HashMap;
    const-string/jumbo v1, "streamType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    # getter for: Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1700()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$10;->val$msg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1733
    .end local v0    # "param":Ljava/util/HashMap;
    :goto_23
    return-void

    .line 1731
    :cond_24
    const-string v1, "ShutdownThread"

    const-string v2, "TTS init result fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
