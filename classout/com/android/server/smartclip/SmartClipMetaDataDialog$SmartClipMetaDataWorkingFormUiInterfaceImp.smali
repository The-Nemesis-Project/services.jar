.class Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;
.super Ljava/lang/Object;
.source "SmartClipMetaDataDialog.java"

# interfaces
.implements Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipMetaDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartClipMetaDataWorkingFormUiInterfaceImp"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface$Stub;

.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V
    .registers 3

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 600
    new-instance v0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp$1;-><init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;->mBinder:Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    .param p2, "x1"    # Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 614
    const-string v0, "SmartClipMetaDataDialog"

    const-string v1, "asBinder"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;->mBinder:Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface$Stub;

    return-object v0
.end method

.method public setSmartClipMetaDataUiEvent(Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;)V
    .registers 4
    .param p1, "arg0"    # Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 609
    const-string v0, "SmartClipMetaDataDialog"

    const-string v1, "setSmartClipMetaDataUiEvent(ISmartClipMetaDataUiEvent arg0) called!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mSmartClipMetaDataUiEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;
    invoke-static {v0, p1}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$602(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;)Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;

    .line 611
    return-void
.end method
