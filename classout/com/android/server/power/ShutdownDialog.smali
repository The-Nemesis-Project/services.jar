.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$RunningCheckable;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# instance fields
.field private final BUFFER_SIZE:I

.field private final MSG_LOAD_FINISH:I

.field private final MSG_UPDATE_DELAY:I

.field private final MSG_UPDATE_FRAME:I

.field private final PATH_COVER_POSTFIX:Ljava/lang/String;

.field private final PATH_OLD_SHUTDOWNIMG:Ljava/lang/String;

.field private final PATH_SHUTDOWNIMG:Ljava/lang/String;

.field private final PATH_SHUTDOWNIMG_DYNAMICCSC:Ljava/lang/String;

.field private final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String;

.field private final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String;

.field private final PATH_SHUTDOWN_AFTER:Ljava/lang/String;

.field private final PATH_SHUTDOWN_BEFORE:Ljava/lang/String;

.field private final PATH_SHUTDOWN_LOOP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final bitmapQ:[Landroid/graphics/Bitmap;

.field private bitmapQFront:I

.field private bitmapQRear:I

.field private final coverQmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private final drawBufferLock:Ljava/lang/Object;

.field private final logHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mLogString:Ljava/lang/StringBuffer;

.field private mLogView:Landroid/widget/TextView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private final mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private final mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private final qmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 130
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 85
    const-string v0, "ShutdownDialog"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->TAG:Ljava/lang/String;

    .line 86
    const-string v0, "//system/media/shutdown.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG:Ljava/lang/String;

    .line 87
    const-string v0, "//system/media/shutdownbefore.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWN_BEFORE:Ljava/lang/String;

    .line 88
    const-string v0, "//system/media/shutdownafter.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWN_AFTER:Ljava/lang/String;

    .line 89
    const-string v0, "//system/media/shutdownloop.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWN_LOOP:Ljava/lang/String;

    .line 90
    const-string v0, "//system/media/video/shutdown/shutdown.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_OLD_SHUTDOWNIMG:Ljava/lang/String;

    .line 92
    const-string v0, "//data/data/com.samsung.snmc.dynamiccsc/files/shutdown.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_DYNAMICCSC:Ljava/lang/String;

    .line 94
    const-string v0, "//system/csc_contents/shutdown.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String;

    .line 95
    const-string v0, "//system/csc_contents/PowerOff.ogg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String;

    .line 96
    const-string v0, ".cover"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_COVER_POSTFIX:Ljava/lang/String;

    .line 100
    iput v1, p0, Lcom/android/server/power/ShutdownDialog;->BUFFER_SIZE:I

    .line 101
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 102
    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    .line 103
    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/ShutdownDialog;->MSG_LOAD_FINISH:I

    .line 109
    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->MSG_UPDATE_FRAME:I

    .line 110
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/power/ShutdownDialog;->MSG_UPDATE_DELAY:I

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    .line 113
    new-instance v0, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    .line 125
    new-instance v0, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    .line 126
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 134
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/server/power/ShutdownDialog;->setCancelable(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7e5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/android/server/power/ShutdownDialog$DrawState;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/power/ShutdownDialog;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createDefaultQmgPlayList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->getSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 625
    const/4 v1, 0x0

    .line 635
    :goto_c
    return v1

    .line 627
    :cond_d
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/LibQmg;

    invoke-direct {v2, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".cover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 630
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 631
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/LibQmg;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :goto_3f
    const/4 v1, 0x1

    goto :goto_c

    .line 633
    :cond_41
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method private createDefaultQmgPlayList()V
    .registers 5

    .prologue
    .line 639
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 640
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 641
    const/4 v1, 0x0

    .line 642
    .local v1, "imei_mps_code":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_2d

    .line 644
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "//system/media/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_shutdown.qmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 646
    .local v0, "chameleonPath":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 673
    .end local v0    # "chameleonPath":Ljava/lang/StringBuffer;
    :cond_2c
    :goto_2c
    return-void

    .line 651
    :cond_2d
    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 654
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_DynamicCSCFeature"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "//data/data/com.samsung.snmc.dynamiccsc/files/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 660
    :cond_49
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 663
    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/shutdown.qmg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 665
    const-string v2, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 666
    const-string v2, "//system/media/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 667
    const-string v2, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    goto :goto_2c

    .line 670
    :cond_6e
    const-string v2, "//system/media/shutdownloop.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_2c
.end method

.method private getChameleonCode()Ljava/lang/String;
    .registers 8

    .prologue
    .line 552
    new-instance v4, Ljava/io/File;

    const-string v5, "/carrier/chameleon.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    .line 553
    const/4 v1, 0x0

    .line 577
    :cond_e
    :goto_e
    return-object v1

    .line 556
    :cond_f
    const-string v4, "ShutdownDialog"

    const-string v5, "Power off sound CHAMELEON is activated"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v1, 0x0

    .line 558
    .local v1, "imei_mps_code":Ljava/lang/String;
    const/4 v2, 0x0

    .line 560
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_18
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/efs/imei/mps_code.dat"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_2f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_47
    .catchall {:try_start_18 .. :try_end_24} :catchall_5c

    .line 561
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_24
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_27} :catch_7b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_78
    .catchall {:try_start_24 .. :try_end_27} :catchall_75

    move-result-object v1

    .line 570
    if-eqz v3, :cond_2d

    .line 571
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_6c

    :cond_2d
    :goto_2d
    move-object v2, v3

    .line 576
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_e

    .line 562
    :catch_2f
    move-exception v0

    .line 563
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_30
    :try_start_30
    const-string v4, "ShutdownDialog"

    const-string v5, "read error : imei mps_code"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_5c

    .line 564
    const/4 v1, 0x0

    .line 570
    if-eqz v2, :cond_e

    .line 571
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_e

    .line 573
    :catch_3e
    move-exception v0

    .line 574
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "ShutdownDialog"

    const-string v5, "FileReader close exception"

    :goto_43
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 565
    .end local v0    # "e":Ljava/io/IOException;
    :catch_47
    move-exception v0

    .line 566
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_48
    :try_start_48
    const-string v4, "ShutdownDialog"

    const-string v5, "read error : imei mps_code"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_5c

    .line 567
    const/4 v1, 0x0

    .line 570
    if-eqz v2, :cond_e

    .line 571
    :try_start_52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_e

    .line 573
    :catch_56
    move-exception v0

    .line 574
    const-string v4, "ShutdownDialog"

    const-string v5, "FileReader close exception"

    goto :goto_43

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5c
    move-exception v4

    .line 570
    :goto_5d
    if-eqz v2, :cond_62

    .line 571
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 569
    :cond_62
    :goto_62
    throw v4

    .line 573
    :catch_63
    move-exception v0

    .line 574
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "ShutdownDialog"

    const-string v6, "FileReader close exception"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    .line 573
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_6c
    move-exception v0

    .line 574
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "ShutdownDialog"

    const-string v5, "FileReader close exception"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_75
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_5d

    .line 565
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_78
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_48

    .line 562
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_7b
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_30
.end method

.method private getSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 581
    if-eqz p1, :cond_e

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 620
    .end local p1    # "soundPath":Ljava/lang/String;
    :goto_d
    return-object p1

    .line 586
    .restart local p1    # "soundPath":Ljava/lang/String;
    :cond_e
    const-string v2, "//system/media/audio/ui/shutting_down.ogg"

    .line 587
    .local v2, "talkBackPath":Ljava/lang/String;
    const-string v3, "VZW"

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_32

    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/audio/ui/shutting_down.ogg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 590
    const-string p1, "//system/media/audio/ui/shutting_down.ogg"

    goto :goto_d

    .line 606
    :cond_32
    new-instance v3, Ljava/io/File;

    const-string v4, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 607
    const-string p1, "//system/csc_contents/PowerOff.ogg"

    goto :goto_d

    .line 610
    :cond_42
    const-string v1, "//system/media/audio/ui/PowerOff.wav"

    .line 611
    .local v1, "poweroff_wav":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 612
    const-string p1, "//system/media/audio/ui/PowerOff.wav"

    goto :goto_d

    .line 615
    :cond_54
    const-string v0, "//system/media/audio/ui/PowerOff.ogg"

    .line 616
    .local v0, "poweroff_ogg":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 617
    const-string p1, "//system/media/audio/ui/PowerOff.ogg"

    goto :goto_d

    .line 620
    :cond_66
    const/4 p1, 0x0

    goto :goto_d
.end method

.method private isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 716
    const/16 v1, 0x3a

    .line 717
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 718
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 720
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_19

    .line 723
    const-string v5, ""

    .line 726
    :cond_19
    move-object v2, v6

    .line 727
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 728
    :cond_1d
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 729
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 731
    .local v4, "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_1d

    .line 732
    const-string v7, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 733
    const/4 v7, 0x1

    .line 736
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :goto_3a
    return v7

    :cond_3b
    const/4 v7, 0x0

    goto :goto_3a
.end method


# virtual methods
.method public appendTextLog(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 694
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 695
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 696
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ShutdownDialog"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 698
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    return-void
.end method

.method public drawState()I
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkStart()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x12c

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public existAnim()Z
    .registers 2

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createDefaultQmgPlayList()V

    .line 704
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 153
    const-string v2, "ShutdownDialog"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 157
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 162
    .local v1, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    .line 168
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 169
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v2, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 185
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 186
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 191
    return-void
.end method

.method public prepare()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 708
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0, v1, v1}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "anim"    # Ljava/lang/String;
    .param p2, "sound"    # Ljava/lang/String;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0, p1, p2}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public prepareBootup()V
    .registers 4

    .prologue
    .line 741
    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    const-string v1, "/system/media/warmboot.qmg"

    const-string v2, "/system/media/audio/ui/PowerOn.ogg"

    invoke-interface {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 753
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .registers 11
    .param p1, "timeout"    # I

    .prologue
    .line 676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-int/lit16 v7, p1, 0x3e8

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 677
    .local v3, "endTime":J
    :goto_9
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v5}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 678
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 679
    .local v0, "delay":J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_26

    .line 680
    const-string v5, "ShutdownDialog"

    const-string v6, "!@Animation finish wait timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v0    # "delay":J
    :cond_24
    const/4 v5, 0x1

    return v5

    .line 683
    .restart local v0    # "delay":J
    :cond_26
    const-string v5, "ShutdownDialog"

    const-string v6, "wait for finish : sleep 100ms"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-wide/16 v5, 0x64

    :try_start_2f
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_9

    .line 686
    :catch_33
    move-exception v2

    .line 687
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v5, "ShutdownDialog"

    const-string v6, "InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
