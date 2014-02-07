.class public Lcom/android/server/am/ToolkitManagerService;
.super Landroid/toolkit/IToolkitService$Stub;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;,
        Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;,
        Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;,
        Lcom/android/server/am/ToolkitManagerService$ReceiveData;,
        Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final INTENT_CATEGORY_MULTIWINDOW_TOOLKIT:Ljava/lang/String; = "android.intent.category.MULTIWINDOW_TOOLKIT"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "ToolkitManagerService"

.field public static final SERVICE_NAME:Ljava/lang/String; = "toolkitmanager"

.field private static final TAG:Ljava/lang/String; = "ToolkitManagerService"

.field static final TOOKIT_MODE_FLOATING:I = 0x0

.field static final TOOKIT_MODE_SNAP:I = 0x1

.field static final TOOKIT_UI_STATUS_HIDE:I = 0x0

.field static final TOOKIT_UI_STATUS_NONE:I = -0x1

.field static final TOOKIT_UI_STATUS_SHOW_ALL:I = 0x2

.field static final TOOKIT_UI_STATUS_SHOW_TAB:I = 0x1

.field private static final TOOLKIT_EVENT_ADD_TAB_ITEM:I = 0x4

.field private static final TOOLKIT_EVENT_CHANGE_CONFIG:I = 0x3

.field private static final TOOLKIT_EVENT_DESTROY:I = 0x8

.field private static final TOOLKIT_EVENT_HIDE_TOOLKITBAR:I = 0x2

.field private static final TOOLKIT_EVENT_REMOVE_TAB_ITEM:I = 0x5

.field private static final TOOLKIT_EVENT_REQUEST_FOCUS:I = 0x7

.field private static final TOOLKIT_EVENT_SEND_BUNDLE:I = 0x6

.field private static final TOOLKIT_EVENT_SEND_BUNDLE_DELAY_TIME:I = 0x1f4

.field private static final TOOLKIT_EVENT_SHOW_TOOLKITBAR:I = 0x0

.field private static final TOOLKIT_EVENT_SHOW_TOOLKITBAR_TAB:I = 0x1

.field private static final TOOLKIT_EXTRA:Ljava/lang/String; = "android.sec.toolkit"

.field private static final TOOLKIT_INIT_CATEGORY:Ljava/lang/String; = "android.intent.category.MULTIWINDOW_TOOLKIT_INIT"

.field static final TOOLKIT_ITEM_STATUS_DESTROY:I = 0x1

.field static final TOOLKIT_ITEM_STATUS_FOCUS:I = 0x2

.field static final TOOLKIT_ITEM_STATUS_FULL_SCREEN:I = 0x0

.field private static final TOOLKIT_PATH:Ljava/lang/String; = "/data/toolkit/"

.field private static final TOOLKIT_SAVE_FLAG_ALL:I = -0x1

.field private static final TOOLKIT_SAVE_FLAG_CONTENTS_RECT:I = 0x100

.field private static final TOOLKIT_SAVE_FLAG_FOCUSED_ITEM:I = 0x10000

.field private static final TOOLKIT_SAVE_FLAG_MODE:I = 0x1000

.field private static final TOOLKIT_SAVE_FLAG_TAB_LIST:I = 0x1

.field private static final TOOLKIT_SAVE_FLAG_TAB_NONE:I = 0x0

.field private static final TOOLKIT_SAVE_FLAG_UI_STATUS:I = 0x10

.field static final TOOLKIT_STATUS_CREATE:I = 0x0

.field static final TOOLKIT_STATUS_HIDE:I = 0x2

.field static final TOOLKIT_STATUS_IDLE:I = -0x1

.field static final TOOLKIT_STATUS_SHOW:I = 0x1


# instance fields
.field private final TOOLKIT_OPERATION_ADD:I

.field private final TOOLKIT_OPERATION_REMOVE:I

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/toolkit/IToolkitServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentsRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

.field private mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

.field private mIsEnabled:Z

.field private mMode:I

.field private mOriginalContentsRect:Landroid/graphics/Rect;

.field private final mPluginDataHandler:Landroid/os/Handler;

.field private mQueried:Z

.field private mShowingTab:Z

.field private mStatusChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

.field private final mTabWindowStatusChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

.field private mToolkitStatus:I

.field private mToolkitUiStatus:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Landroid/toolkit/IToolkitService$Stub;-><init>()V

    .line 85
    iput v1, p0, Lcom/android/server/am/ToolkitManagerService;->TOOLKIT_OPERATION_ADD:I

    .line 86
    iput v3, p0, Lcom/android/server/am/ToolkitManagerService;->TOOLKIT_OPERATION_REMOVE:I

    .line 139
    iput v2, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitStatus:I

    .line 142
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    .line 153
    iput v2, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    .line 158
    iput v3, p0, Lcom/android/server/am/ToolkitManagerService;->mMode:I

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 163
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    .line 169
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mQueried:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mIsEnabled:Z

    .line 1067
    new-instance v0, Lcom/android/server/am/ToolkitManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ToolkitManagerService$1;-><init>(Lcom/android/server/am/ToolkitManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    .line 1157
    new-instance v0, Lcom/android/server/am/ToolkitManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ToolkitManagerService$2;-><init>(Lcom/android/server/am/ToolkitManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindowStatusChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    .line 175
    return-void
.end method

.method private SendData(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "tabItem"    # Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .param p2, "type"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 854
    if-nez p1, :cond_4

    .line 879
    :goto_3
    return v4

    .line 858
    :cond_4
    if-eqz p1, :cond_39

    .line 859
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitManagerService;->findCallbackList(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Landroid/toolkit/IToolkitServiceCallback;

    move-result-object v0

    .line 860
    .local v0, "callback":Landroid/toolkit/IToolkitServiceCallback;
    if-eqz v0, :cond_39

    .line 862
    :try_start_c
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 863
    .local v3, "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equalPackage(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 864
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ToolkitTabDialog;->setFocusItem(Ljava/lang/Object;)V

    .line 865
    invoke-virtual {v3}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->requestFocus()Z

    .line 870
    .end local v3    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_2c
    invoke-interface {v0, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onReceiveBundle(ILandroid/os/Bundle;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2f} :catch_31

    .line 871
    const/4 v4, 0x1

    goto :goto_3

    .line 872
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_31
    move-exception v1

    .line 873
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ToolkitManagerService"

    const-string v6, "SendData"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    .end local v0    # "callback":Landroid/toolkit/IToolkitServiceCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_39
    const-string v5, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private SendMessage(ILjava/lang/Object;I)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayTime"    # I

    .prologue
    .line 883
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 884
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 885
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 886
    if-eqz p3, :cond_12

    .line 887
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 890
    :goto_11
    return-void

    .line 889
    :cond_12
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method

.method static synthetic access$1000(Lcom/android/server/am/ToolkitManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/ToolkitManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->notifyDestory()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/ToolkitManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/am/ToolkitManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/ToolkitManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->startEmptyActivity()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/Object;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitManagerService;->notifyTabItemChange(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/am/ToolkitManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/server/am/ToolkitManagerService;->mMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/am/ToolkitManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitTabDialog;)Lcom/android/server/am/ToolkitTabDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ToolkitManagerService;->SendData(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ToolkitManagerService;ILjava/lang/Object;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ToolkitManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitManagerService;->internalShowToolkit(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/ToolkitManagerService;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/am/ToolkitManagerService;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/am/ToolkitManagerService;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ToolkitManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    return-void
.end method

.method private findCallbackList(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Landroid/toolkit/IToolkitServiceCallback;
    .registers 11
    .param p1, "item"    # Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .prologue
    .line 915
    const/4 v4, 0x0

    .line 916
    .local v4, "rt":Landroid/toolkit/IToolkitServiceCallback;
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 917
    .local v1, "N":I
    if-lez v1, :cond_4f

    .line 918
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_4a

    .line 920
    :try_start_c
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {p1, v6}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 921
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/toolkit/IToolkitServiceCallback;

    move-object v4, v0

    .line 922
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_2b

    move-object v5, v4

    .line 932
    .end local v3    # "i":I
    .end local v4    # "rt":Landroid/toolkit/IToolkitServiceCallback;
    .local v5, "rt":Landroid/toolkit/IToolkitServiceCallback;
    :goto_2a
    return-object v5

    .line 925
    .end local v5    # "rt":Landroid/toolkit/IToolkitServiceCallback;
    .restart local v3    # "i":I
    .restart local v4    # "rt":Landroid/toolkit/IToolkitServiceCallback;
    :catch_2b
    move-exception v2

    .line 926
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "ToolkitManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 918
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 930
    :cond_4a
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .end local v3    # "i":I
    :cond_4f
    move-object v5, v4

    .line 932
    .end local v4    # "rt":Landroid/toolkit/IToolkitServiceCallback;
    .restart local v5    # "rt":Landroid/toolkit/IToolkitServiceCallback;
    goto :goto_2a
.end method

.method private findCallbackList(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 893
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 894
    .local v1, "N":I
    const/4 v4, 0x0

    .line 895
    .local v4, "rt":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    if-lez v1, :cond_51

    .line 896
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_4c

    .line 898
    :try_start_c
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object v4, v0

    .line 899
    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 900
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_23

    move-object v5, v4

    .line 910
    .end local v3    # "i":I
    :goto_22
    return-object v5

    .line 903
    .restart local v3    # "i":I
    :catch_23
    move-exception v2

    .line 904
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ToolkitManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 896
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 908
    :cond_4c
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 910
    .end local v3    # "i":I
    :cond_51
    const/4 v5, 0x0

    goto :goto_22
.end method

.method private internalShowToolkit(I)V
    .registers 8
    .param p1, "flag"    # I

    .prologue
    .line 936
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    if-eqz v3, :cond_a

    .line 937
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    .line 970
    :goto_9
    return-void

    .line 940
    :cond_a
    new-instance v3, Lcom/android/server/am/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    .line 943
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindowStatusChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;->setOnStatusChangeListener(Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;)V

    .line 946
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 947
    .local v2, "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->isPermanent()Z

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/am/ToolkitTabDialog;->addTab(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)Z

    goto :goto_20

    .line 951
    .end local v2    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_3a
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeConfiguration(Landroid/graphics/Rect;)V

    .line 958
    :try_start_41
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;->setFocusItem(Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_48} :catch_59

    .line 965
    :goto_48
    iget v3, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_61

    iget v3, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    if-eqz v3, :cond_61

    .line 966
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    iget v4, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_9

    .line 959
    :catch_59
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 961
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    goto :goto_48

    .line 968
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_61
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_9
.end method

.method private load()V
    .registers 18

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 620
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-nez v15, :cond_e

    .line 720
    :goto_d
    return-void

    .line 623
    :cond_e
    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/data/toolkit/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v9, "inputFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v15

    if-eqz v15, :cond_88

    .line 628
    :try_start_36
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v16, 0x4000

    move/from16 v0, v16

    invoke-direct {v12, v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 630
    .local v12, "str":Ljava/io/BufferedInputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 631
    .local v7, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 632
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 633
    .local v14, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v15, "UTF-8"

    invoke-interface {v14, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 634
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 635
    .local v6, "eventType":I
    :goto_59
    const/4 v15, 0x1

    if-eq v6, v15, :cond_1eb

    .line 636
    packed-switch v6, :pswitch_data_1f0

    .line 705
    :cond_5f
    :goto_5f
    :pswitch_5f
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_59

    .line 642
    :pswitch_64
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "STATUS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_91

    .line 643
    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I
    :try_end_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_7d} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_7d} :catch_ab
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_7d} :catch_110
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_7d} :catch_135

    goto :goto_5f

    .line 709
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "str":Ljava/io/BufferedInputStream;
    .end local v14    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7e
    move-exception v5

    .line 710
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_88
    :goto_88
    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 644
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "str":Ljava/io/BufferedInputStream;
    .restart local v14    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_91
    :try_start_91
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "MODE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b6

    .line 645
    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ToolkitManagerService;->mMode:I
    :try_end_aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_aa} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_aa} :catch_ab
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_aa} :catch_110
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_aa} :catch_135

    goto :goto_5f

    .line 711
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "str":Ljava/io/BufferedInputStream;
    .end local v14    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_ab
    move-exception v5

    .line 712
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    .line 646
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "str":Ljava/io/BufferedInputStream;
    .restart local v14    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_b6
    :try_start_b6
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "CONTENT_RECT"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15a

    .line 647
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    if-nez v15, :cond_d1

    .line 648
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    .line 650
    :cond_d1
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 651
    .local v1, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_d6
    if-ge v8, v1, :cond_5f

    .line 652
    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "attrName":Ljava/lang/String;
    const-string v15, "l"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f7

    .line 654
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 651
    :cond_f4
    :goto_f4
    add-int/lit8 v8, v8, 0x1

    goto :goto_d6

    .line 656
    :cond_f7
    const-string v15, "r"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11c

    .line 657
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I
    :try_end_10f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b6 .. :try_end_10f} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_10f} :catch_ab
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_10f} :catch_110
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_10f} :catch_135

    goto :goto_f4

    .line 713
    .end local v1    # "N":I
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "i":I
    .end local v12    # "str":Ljava/io/BufferedInputStream;
    .end local v14    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_110
    move-exception v5

    .line 714
    .local v5, "e":Ljava/io/IOException;
    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_88

    .line 659
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "N":I
    .restart local v2    # "attrName":Ljava/lang/String;
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "i":I
    .restart local v12    # "str":Ljava/io/BufferedInputStream;
    .restart local v14    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_11c
    :try_start_11c
    const-string v15, "t"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_141

    .line 660
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->top:I
    :try_end_134
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11c .. :try_end_134} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_11c .. :try_end_134} :catch_ab
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_134} :catch_110
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_134} :catch_135

    goto :goto_f4

    .line 715
    .end local v1    # "N":I
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "i":I
    .end local v12    # "str":Ljava/io/BufferedInputStream;
    .end local v14    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_135
    move-exception v5

    .line 716
    .local v5, "e":Ljava/lang/Exception;
    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_88

    .line 662
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "N":I
    .restart local v2    # "attrName":Ljava/lang/String;
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "i":I
    .restart local v12    # "str":Ljava/io/BufferedInputStream;
    .restart local v14    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_141
    :try_start_141
    const-string v15, "b"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f4

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    goto :goto_f4

    .line 667
    .end local v1    # "N":I
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_15a
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ITEM"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b9

    .line 668
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 669
    .restart local v1    # "N":I
    const/4 v11, 0x0

    .line 670
    .local v11, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 671
    .local v4, "className":Ljava/lang/String;
    const/4 v3, 0x0

    .line 672
    .local v3, "bPermanent":Z
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_16e
    if-ge v8, v1, :cond_1a6

    .line 673
    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 675
    .restart local v2    # "attrName":Ljava/lang/String;
    const-string v15, "p"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_183

    .line 676
    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    .line 672
    :cond_180
    :goto_180
    add-int/lit8 v8, v8, 0x1

    goto :goto_16e

    .line 677
    :cond_183
    const-string v15, "f"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_199

    .line 678
    const-string v15, "true"

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_180

    .line 679
    const/4 v3, 0x1

    goto :goto_180

    .line 681
    :cond_199
    const-string v15, "c"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_180

    .line 682
    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_180

    .line 685
    .end local v2    # "attrName":Ljava/lang/String;
    :cond_1a6
    new-instance v13, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .local v13, "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-virtual {v13, v3}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setPermanent(Z)V

    .line 687
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5f

    .line 688
    .end local v1    # "N":I
    .end local v3    # "bPermanent":Z
    .end local v4    # "className":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_1b9
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "FOCUSED"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5f

    .line 689
    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 690
    .local v10, "nFocused":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_5f

    .line 691
    if-gez v10, :cond_1db

    .line 692
    const/4 v10, 0x0

    .line 694
    :cond_1db
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    goto/16 :goto_5f

    .line 708
    .end local v10    # "nFocused":I
    :cond_1eb
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_141 .. :try_end_1ee} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_141 .. :try_end_1ee} :catch_ab
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_1ee} :catch_110
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_1ee} :catch_135

    goto/16 :goto_88

    .line 636
    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5f
        :pswitch_64
        :pswitch_5f
    .end packed-switch
.end method

.method private notifyCallbackChange(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 1057
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {p0, v2}, Lcom/android/server/am/ToolkitManagerService;->findCallbackList(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Landroid/toolkit/IToolkitServiceCallback;

    move-result-object v0

    .line 1059
    .local v0, "cb":Landroid/toolkit/IToolkitServiceCallback;
    if-eqz v0, :cond_b

    .line 1060
    :try_start_8
    invoke-interface {v0, p1, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onCallbackChange(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 1065
    :cond_b
    :goto_b
    return-void

    .line 1062
    :catch_c
    move-exception v1

    .line 1063
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method private notifyChangeUiStatus()V
    .registers 9

    .prologue
    .line 1003
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    .line 1004
    .local v6, "listener":Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    iget v7, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitStatus:I

    invoke-interface {v6, v7}, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;->onStatusChanged(I)V

    goto :goto_6

    .line 1007
    .end local v6    # "listener":Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    :cond_18
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1009
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1011
    .local v2, "cb":Landroid/toolkit/IToolkitServiceCallback;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v1, :cond_3a

    .line 1012
    :try_start_22
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/toolkit/IToolkitServiceCallback;

    move-object v2, v0

    .line 1013
    if-eqz v2, :cond_33

    .line 1014
    iget v7, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    invoke-interface {v2, v7}, Landroid/toolkit/IToolkitServiceCallback;->onShowStatusChange(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_36

    .line 1011
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1017
    :catch_36
    move-exception v3

    .line 1018
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1020
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3a
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1021
    return-void
.end method

.method private notifyContentsRect()V
    .registers 11

    .prologue
    .line 1031
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v9}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1032
    .local v5, "fullRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v9}, Lcom/android/server/am/ToolkitTabDialog;->getContentsRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1034
    .local v3, "contentsRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    .line 1035
    .local v8, "listener":Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    invoke-interface {v8, v5, v3}, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;->onSizeChange(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_12

    .line 1038
    .end local v8    # "listener":Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    :cond_22
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1040
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1042
    .local v2, "cb":Landroid/toolkit/IToolkitServiceCallback;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    if-ge v6, v1, :cond_42

    .line 1043
    :try_start_2c
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/toolkit/IToolkitServiceCallback;

    move-object v2, v0

    .line 1044
    if-eqz v2, :cond_3b

    .line 1045
    invoke-interface {v2, v5}, Landroid/toolkit/IToolkitServiceCallback;->onSizeChange(Landroid/graphics/Rect;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3b} :catch_3e

    .line 1042
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 1048
    :catch_3e
    move-exception v4

    .line 1049
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1051
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_42
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1053
    return-void
.end method

.method private notifyDestory()V
    .registers 9

    .prologue
    .line 991
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 992
    .local v0, "N":I
    new-array v6, v0, [I

    .line 993
    .local v6, "taskRecordList":[I
    const/4 v1, 0x0

    .line 995
    .local v1, "i":I
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 996
    .local v4, "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getTaskRecordId()I

    move-result v7

    aput v7, v6, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_f

    .line 998
    .end local v4    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_25
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    .line 999
    .local v5, "listener":Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    invoke-interface {v5, v6}, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;->onDestroy([I)V

    goto :goto_2b

    .line 1001
    .end local v5    # "listener":Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    :cond_3b
    return-void
.end method

.method private notifyTabItemChange(Ljava/lang/Object;I)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "itemStatus"    # I

    .prologue
    .line 1024
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 1025
    .local v0, "focusedItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    .line 1026
    .local v2, "listener":Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    invoke-virtual {v0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getTaskRecordId()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;->onTabItemChange(II)V

    goto :goto_9

    .line 1028
    .end local v2    # "listener":Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    :cond_1d
    return-void
.end method

.method private save(I)V
    .registers 17
    .param p1, "flag"    # I

    .prologue
    .line 729
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v1, 0x0

    .line 730
    .local v1, "N":I
    const/4 v4, 0x0

    .line 731
    .local v4, "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    const/4 v5, 0x0

    .line 732
    .local v5, "nFocusedItem":I
    const/4 v8, 0x0

    .line 733
    .local v8, "outputfile":Ljava/io/File;
    const/4 v6, 0x0

    .line 734
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    const-string v11, "ToolkitManagerService"

    const-string v12, "save"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-nez v11, :cond_12

    .line 814
    :cond_11
    :goto_11
    return-void

    .line 740
    :cond_12
    :try_start_12
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/toolkit/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v12}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_30} :catch_1f3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_30} :catch_1d3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_30} :catch_1dc

    .line 741
    .end local v8    # "outputfile":Ljava/io/File;
    .local v9, "outputfile":Ljava/io/File;
    :try_start_30
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 742
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_3c} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3c} :catch_1ec
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_1e5

    .line 744
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .local v7, "outputStream":Ljava/io/FileOutputStream;
    :try_start_3c
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    .line 745
    .local v10, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "UTF-8"

    invoke-interface {v10, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 746
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 748
    const/4 v11, 0x0

    const-string v12, "TOOLKIT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 750
    const/4 v11, 0x0

    const-string v12, "STATUS"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 751
    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 752
    const/4 v11, 0x0

    const-string v12, "STATUS"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 754
    const/4 v11, 0x0

    const-string v12, "MODE"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 755
    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/android/server/am/ToolkitManagerService;->mMode:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 756
    const/4 v11, 0x0

    const-string v12, "MODE"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 759
    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_13f

    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-eqz v11, :cond_13f

    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-eqz v11, :cond_13f

    .line 760
    const/4 v11, 0x0

    const-string v12, "CONTENTS_RECT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    const/4 v11, 0x0

    const-string v12, "l"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    const/4 v11, 0x0

    const-string v12, "r"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    const/4 v11, 0x0

    const-string v12, "t"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    const/4 v11, 0x0

    const-string v12, "b"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    const/4 v11, 0x0

    const-string v12, "CONTENTS_RECT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 775
    :goto_dc
    const/4 v11, 0x0

    const-string v12, "APP_LIST"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 776
    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 777
    const/4 v3, 0x0

    :goto_e9
    if-ge v3, v1, :cond_1a5

    .line 778
    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object v4, v0

    .line 779
    const/4 v11, 0x0

    const-string v12, "ITEM"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 780
    const/4 v11, 0x0

    const-string v12, "p"

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 781
    const/4 v11, 0x0

    const-string v12, "f"

    new-instance v13, Ljava/lang/Boolean;

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->isPermanent()Z

    move-result v14

    invoke-direct {v13, v14}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v13}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 782
    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getClassName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_128

    .line 783
    const/4 v11, 0x0

    const-string v12, "c"

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 785
    :cond_128
    const/4 v11, 0x0

    const-string v12, "ITEM"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    const/4 v11, -0x1

    if-ne v5, v11, :cond_13c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13c

    .line 787
    move v5, v3

    .line 777
    :cond_13c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    .line 767
    :cond_13f
    const/4 v11, 0x0

    const-string v12, "CONTENTS_RECT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    const/4 v11, 0x0

    const-string v12, "l"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 769
    const/4 v11, 0x0

    const-string v12, "r"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 770
    const/4 v11, 0x0

    const-string v12, "t"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    const/4 v11, 0x0

    const-string v12, "b"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 772
    const/4 v11, 0x0

    const-string v12, "CONTENTS_RECT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_183
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_183} :catch_185
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_183} :catch_1ef
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_183} :catch_1e8

    goto/16 :goto_dc

    .line 800
    .end local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_185
    move-exception v2

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 801
    .end local v9    # "outputfile":Ljava/io/File;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "outputfile":Ljava/io/File;
    :goto_188
    const-string v11, "ToolkitManagerService"

    const-string v12, "save"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_18f
    move/from16 v0, p1

    and-int/lit16 v11, v0, 0x100

    const/16 v12, 0x100

    if-ne v11, v12, :cond_19a

    .line 809
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->notifyContentsRect()V

    .line 811
    :cond_19a
    and-int/lit8 v11, p1, 0x10

    const/16 v12, 0x10

    if-ne v11, v12, :cond_11

    .line 812
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->notifyChangeUiStatus()V

    goto/16 :goto_11

    .line 790
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .end local v8    # "outputfile":Ljava/io/File;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputfile":Ljava/io/File;
    .restart local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1a5
    const/4 v11, 0x0

    :try_start_1a6
    const-string v12, "APP_LIST"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 792
    const/4 v11, 0x0

    const-string v12, "FOCUSED"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 793
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    const/4 v11, 0x0

    const-string v12, "FOCUSED"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 796
    const/4 v11, 0x0

    const-string v12, "TOOLKIT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 797
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 798
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 799
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d0
    .catch Ljava/io/FileNotFoundException; {:try_start_1a6 .. :try_end_1d0} :catch_185
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1d0} :catch_1ef
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1d0} :catch_1e8

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 806
    .end local v9    # "outputfile":Ljava/io/File;
    .restart local v8    # "outputfile":Ljava/io/File;
    goto :goto_18f

    .line 802
    .end local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1d3
    move-exception v2

    .line 803
    .local v2, "e":Ljava/io/IOException;
    :goto_1d4
    const-string v11, "ToolkitManagerService"

    const-string v12, "save"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18f

    .line 804
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1dc
    move-exception v2

    .line 805
    .local v2, "e":Ljava/lang/Exception;
    :goto_1dd
    const-string v11, "ToolkitManagerService"

    const-string v12, "save"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18f

    .line 804
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "outputfile":Ljava/io/File;
    .restart local v9    # "outputfile":Ljava/io/File;
    :catch_1e5
    move-exception v2

    move-object v8, v9

    .end local v9    # "outputfile":Ljava/io/File;
    .restart local v8    # "outputfile":Ljava/io/File;
    goto :goto_1dd

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .end local v8    # "outputfile":Ljava/io/File;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputfile":Ljava/io/File;
    :catch_1e8
    move-exception v2

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "outputfile":Ljava/io/File;
    .restart local v8    # "outputfile":Ljava/io/File;
    goto :goto_1dd

    .line 802
    .end local v8    # "outputfile":Ljava/io/File;
    .restart local v9    # "outputfile":Ljava/io/File;
    :catch_1ec
    move-exception v2

    move-object v8, v9

    .end local v9    # "outputfile":Ljava/io/File;
    .restart local v8    # "outputfile":Ljava/io/File;
    goto :goto_1d4

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .end local v8    # "outputfile":Ljava/io/File;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputfile":Ljava/io/File;
    :catch_1ef
    move-exception v2

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "outputfile":Ljava/io/File;
    .restart local v8    # "outputfile":Ljava/io/File;
    goto :goto_1d4

    .line 800
    :catch_1f3
    move-exception v2

    goto :goto_188

    .end local v8    # "outputfile":Ljava/io/File;
    .restart local v9    # "outputfile":Ljava/io/File;
    :catch_1f5
    move-exception v2

    move-object v8, v9

    .end local v9    # "outputfile":Ljava/io/File;
    .restart local v8    # "outputfile":Ljava/io/File;
    goto :goto_188
.end method

.method private setStatus(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 973
    iget v0, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitStatus:I

    if-ne v0, p1, :cond_5

    .line 977
    :goto_4
    return-void

    .line 976
    :cond_5
    iput p1, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitStatus:I

    goto :goto_4
.end method

.method private startEmptyActivity()V
    .registers 4

    .prologue
    .line 980
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 981
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.MULTIWINDOW_TOOLKIT_INIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v2, 0x2002010

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 986
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 988
    const-string v1, "ToolkitManagerService"

    const-string v2, "The empty application is run."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method


# virtual methods
.method public addDefaultPluginApplication(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "bSave"    # Z
    .param p4, "permanent"    # Z

    .prologue
    const/4 v1, 0x1

    .line 376
    if-eqz p1, :cond_36

    .line 377
    new-instance v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .local v0, "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-virtual {v0, p4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setPermanent(Z)V

    .line 379
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 380
    const-string v1, "ToolkitManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v1, 0x0

    .line 388
    .end local v0    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_30
    :goto_30
    return v1

    .line 383
    .restart local v0    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_31
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v0    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_36
    if-eqz p3, :cond_30

    .line 386
    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    goto :goto_30
.end method

.method addOnStatusChangeListener(Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method public addPluginTaskRecord(Lcom/android/server/am/TaskRecord;)Z
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 483
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-nez v7, :cond_e

    .line 484
    const-string v6, "ToolkitManagerService"

    const-string v7, "realActivity is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_d
    :goto_d
    return v5

    .line 488
    :cond_e
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "packageName":Ljava/lang/String;
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "className":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v4, p0, v2, v0, v7}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 495
    .local v4, "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    const-string v7, "com.sec.android.app.FlashBarService"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 499
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 500
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 501
    .local v3, "tabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 502
    # getter for: Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->access$100(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setTaskRecordId(I)V

    .end local v3    # "tabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_50
    move v5, v6

    .line 506
    goto :goto_d

    .line 509
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_52
    const/4 v7, 0x4

    new-instance v8, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;

    invoke-direct {v8, p0, v4, v6}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;-><init>(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;Z)V

    invoke-direct {p0, v7, v8, v5}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    .line 510
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-direct {p0, v6}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    move v5, v6

    .line 513
    goto :goto_d
.end method

.method changeContentsSize(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 577
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    .line 578
    return-void
.end method

.method public checkToolkitTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 8
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v2, 0x1

    .line 178
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-eqz v3, :cond_1e

    .line 179
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 192
    :goto_1d
    return v2

    .line 184
    :cond_1e
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4b

    .line 185
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 186
    .local v1, "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_28

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_1d

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_4b
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getToolkitBarStatus()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    iget v0, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    return v0
.end method

.method public getToolkitTabRect()Landroid/graphics/Rect;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitManagerService;->isShowing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 251
    :cond_a
    const/4 v0, 0x0

    .line 253
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_b
.end method

.method public hideToolkitBar()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    .line 233
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 466
    iget-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mQueried:Z

    if-nez v1, :cond_1c

    .line 467
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mQueried:Z

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 470
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 472
    :cond_12
    if-eqz v0, :cond_1f

    .line 473
    const-string v1, "com.sec.feature.multiwindow.toolkit"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mIsEnabled:Z

    .line 479
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1c
    :goto_1c
    iget-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mIsEnabled:Z

    return v1

    .line 475
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1f
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.toolkit"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mIsEnabled:Z

    goto :goto_1c
.end method

.method public isShowing()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 452
    if-nez p1, :cond_15

    .line 453
    const-string v0, "ToolkitManagerService"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_9
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    .line 462
    const-string v0, "toolkitmanager"

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 463
    :goto_14
    return-void

    .line 455
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 456
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow.toolkit"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14
.end method

.method public registerCallback(Ljava/lang/String;Ljava/lang/String;Landroid/toolkit/IToolkitServiceCallback;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/toolkit/IToolkitServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "flag":Z
    if-eqz p3, :cond_23

    .line 334
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, p3, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    .line 335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 336
    .local v1, "origId":J
    const/4 v3, 0x0

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/am/ToolkitManagerService;->notifyCallbackChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    if-nez v0, :cond_23

    .line 339
    const-string v3, "ToolkitManagerService"

    const-string v4, "registerCallback failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v1    # "origId":J
    :cond_23
    return v0
.end method

.method public removeAllPackageList()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    .line 553
    return-void
.end method

.method public removeDefaultPluginApplication(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "bSave"    # Z

    .prologue
    const/4 v1, 0x1

    .line 394
    if-eqz p1, :cond_33

    .line 395
    new-instance v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .local v0, "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 398
    const-string v1, "ToolkitManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, 0x0

    .line 406
    .end local v0    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_2d
    :goto_2d
    return v1

    .line 401
    .restart local v0    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_2e
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 403
    .end local v0    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_33
    if-eqz p3, :cond_2d

    .line 404
    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    goto :goto_2d
.end method

.method removeOnStatusChangeListener(Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 586
    return-void
.end method

.method public removePluginTaskRecord(Lcom/android/server/am/TaskRecord;)Z
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 519
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-nez v7, :cond_e

    .line 520
    const-string v6, "ToolkitManagerService"

    const-string v7, "realActivity is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_d
    :goto_d
    return v5

    .line 523
    :cond_e
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-nez v7, :cond_14

    move v5, v6

    .line 524
    goto :goto_d

    .line 526
    :cond_14
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "packageName":Ljava/lang/String;
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v3, p0, v2, v0, v7}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 531
    .local v3, "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 532
    .local v4, "value":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-virtual {v4, v3}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 535
    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->destroyApplication()V

    .line 537
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v5}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    .line 538
    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    move v5, v6

    .line 540
    goto :goto_d
.end method

.method public sendBundle(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v8, 0x0

    .line 266
    .local v8, "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    if-nez p1, :cond_2b

    .line 267
    iget-object v8, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 268
    if-nez v8, :cond_5b

    .line 269
    const-string v9, "ToolkitManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intent is null. And Host is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Intent is null. And Host is null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 271
    const/4 v9, 0x0

    .line 301
    :goto_2a
    return v9

    .line 274
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 275
    .local v5, "origId":J
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 277
    .local v1, "componentName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 278
    .local v0, "className":Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 279
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_3e
    invoke-direct {p0, v7, v0}, Lcom/android/server/am/ToolkitManagerService;->findCallbackList(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-result-object v8

    .line 282
    if-nez v8, :cond_68

    .line 284
    new-instance v8, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .end local v8    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-direct {v8, p0, p1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Intent;)V

    .line 285
    .restart local v8    # "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-virtual {v8}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->makeIntent()Landroid/content/Intent;

    move-result-object v4

    .line 286
    .local v4, "newIntent":Landroid/content/Intent;
    const-string v9, "android.sec.toolkit"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    .end local v4    # "newIntent":Landroid/content/Intent;
    :goto_58
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "origId":J
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_5b
    const/4 v9, 0x6

    new-instance v10, Lcom/android/server/am/ToolkitManagerService$ReceiveData;

    invoke-direct {v10, p0, v8, p2, p3}, Lcom/android/server/am/ToolkitManagerService$ReceiveData;-><init>(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)V

    const/16 v11, 0x1f4

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    .line 301
    const/4 v9, 0x1

    goto :goto_2a

    .line 289
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v5    # "origId":J
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_68
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6e
    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 290
    .local v3, "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-virtual {v3, v8}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equalPackage(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 291
    move-object v8, v3

    goto :goto_6e

    .line 294
    .end local v3    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :cond_82
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-direct {p0, v9, v8, v10}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    goto :goto_58
.end method

.method public sendBundleImmediate(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "binderCache"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v1, 0x0

    .line 309
    .local v1, "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    if-eqz p1, :cond_25

    .line 310
    new-instance v1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .end local v1    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Intent;)V

    .line 315
    .restart local v1    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :goto_8
    if-eqz v1, :cond_28

    .line 316
    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->findCallbackList(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Landroid/toolkit/IToolkitServiceCallback;

    move-result-object v0

    .line 317
    .local v0, "callback":Landroid/toolkit/IToolkitServiceCallback;
    if-eqz v0, :cond_28

    .line 318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 319
    .local v2, "origId":J
    invoke-interface {v0, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onReceiveBundleImmediate(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 320
    .local v4, "out":Landroid/os/Bundle;
    const-string v5, "ToolkitTargetBinder"

    invoke-interface {v0}, Landroid/toolkit/IToolkitServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    .end local v0    # "callback":Landroid/toolkit/IToolkitServiceCallback;
    .end local v2    # "origId":J
    .end local v4    # "out":Landroid/os/Bundle;
    :goto_24
    return-object v4

    .line 312
    :cond_25
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    goto :goto_8

    .line 325
    :cond_28
    const-string v5, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v4, 0x0

    goto :goto_24
.end method

.method public setHostPackageName(Ljava/lang/String;Ljava/lang/String;Landroid/toolkit/IToolkitServiceCallback;)V
    .registers 9
    .param p1, "hostPackageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/toolkit/IToolkitServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 412
    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 413
    iput-boolean v4, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    .line 414
    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    .line 417
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    .line 419
    :cond_10
    const-string v1, "ToolkitManagerService"

    const-string v2, "setHostPackageName packageName is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 422
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitManagerService;->hideToolkitBar()Z

    .line 423
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    .line 424
    const/16 v1, 0x8

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    .line 447
    :cond_25
    :goto_25
    return-void

    .line 428
    :cond_26
    new-instance v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    .local v0, "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 434
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 435
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 437
    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 439
    invoke-interface {p3}, Landroid/toolkit/IToolkitServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;-><init>(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$1;)V

    invoke-interface {v1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 441
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v1, p3, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 442
    const-string v1, "ToolkitManagerService"

    const-string v2, "registerCallback failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_5f
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->load()V

    .line 446
    invoke-direct {p0, v4}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    goto :goto_25
.end method

.method public showToolkitBar(I)Z
    .registers 7
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 197
    iput-boolean v4, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_16

    .line 202
    :cond_13
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->startEmptyActivity()V

    .line 204
    :cond_16
    packed-switch p1, :pswitch_data_5a

    .line 210
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    :goto_1f
    if-eq p1, v4, :cond_4c

    .line 216
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_4c

    .line 217
    :cond_35
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_4c

    .line 218
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 223
    :cond_4c
    invoke-direct {p0, v4}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    .line 224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    return v4

    .line 206
    :pswitch_53
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1f

    .line 204
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
    .end packed-switch
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 557
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v4, p0, p1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Intent;)V

    .line 562
    .local v4, "toolkitTabItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 563
    .local v1, "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-virtual {v4, v1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equalPackage(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 564
    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-direct {p0, v5, v1, v6}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    .line 572
    .end local v1    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    :goto_26
    return-void

    .line 569
    :cond_27
    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 570
    .local v2, "newIntent":Landroid/content/Intent;
    const-string v5, "android.sec.toolkit"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 571
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_26
.end method

.method public unregisterCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 348
    if-eqz p1, :cond_45

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "cb":Landroid/toolkit/IToolkitServiceCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 352
    .local v4, "origId":J
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 353
    .local v0, "N":I
    new-instance v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v3, "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    if-lez v0, :cond_3d

    .line 355
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_2e

    .line 356
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v3, v6}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 357
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    .end local v1    # "cb":Landroid/toolkit/IToolkitServiceCallback;
    check-cast v1, Landroid/toolkit/IToolkitServiceCallback;

    .line 362
    .restart local v1    # "cb":Landroid/toolkit/IToolkitServiceCallback;
    :cond_2e
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 363
    if-eqz v1, :cond_3d

    .line 364
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 365
    invoke-direct {p0, v7, p1, p2}, Lcom/android/server/am/ToolkitManagerService;->notifyCallbackChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v2    # "i":I
    :cond_3d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    .line 371
    .end local v0    # "N":I
    .end local v1    # "cb":Landroid/toolkit/IToolkitServiceCallback;
    .end local v3    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .end local v4    # "origId":J
    :goto_41
    return v6

    .line 355
    .restart local v0    # "N":I
    .restart local v1    # "cb":Landroid/toolkit/IToolkitServiceCallback;
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .restart local v4    # "origId":J
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 371
    .end local v0    # "N":I
    .end local v1    # "cb":Landroid/toolkit/IToolkitServiceCallback;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .end local v4    # "origId":J
    :cond_45
    const/4 v6, 0x0

    goto :goto_41
.end method
