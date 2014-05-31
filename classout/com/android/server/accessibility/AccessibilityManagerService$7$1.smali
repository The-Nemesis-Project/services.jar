.class Lcom/android/server/accessibility/AccessibilityManagerService$7$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

.field final synthetic val$checkScreenCurtain:I


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$7;I)V
    .registers 3

    .prologue
    .line 994
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->val$checkScreenCurtain:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 999
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1000
    .local v1, "mTalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->val$checkScreenCurtain:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 1001
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040acd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1005
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1007
    :cond_37
    return-void

    .line 1002
    :cond_38
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->val$checkScreenCurtain:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    .line 1003
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040ace

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e
.end method
