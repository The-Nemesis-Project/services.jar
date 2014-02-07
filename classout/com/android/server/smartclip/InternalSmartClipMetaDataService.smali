.class public Lcom/android/server/smartclip/InternalSmartClipMetaDataService;
.super Landroid/sec/smartclipmetadata/ISmartClipMetaDataService$Stub;
.source "InternalSmartClipMetaDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InternalSmartClipMetaDataService"


# instance fields
.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private mClipBoardDataUiEventImp:Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepository;

.field private mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

.field private mSmartClipMetaDataWorkingFormUiInterface:Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;

.field private mSmartClipPasteEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Landroid/sec/smartclipmetadata/ISmartClipMetaDataService$Stub;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSmartClipMetaDataWorkingFormUiInterface:Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;

    .line 24
    new-instance v0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;

    invoke-direct {v0, p0, v1}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;-><init>(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;)V

    iput-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mClipBoardDataUiEventImp:Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->MSG_SHOW_DIALOG:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->MSG_DISMISS_DIALOG:I

    .line 122
    new-instance v0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;-><init>(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mHandler:Landroid/os/Handler;

    .line 152
    iput-object p1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/InternalSmartClipMetaDataService;
    .param p1, "x1"    # Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/samsung/android/smartclip/SmartClipDataRepository;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepository;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSmartClipPasteEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;

    return-object v0
.end method


# virtual methods
.method public IsShowMetaDataTray()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "Result":Z
    iget-object v1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->isShowing()Z

    move-result v0

    .line 87
    :cond_b
    return v0
.end method

.method public RegistSmartClipMetaDataWorkingFormUiInterface(Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;)V
    .registers 4
    .param p1, "iRegInterface"    # Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_1
    iput-object p1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSmartClipMetaDataWorkingFormUiInterface:Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;

    .line 106
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSmartClipMetaDataWorkingFormUiInterface:Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;

    if-eqz v0, :cond_10

    .line 107
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSmartClipMetaDataWorkingFormUiInterface:Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mClipBoardDataUiEventImp:Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;

    invoke-interface {v0, v1}, Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;->setSmartClipMetaDataUiEvent(Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;)V

    .line 110
    :goto_e
    monitor-exit p0

    .line 111
    return-void

    .line 109
    :cond_10
    const-string v0, "InternalSmartClipMetaDataService"

    const-string v1, "RegistSmartClipMetaDataWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 110
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public dismissMetaDataTray()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 93
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 99
    :goto_5
    return-void

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5
.end method

.method public setSmartClipMetaDataPasteEvent(Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;)V
    .registers 4
    .param p1, "iSmartClipPasteEvent"    # Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v0, "InternalSmartClipMetaDataService"

    const-string v1, "setSmartClipMetaDataPasteEvent in service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSmartClipPasteEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;

    .line 116
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    if-eqz v0, :cond_14

    .line 117
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    iget-object v1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSmartClipPasteEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->setSmartClipMetaDataPasteTargetViewInfo(Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;)V

    .line 119
    :cond_14
    return-void
.end method

.method public showMetaDataTray(Lcom/samsung/android/smartclip/SmartClipDataRepository;)V
    .registers 4
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 81
    :goto_5
    return-void

    .line 77
    :cond_6
    iput-object p1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepository;

    .line 79
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5
.end method
