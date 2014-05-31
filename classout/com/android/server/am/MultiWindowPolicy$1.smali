.class Lcom/android/server/am/MultiWindowPolicy$1;
.super Landroid/telephony/PhoneStateListener;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 130
    if-ne p1, v3, :cond_14

    .line 131
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    const-string v2, "com.android.phone"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 134
    :cond_14
    return-void
.end method
