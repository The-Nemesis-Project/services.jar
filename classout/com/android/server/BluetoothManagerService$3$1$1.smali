.class Lcom/android/server/BluetoothManagerService$3$1$1;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService$3$1;)V
    .registers 2

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3$1$1;->this$2:Lcom/android/server/BluetoothManagerService$3$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1970
    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    .line 1971
    const/4 v0, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4302(Z)Z

    .line 1972
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3$1$1;->this$2:Lcom/android/server/BluetoothManagerService$3$1;

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->enable()Z

    .line 1977
    :goto_10
    return-void

    .line 1974
    :cond_11
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3$1$1;->this$2:Lcom/android/server/BluetoothManagerService$3$1;

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v1, 0xd

    const/16 v2, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    goto :goto_10
.end method
