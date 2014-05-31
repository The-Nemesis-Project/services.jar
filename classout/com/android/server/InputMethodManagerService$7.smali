.class Lcom/android/server/InputMethodManagerService$7;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenuKNOX(Z)V
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
    .line 4268
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 4272
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2200(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowManagerService;->setHardKeyboardEnabled(Z)V

    .line 4275
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 4277
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setOnScreenKeyboardSettingValue(Z)V
    invoke-static {v3, p2}, Lcom/android/server/InputMethodManagerService;->access$2300(Lcom/android/server/InputMethodManagerService;Z)V

    .line 4278
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogAdapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2400(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 4279
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 4280
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 4281
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_55

    .line 4282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_52

    .line 4283
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4284
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogAdapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2400(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->setAllListItemEnabled(ZLandroid/view/View;)V

    .line 4282
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 4286
    .end local v2    # "view":Landroid/view/View;
    :cond_52
    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 4291
    .end local v0    # "i":I
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_55
    return-void
.end method
