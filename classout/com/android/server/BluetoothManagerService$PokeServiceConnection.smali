.class Lcom/android/server/BluetoothManagerService$PokeServiceConnection;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PokeServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 2

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$PokeServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "x1"    # Lcom/android/server/BluetoothManagerService$1;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$PokeServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 351
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "BluetoothManagerService"

    const-string v1, "PokeServiceConnection: connected to BtService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$PokeServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    # setter for: Lcom/android/server/BluetoothManagerService;->mPoke:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 353
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 357
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "BluetoothManagerService"

    const-string v1, "PokeServiceConnection: disconnected from BtService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$PokeServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mPoke:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 359
    return-void
.end method
