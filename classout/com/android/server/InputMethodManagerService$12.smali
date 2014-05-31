.class Lcom/android/server/InputMethodManagerService$12;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .registers 3

    .prologue
    .line 4616
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$12;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 4619
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4620
    :try_start_6
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    array-length v2, v2

    if-le v2, p2, :cond_28

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2600(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2600(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    array-length v2, v2

    if-gt v2, p2, :cond_2a

    .line 4622
    :cond_28
    monitor-exit v3

    .line 4649
    :goto_29
    return-void

    .line 4624
    :cond_2a
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    aget-object v0, v2, p2

    .line 4625
    .local v0, "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2600(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    aget v1, v2, p2

    .line 4626
    .local v1, "subtypeId":I
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 4627
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    .line 4628
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 4629
    if-eqz v0, :cond_78

    .line 4630
    if-ltz v1, :cond_52

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-lt v1, v2, :cond_53

    .line 4632
    :cond_52
    const/4 v1, -0x1

    .line 4635
    :cond_53
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->knoxV1Enabled:Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 4640
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->notificationcontrol_lock:Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2800(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    if-ne v2, v4, :cond_6f

    .line 4641
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/InputMethodManagerService;->notificationcontrol_lock:Z
    invoke-static {v2, v4}, Lcom/android/server/InputMethodManagerService;->access$2802(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 4642
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/InputMethodManagerService;->notificationcontrol_release:Z
    invoke-static {v2, v4}, Lcom/android/server/InputMethodManagerService;->access$3202(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 4646
    :cond_6f
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 4648
    :cond_78
    monitor-exit v3

    goto :goto_29

    .end local v0    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "subtypeId":I
    :catchall_7a
    move-exception v2

    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_6 .. :try_end_7c} :catchall_7a

    throw v2
.end method
