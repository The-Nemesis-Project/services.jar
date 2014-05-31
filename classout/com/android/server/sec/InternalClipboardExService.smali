.class public Lcom/android/server/sec/InternalClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;,
        Lcom/android/server/sec/InternalClipboardExService$KNOXReceiver;,
        Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# static fields
.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private final ADD_ITEM:I

.field private KNOX_PASTE_FLAG:Z

.field private final KNOX_VERSION:Ljava/lang/String;

.field private final MSG_DELETE_TEMP_FILE:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_UPDATE_DIALOG:I

.field private clipPickerDataList:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

.field private mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsCalledPasteApp:Z

.field private mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 358
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    .line 119
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    .line 124
    new-instance v3, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    invoke-direct {v3, p0, v5}, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;-><init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->clipPickerDataList:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    .line 125
    const-string v3, "2.0"

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_VERSION:Ljava/lang/String;

    .line 126
    iput-boolean v4, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_PASTE_FLAG:Z

    .line 130
    iput-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 132
    new-instance v3, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v3, p0, v5}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    .line 133
    iput v6, p0, Lcom/android/server/sec/InternalClipboardExService;->ADD_ITEM:I

    .line 135
    iput-boolean v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    .line 1101
    iput v6, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_SHOW_DIALOG:I

    .line 1102
    iput v7, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_UPDATE_DIALOG:I

    .line 1103
    iput v8, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_DISMISS_DIALOG:I

    .line 1104
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_DELETE_TEMP_FILE:I

    .line 1180
    new-instance v3, Lcom/android/server/sec/InternalClipboardExService$5;

    invoke-direct {v3, p0}, Lcom/android/server/sec/InternalClipboardExService$5;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    .line 359
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    .line 361
    iput v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    .line 362
    new-instance v3, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v4, 0x14

    iget v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-direct {v3, v4, v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(IILandroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 364
    new-instance v3, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v4, 0x14

    iget v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-direct {v3, v4, v5, p1, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(IILandroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 369
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Text"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Bitmap"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "HTMLFlagment"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v1, "knoxFilter":Landroid/content/IntentFilter;
    const-string v3, "enterprise.container.remove.progress"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v3, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v3, "enterprise.container.uninstalled"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/sec/InternalClipboardExService$KNOXReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/sec/InternalClipboardExService$KNOXReceiver;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 386
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/sec/InternalClipboardExService$1;

    invoke-direct {v4, p0}, Lcom/android/server/sec/InternalClipboardExService$1;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 406
    :try_start_b3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/sec/InternalClipboardExService$2;

    invoke-direct {v4, p0}, Lcom/android/server/sec/InternalClipboardExService$2;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bf} :catch_c0

    .line 431
    :goto_bf
    return-void

    .line 427
    :catch_c0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bf
.end method

.method static synthetic access$1000(Lcom/android/server/sec/InternalClipboardExService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/sec/InternalClipboardExService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/sec/InternalClipboardExService;ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;
    .param p1, "x1"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/sec/InternalClipboardExService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    return v0
.end method

.method private addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 20
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 773
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_b

    const-string v14, "ClipboardServiceEx"

    const-string v15, "addData.."

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_b
    const/4 v2, 0x0

    .line 776
    .local v2, "Res":Landroid/sec/clipboard/data/ClipboardData;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/sec/InternalClipboardExService;->checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v14

    if-eqz v14, :cond_64

    .line 777
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v14, :cond_36

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The data are the same.:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_36
    packed-switch p1, :pswitch_data_166

    :goto_39
    move-object v3, v2

    .line 858
    .end local v2    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    .local v3, "Res":Landroid/sec/clipboard/data/ClipboardData;
    :goto_3a
    return-object v3

    .end local v3    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_3b
    move-object/from16 v13, p2

    .line 781
    check-cast v13, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 782
    .local v13, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v9

    .line 783
    .local v9, "imagePath":Ljava/lang/String;
    const-string v6, ""

    .line 784
    .local v6, "extraFilePath":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v14

    if-eqz v14, :cond_4f

    .line 785
    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetExtraDataPath()Ljava/lang/String;

    move-result-object v6

    .line 787
    :cond_4f
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .end local v6    # "extraFilePath":Ljava/lang/String;
    .end local v9    # "imagePath":Ljava/lang/String;
    .end local v13    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_55
    move-object/from16 v8, p2

    .line 790
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 791
    .local v8, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v7

    .line 792
    .local v7, "firstImagePath":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 798
    .end local v7    # "firstImagePath":Ljava/lang/String;
    .end local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_64
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    .line 801
    .local v4, "addItem":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v12, 0x0

    .line 802
    .local v12, "thumFullPath":Ljava/lang/String;
    if-eqz v4, :cond_9b

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_9b

    move-object v8, v4

    .line 803
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 804
    .restart local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v7

    .line 805
    .restart local v7    # "firstImagePath":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9b

    .line 806
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromWeb(Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;

    move-result-object v12

    .line 807
    if-eqz v12, :cond_9b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_9b

    move-object v14, v4

    .line 808
    check-cast v14, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v14, v12}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetFirstImgPath(Ljava/lang/String;)Z

    .line 813
    .end local v7    # "firstImagePath":Ljava/lang/String;
    .end local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_9b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v14, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v14

    if-eqz v14, :cond_108

    .line 815
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 816
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/sec/InternalClipboardExService;->updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    if-eqz v14, :cond_d2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog;->mShowingMenu:Landroid/view/Menu;

    if-eqz v14, :cond_d2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-boolean v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    if-eqz v14, :cond_d2

    .line 820
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog;->mShowingMenu:Landroid/view/Menu;

    invoke-interface {v14}, Landroid/view/Menu;->close()V

    .line 827
    :cond_d2
    :goto_d2
    packed-switch p1, :pswitch_data_16e

    .line 844
    :goto_d5
    if-eqz v12, :cond_105

    .line 845
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 846
    .local v5, "deleteFile":Ljava/io/File;
    const-string v11, "/data/clipboard/temp/"

    .line 847
    .local v11, "pastePath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    .local v10, "pasteFile":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_13d

    .line 850
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No target file...thumFullPath :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "deleteFile":Ljava/io/File;
    .end local v10    # "pasteFile":Ljava/io/File;
    .end local v11    # "pastePath":Ljava/lang/String;
    :cond_105
    :goto_105
    move-object v3, v2

    .line 858
    .end local v2    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v3    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    goto/16 :goto_3a

    .line 823
    .end local v3    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    :cond_108
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_d2

    const-string v14, "ClipboardServiceEx"

    const-string v15, "Failed to add data."

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    :pswitch_114
    move-object/from16 v13, p2

    .line 829
    check-cast v13, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 830
    .restart local v13    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v9

    .line 831
    .restart local v9    # "imagePath":Ljava/lang/String;
    const-string v6, ""

    .line 832
    .restart local v6    # "extraFilePath":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v14

    if-eqz v14, :cond_128

    .line 833
    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetExtraDataPath()Ljava/lang/String;

    move-result-object v6

    .line 835
    :cond_128
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    .end local v6    # "extraFilePath":Ljava/lang/String;
    .end local v9    # "imagePath":Ljava/lang/String;
    .end local v13    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_12e
    move-object/from16 v8, p2

    .line 838
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 839
    .restart local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v7

    .line 840
    .restart local v7    # "firstImagePath":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    .line 852
    .end local v7    # "firstImagePath":Ljava/lang/String;
    .end local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    .restart local v5    # "deleteFile":Ljava/io/File;
    .restart local v10    # "pasteFile":Ljava/io/File;
    .restart local v11    # "pastePath":Ljava/lang/String;
    :cond_13d
    if-eqz v10, :cond_105

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_105

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v14

    if-eqz v14, :cond_105

    invoke-virtual {v10}, Ljava/io/File;->canWrite()Z

    move-result v14

    if-eqz v14, :cond_105

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_105

    .line 853
    const-string v14, "ClipboardServiceEx"

    const-string v15, "Temp preview file of html item will be deleted"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    goto :goto_105

    .line 779
    :pswitch_data_166
    .packed-switch 0x3
        :pswitch_3b
        :pswitch_55
    .end packed-switch

    .line 827
    :pswitch_data_16e
    .packed-switch 0x3
        :pswitch_114
        :pswitch_12e
    .end packed-switch
.end method

.method private checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 620
    const/4 v1, 0x0

    .line 622
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-gtz v3, :cond_b

    move v2, v1

    .line 633
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_a
    return v2

    .line 625
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_b
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 627
    .local v0, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-eq v3, v4, :cond_1e

    move v2, v1

    .line 628
    .restart local v2    # "result":I
    goto :goto_a

    .line 631
    .end local v2    # "result":I
    :cond_1e
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    .line 633
    .restart local v2    # "result":I
    goto :goto_a
.end method

.method private clearDataList()V
    .registers 4

    .prologue
    .line 1289
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 1290
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_11

    .line 1291
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 1290
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1293
    :cond_11
    return-void
.end method

.method private deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "extraFilePath"    # Ljava/lang/String;

    .prologue
    .line 862
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_31

    if-eqz p1, :cond_31

    const-string v2, "com.samsung.clipboardsaveservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 863
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 864
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 865
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_31

    if-eqz v1, :cond_31

    .line 866
    const-string v2, "deletePath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v2, "extraDataPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 869
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 870
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 873
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_31
    return-void
.end method

.method private dump()V
    .registers 6

    .prologue
    .line 1279
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 1280
    .local v1, "size":I
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_47

    .line 1282
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_44

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1284
    :cond_47
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_52

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_52
    return-void
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .registers 4

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1404
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_11

    .line 1405
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 1407
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static getService()Landroid/content/IClipboard;
    .registers 3

    .prologue
    .line 1262
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_7

    .line 1263
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    .line 1271
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 1265
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1266
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    .line 1268
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-nez v1, :cond_22

    .line 1269
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_22

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_22
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    goto :goto_6
.end method

.method private isKnoxKeyguardShowing()Z
    .registers 8

    .prologue
    .line 175
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 177
    .local v2, "mPm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 178
    .local v0, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 179
    .local v4, "userId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    invoke-virtual {v2, v4}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v3

    .line 182
    .local v3, "state":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1f

    const/4 v5, 0x5

    if-ne v3, v5, :cond_21

    .line 183
    :cond_1f
    const/4 v5, 0x1

    .line 185
    :goto_20
    return v5

    :cond_21
    const/4 v5, 0x0

    goto :goto_20
.end method

.method private isServiceCallFromOther()Z
    .registers 7

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 162
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 164
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 165
    .local v3, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 166
    .local v2, "currUser":I
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    if-eq v1, v2, :cond_17

    .line 169
    const/4 v5, 0x1

    .line 171
    :goto_16
    return v5

    :cond_17
    const/4 v5, 0x0

    goto :goto_16
.end method

.method private sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V
    .registers 16
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 897
    :try_start_2
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    iget v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-interface {v9, v10}, Landroid/content/IClipboard;->UpdateClipboardDB(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_53

    .line 901
    :goto_b
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    if-ne v9, v12, :cond_5d

    move-object v6, p1

    .line 902
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 904
    .local v6, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :try_start_14
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 906
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_2f

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_TEXT_ID)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_58

    .line 964
    .end local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v9

    if-nez v9, :cond_13b

    const/4 v9, 0x1

    :goto_36
    iput-boolean v9, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_PASTE_FLAG:Z

    .line 965
    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KNOX_PASTE_FLAG is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_PASTE_FLAG:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void

    .line 898
    :catch_53
    move-exception v2

    .line 899
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 907
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_58
    move-exception v2

    .line 908
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 910
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_5d
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8d

    .line 911
    new-instance v6, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 912
    .restart local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1, v12, v6}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 914
    :try_start_6c
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 917
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_2f

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_HTML_FLAGMENT_ID)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_87} :catch_88

    goto :goto_2f

    .line 918
    :catch_88
    move-exception v2

    .line 919
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 921
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_8d
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_c0

    move-object v7, p1

    .line 922
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 924
    .local v7, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :try_start_97
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 927
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_2f

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_URI_ID)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_b8} :catch_ba

    goto/16 :goto_2f

    .line 929
    :catch_ba
    move-exception v2

    .line 930
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2f

    .line 932
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_c0
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_ed

    move-object v4, p1

    .line 933
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 935
    .local v4, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :try_start_ca
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 938
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_2f

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_INTENT_ID)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e5} :catch_e7

    goto/16 :goto_2f

    .line 940
    :catch_e7
    move-exception v2

    .line 941
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2f

    .line 943
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :cond_ed
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_2f

    move-object v5, p1

    .line 944
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .line 945
    .local v5, "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v8

    .line 946
    .local v8, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 947
    .local v0, "N":I
    const/4 v1, 0x0

    .line 948
    .local v1, "clipData":Landroid/content/ClipData;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_101
    if-ge v3, v0, :cond_121

    .line 949
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 950
    .local v7, "uri":Landroid/net/Uri;
    if-nez v1, :cond_118

    .line 951
    iget-object v9, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v11, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 948
    :goto_115
    add-int/lit8 v3, v3, 0x1

    goto :goto_101

    .line 953
    :cond_118
    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v7}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_115

    .line 957
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_121
    :try_start_121
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    invoke-interface {v9, v1, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 958
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_2f

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_MULTIPLE_URI)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_133} :catch_135

    goto/16 :goto_2f

    .line 959
    :catch_135
    move-exception v2

    .line 960
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2f

    .line 964
    .end local v0    # "N":I
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v5    # "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    .end local v8    # "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_13b
    const/4 v9, 0x0

    goto/16 :goto_36
.end method

.method private updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 5
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 876
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_17

    if-eqz p1, :cond_17

    .line 878
    :try_start_6
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_11

    const-string v1, "ClipboardServiceEx"

    const-string v2, "change list..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_11
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_21

    .line 886
    :cond_17
    :goto_17
    if-eqz p1, :cond_20

    .line 887
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/sec/InternalClipboardExService;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 889
    :cond_20
    return-void

    .line 881
    :catch_21
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_17

    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    .line 522
    .local v0, "Result":Z
    :goto_9
    if-eqz v0, :cond_10

    .line 523
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_10
    return v0

    .line 521
    .end local v0    # "Result":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 10
    .param p1, "format"    # I

    .prologue
    const/4 v7, 0x1

    .line 554
    monitor-enter p0

    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 558
    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_1c

    .line 559
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 561
    :cond_16
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 562
    const/4 v4, 0x0

    monitor-exit p0

    .line 614
    :goto_1b
    return-object v4

    .line 566
    :cond_1c
    const/4 v2, 0x0

    .line 567
    .local v2, "iClipboardDataCount":I
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v4, :cond_39

    .line 569
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v4, :cond_3e

    .line 570
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    add-int v2, v4, v5

    .line 577
    :cond_39
    :goto_39
    if-ge v2, v7, :cond_45

    .line 578
    monitor-exit p0

    move-object v4, v0

    goto :goto_1b

    .line 573
    :cond_3e
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    goto :goto_39

    .line 581
    :cond_45
    const/4 v1, 0x0

    .line 585
    .local v1, "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->isServiceCallFromOther()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 586
    const-string v4, "ClipboardServiceEx"

    const-string v5, "InternalClipboardExService GetClipboardData() abnormal called!!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    monitor-exit p0

    move-object v4, v0

    goto :goto_1b

    .line 591
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_c3

    iget-boolean v4, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_PASTE_FLAG:Z

    if-eqz v4, :cond_c3

    .line 592
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    if-lez v4, :cond_b8

    .line 593
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 594
    const-string v4, "ClipboardServiceEx"

    const-string v5, "KNOX2 SYNC data has paste item & cbdata is SYNC item assign"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :goto_7c
    if-eqz v1, :cond_b4

    .line 607
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_a8

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItem id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", input id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_a8
    if-eq p1, v7, :cond_d5

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-eq v4, p1, :cond_d5

    .line 610
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 614
    :cond_b4
    :goto_b4
    monitor-exit p0

    move-object v4, v0

    goto/16 :goto_1b

    .line 596
    :cond_b8
    const-string v4, "ClipboardServiceEx"

    const-string v5, "KNOX2 SYNC data has not paste item so return null "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    monitor-exit p0

    move-object v4, v0

    goto/16 :goto_1b

    .line 601
    :cond_c3
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 602
    const-string v4, "ClipboardServiceEx"

    const-string v5, "original Copy and paste cdData"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 615
    .end local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "iClipboardDataCount":I
    .end local v3    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_d2
    move-exception v4

    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_3 .. :try_end_d4} :catchall_d2

    throw v4

    .line 612
    .restart local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "iClipboardDataCount":I
    .restart local v3    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_d5
    move-object v0, v1

    goto :goto_b4
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .registers 5
    .param p1, "format"    # I

    .prologue
    .line 500
    const-string v0, ""

    .line 502
    .local v0, "Result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 503
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "Result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 505
    .restart local v0    # "Result":Ljava/lang/String;
    :cond_1a
    return-object v0
.end method

.method public IsShowUIClipboardData()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1128
    const/4 v0, 0x0

    .line 1129
    .local v0, "Result":Z
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    .line 1131
    :cond_b
    return v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .registers 7
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 442
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .line 444
    .local v0, "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    :try_start_12
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 445
    :catch_16
    move-exception v1

    .line 446
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 449
    .end local v0    # "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 4
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 980
    monitor-enter p0

    .line 981
    :try_start_1
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 983
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v0, :cond_28

    .line 985
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 986
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->clipPickerDataList:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 991
    :goto_14
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 996
    :cond_1b
    :goto_1b
    monitor-exit p0

    .line 997
    return-void

    .line 989
    :cond_1d
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    goto :goto_14

    .line 996
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0

    .line 994
    :cond_28
    :try_start_28
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_25

    goto :goto_1b
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .registers 9
    .param p1, "formatName"    # Ljava/lang/String;

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 475
    .local v1, "Result":I
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 476
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    .line 477
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_1a
    :goto_1a
    return v1

    .line 479
    :cond_1b
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 480
    .local v0, "Keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 481
    .local v3, "iVal":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 482
    .local v4, "sValue":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_25

    .line 483
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 484
    goto :goto_1a
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 538
    .local v0, "Result":Z
    if-eqz v0, :cond_d

    .line 539
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 541
    :cond_d
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    .line 543
    :goto_16
    return v0

    .line 541
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z
    .registers 9
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 692
    if-nez p2, :cond_5

    move v0, v2

    .line 728
    :cond_4
    :goto_4
    return v0

    .line 695
    :cond_5
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "ClipboardServiceEx"

    const-string v4, "==================================================================="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_10
    const/4 v0, 0x0

    .line 698
    .local v0, "result":Z
    monitor-enter p0

    .line 699
    :try_start_12
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1d

    const-string v3, "ClipboardServiceEx"

    const-string v4, "----------------------------------------------------------------"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1d
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_28

    const-string v3, "ClipboardServiceEx"

    const-string v4, "in synchronized"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_28
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 703
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_3b

    .line 704
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 705
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 706
    monitor-exit p0

    move v0, v2

    goto :goto_4

    .line 711
    :cond_3b
    if-nez p2, :cond_40

    .line 712
    monitor-exit p0

    move v0, v2

    goto :goto_4

    .line 716
    :cond_40
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 717
    invoke-direct {p0, p2, p3}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V

    .line 718
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 719
    const/4 v0, 0x1

    .line 726
    :cond_4f
    :goto_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_12 .. :try_end_50} :catchall_78

    .line 727
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==================================================================="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 722
    :cond_6d
    :try_start_6d
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 723
    invoke-direct {p0, p2, p3}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V

    .line 724
    const/4 v0, 0x1

    goto :goto_4f

    .line 726
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_78
    move-exception v2

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_78

    throw v2
.end method

.method public SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 10
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 732
    if-nez p2, :cond_5

    .line 769
    :goto_4
    return v2

    .line 735
    :cond_5
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_10

    const-string v4, "ClipboardServiceEx"

    const-string v5, "==================================================================="

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_10
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1b

    const-string v4, "ClipboardServiceEx"

    const-string v5, "SetClipboardDataOriginalToEx"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_1b
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_3b

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetClipboardData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 740
    .local v0, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v0, :cond_51

    .line 742
    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-nez v4, :cond_51

    .line 744
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    goto :goto_4

    .line 751
    :cond_51
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/InternalClipboardExService$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/sec/InternalClipboardExService$4;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/ClipboardData;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 767
    .local v1, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 768
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_69

    const-string v2, "ClipboardServiceEx"

    const-string v4, "==================================================================="

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    move v2, v3

    .line 769
    goto :goto_4
.end method

.method public SetSyncClipboardData(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 665
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SetSyncClipboardData"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_b
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 667
    .local v0, "data":Landroid/sec/clipboard/data/list/ClipboardDataText;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/InternalClipboardExService$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/sec/InternalClipboardExService$3;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/list/ClipboardDataText;Ljava/lang/CharSequence;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 678
    .local v1, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 679
    const/4 v2, 0x1

    return v2
.end method

.method public ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1109
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "show ui clipboard dialog in service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1123
    :goto_19
    return-void

    .line 1118
    :cond_1a
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    .line 1119
    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1121
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1122
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_19
.end method

.method public UpdateClipboardDB(I)V
    .registers 4
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1298
    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    if-eq v0, p1, :cond_1a

    .line 1299
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    .line 1300
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->UpdateClipboardDB(I)V

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1303
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->UpdateClipboardDB(I)V

    .line 1307
    :cond_1a
    return-void
.end method

.method public UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 5
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->IsShowUIClipboardData()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1152
    :goto_7
    return-void

    .line 1146
    :cond_8
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    .line 1147
    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1149
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1150
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7
.end method

.method public callPasteMenuFromApp(I)V
    .registers 6
    .param p1, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1390
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callPasteMenuFromApp() in service. enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_1d
    if-nez p1, :cond_22

    .line 1392
    iput-boolean v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    .line 1398
    :cond_21
    :goto_21
    return-void

    .line 1393
    :cond_22
    if-ne p1, v3, :cond_28

    .line 1394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    goto :goto_21

    .line 1396
    :cond_28
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong param in setPastedFromApp() enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public dismissUIDataDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 1159
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1165
    return-void
.end method

.method public getClipedStrings(II)Ljava/util/ArrayList;
    .registers 15
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    .local v5, "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1314
    .local v0, "clipText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->isServiceCallFromOther()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1315
    const-string v10, "ClipboardServiceEx"

    const-string v11, "InternalClipboardExService getClipedStrings() abnormal called!!!"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_19
    :goto_19
    return-object v5

    .line 1321
    :cond_1a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget-object v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v10

    if-ge v3, v10, :cond_19

    .line 1322
    iget-object v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v10, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 1323
    .local v1, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_91

    move-object v8, v1

    .line 1324
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1325
    .local v8, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_54

    .line 1326
    if-nez p1, :cond_5d

    .line 1327
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_19

    .line 1366
    .end local v8    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_54
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_19

    .line 1321
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1332
    .restart local v8    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_5d
    new-instance v7, Landroid/util/secutil/SmartParser;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10, v11}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1333
    .local v7, "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v7}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v9

    .line 1334
    .local v9, "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v10

    if-lez v10, :cond_54

    .line 1335
    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1336
    .local v6, "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_7b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_54

    .line 1337
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_54

    .line 1336
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 1344
    .end local v4    # "idx":I
    .end local v6    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "parser":Landroid/util/secutil/SmartParser;
    .end local v8    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v9    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_91
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_54

    move-object v2, v1

    .line 1345
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 1346
    .local v2, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_54

    .line 1347
    if-nez p1, :cond_b6

    .line 1348
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1349
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, p2, :cond_54

    goto/16 :goto_19

    .line 1353
    :cond_b6
    new-instance v7, Landroid/util/secutil/SmartParser;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10, v11}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1354
    .restart local v7    # "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v7}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v9

    .line 1355
    .restart local v9    # "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v10

    if-lez v10, :cond_54

    .line 1356
    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1357
    .restart local v6    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .restart local v4    # "idx":I
    :goto_d0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_54

    .line 1358
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_54

    .line 1357
    add-int/lit8 v4, v4, 0x1

    goto :goto_d0
.end method

.method public getDataSize()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 640
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 641
    .local v0, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v0, :cond_17

    .line 642
    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-nez v2, :cond_17

    .line 644
    :cond_13
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 654
    :goto_16
    return v1

    .line 650
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 651
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_16

    .line 654
    :cond_2b
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    goto :goto_16
.end method

.method isKnoxTwoEnabled()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 140
    .local v4, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 141
    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 143
    .local v3, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 144
    .local v1, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 145
    .local v0, "currUser":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    if-eqz v3, :cond_3d

    invoke-virtual {v3, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 147
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3c

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Current user is a USER, hence return false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "currUser":I
    .end local v1    # "ident":J
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    :cond_3c
    :goto_3c
    return v5

    .line 150
    .restart local v0    # "currUser":I
    .restart local v1    # "ident":J
    .restart local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    :cond_3d
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_48

    const-string v5, "ClipboardServiceEx"

    const-string v6, "Current user is a persona, hence return true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_48
    const/4 v5, 0x1

    goto :goto_3c

    .line 154
    .end local v0    # "currUser":I
    .end local v1    # "ident":J
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    :cond_4a
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3c

    const-string v6, "ClipboardServiceEx"

    const-string v7, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public iscalledPasteMenuFromApp()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1384
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iscalledPasteMenuFromApp() in service. mIsCalledPasteApp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    return v0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1377
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V

    .line 1380
    :cond_10
    return-void
.end method

.method public showUIDataDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1169
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 1170
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_11
    :goto_11
    return-void

    .line 1175
    :cond_12
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11
.end method
