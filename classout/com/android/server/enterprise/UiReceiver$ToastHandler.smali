.class final Lcom/android/server/enterprise/UiReceiver$ToastHandler;
.super Landroid/os/Handler;
.source "UiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/UiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToastHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/UiReceiver$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/enterprise/UiReceiver$1;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/server/enterprise/UiReceiver$ToastHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 211
    :goto_5
    return-void

    .line 205
    :pswitch_6
    # getter for: Lcom/android/server/enterprise/UiReceiver;->mSentMessageQueue:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/enterprise/UiReceiver;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 201
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
