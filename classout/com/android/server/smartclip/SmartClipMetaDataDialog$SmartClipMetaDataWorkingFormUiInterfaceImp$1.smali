.class Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp$1;
.super Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface$Stub;
.source "SmartClipMetaDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;)V
    .registers 2

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp$1;->this$1:Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;

    invoke-direct {p0}, Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setSmartClipMetaDataUiEvent(Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;)V
    .registers 3
    .param p1, "arg0"    # Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp$1;->this$1:Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;->setSmartClipMetaDataUiEvent(Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;)V

    .line 604
    return-void
.end method
