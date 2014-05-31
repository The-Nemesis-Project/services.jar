.class Lcom/android/server/BluetoothManagerService$3$1$3;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/BluetoothManagerService$3$1;

.field final synthetic val$keyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService$3$1;Landroid/app/KeyguardManager;)V
    .registers 3

    .prologue
    .line 1986
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3$1$3;->this$2:Lcom/android/server/BluetoothManagerService$3$1;

    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$3$1$3;->val$keyguardManager:Landroid/app/KeyguardManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 1989
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_45

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3$1$3;->val$keyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3$1$3;->val$keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_45

    .line 1990
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3$1$3;->this$2:Lcom/android/server/BluetoothManagerService$3$1;

    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v2, 0xd

    const/16 v3, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1991
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1992
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1993
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1994
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1995
    const/high16 v1, 0x13a00000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2000
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3$1$3;->this$2:Lcom/android/server/BluetoothManagerService$3$1;

    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2003
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_45
    return v4
.end method
