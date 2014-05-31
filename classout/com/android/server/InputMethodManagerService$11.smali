.class Lcom/android/server/InputMethodManagerService$11;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 4572
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 4576
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2200(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    if-nez p2, :cond_55

    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->setHardKeyboardEnabled(Z)V

    .line 4579
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 4581
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setOnScreenKeyboardSettingValue(Z)V
    invoke-static {v3, p2}, Lcom/android/server/InputMethodManagerService;->access$2300(Lcom/android/server/InputMethodManagerService;Z)V

    .line 4582
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogAdapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2400(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 4583
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 4584
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 4585
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_5a

    .line 4586
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_57

    .line 4587
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4588
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogAdapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2400(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->setAllListItemEnabled(ZLandroid/view/View;)V

    .line 4586
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 4576
    .end local v0    # "i":I
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "view":Landroid/view/View;
    :cond_55
    const/4 v3, 0x0

    goto :goto_9

    .line 4590
    .restart local v0    # "i":I
    .restart local v1    # "listView":Landroid/widget/ListView;
    :cond_57
    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 4595
    .end local v0    # "i":I
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_5a
    return-void
.end method
