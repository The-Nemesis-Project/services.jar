.class final Lcom/android/server/am/MultiWindowManagerService$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_MINIMIZE_ALL:I = 0x3

.field private static final MSG_MINIMIZE_EXPANDED_ICON:I = 0x1

.field private static final MSG_MINIMIZE_STACKED_ICON:I = 0x2

.field private static final MSG_RELAUNCH_ALL_EXTERNAL_ACTIVITY:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 2

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 794
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v5, v5, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 795
    .local v4, "size":I
    const/4 v3, 0x0

    .line 796
    .local v3, "shiftX":I
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_4c

    .line 845
    :cond_e
    :goto_e
    return-void

    .line 798
    :sswitch_f
    if-eqz v4, :cond_e

    .line 802
    const/4 v3, 0x0

    .line 803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v4, :cond_1f

    .line 810
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v5

    add-int/2addr v3, v5

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 812
    :cond_1f
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I
    invoke-static {v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->access$502(Lcom/android/server/am/MultiWindowManagerService;I)I

    goto :goto_e

    .line 816
    .end local v0    # "i":I
    :sswitch_26
    if-eqz v4, :cond_e

    .line 820
    const/4 v3, 0x0

    .line 821
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2a
    if-ge v0, v4, :cond_36

    .line 828
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v5

    add-int/2addr v3, v5

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 830
    :cond_36
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I
    invoke-static {v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->access$502(Lcom/android/server/am/MultiWindowManagerService;I)I

    goto :goto_e

    .line 834
    .end local v0    # "i":I
    :sswitch_3d
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    # invokes: Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    goto :goto_e

    .line 838
    :sswitch_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 841
    .local v1, "origId":J
    goto :goto_e

    .line 796
    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3d
        0xa -> :sswitch_47
    .end sparse-switch
.end method
