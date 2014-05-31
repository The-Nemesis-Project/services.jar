.class Lcom/android/server/BluetoothManagerService$3$1;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BluetoothManagerService$3;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService$3;)V
    .registers 2

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1963
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v4, v4, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 1964
    .local v2, "mStatusBar":Landroid/app/StatusBarManager;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v4, v4, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1965
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_26

    .line 1966
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1967
    :cond_26
    new-instance v1, Lcom/android/server/BluetoothManagerService$3$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$3$1$1;-><init>(Lcom/android/server/BluetoothManagerService$3$1;)V

    .line 1979
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1980
    .local v3, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v4, v4, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v6, v6, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v6, v6, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040932

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v6, v6, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040933

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/BluetoothManagerService$3$1$3;

    invoke-direct {v6, p0, v0}, Lcom/android/server/BluetoothManagerService$3$1$3;-><init>(Lcom/android/server/BluetoothManagerService$3$1;Landroid/app/KeyguardManager;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/BluetoothManagerService$3$1$2;

    invoke-direct {v6, p0}, Lcom/android/server/BluetoothManagerService$3$1$2;-><init>(Lcom/android/server/BluetoothManagerService$3$1;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    # setter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v4, v5}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2014
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v4, v4, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2015
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v4, v4, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2016
    return-void
.end method
