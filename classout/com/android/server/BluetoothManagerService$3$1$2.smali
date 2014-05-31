.class Lcom/android/server/BluetoothManagerService$3$1$2;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 2006
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3$1$2;->this$2:Lcom/android/server/BluetoothManagerService$3$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3$1$2;->this$2:Lcom/android/server/BluetoothManagerService$3$1;

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$3$1;->this$1:Lcom/android/server/BluetoothManagerService$3;

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v1, 0xd

    const/16 v2, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 2010
    return-void
.end method
