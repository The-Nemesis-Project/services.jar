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

.field private final PATH_BOOTSAMSUNG:Ljava/lang/String;

.field private final PATH_BOOTSAMSUNG_LOOP:Ljava/lang/String;

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

.field private doLoopAnim:Z

.field private final drawBufferLock:Ljava/lang/Object;

.field private final logHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

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

.field private shutdownSoundPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 136
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

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 84
    const-string v0, "ShutdownDialog"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->TAG:Ljava/lang/String;

    .line 85
    const-string v0, "//system/media/shutdown.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG:Ljava/lang/String;

    .line 86
    const-string v0, "//system/media/shutdownbefore.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWN_BEFORE:Ljava/lang/String;

    .line 87
    const-string v0, "//system/media/shutdownafter.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWN_AFTER:Ljava/lang/String;

    .line 88
    const-string v0, "//system/media/shutdownloop.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWN_LOOP:Ljava/lang/String;

    .line 89
    const-string v0, "//system/media/video/shutdown/shutdown.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_OLD_SHUTDOWNIMG:Ljava/lang/String;

    .line 91
    const-string v0, "//data/data/com.samsung.snmc.dynamiccsc/files/shutdown.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_DYNAMICCSC:Ljava/lang/String;

    .line 93
    const-string v0, "//system/csc_contents/shutdown.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String;

    .line 94
    const-string v0, "//system/csc_contents/PowerOff.ogg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String;

    .line 95
    const-string v0, ".cover"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_COVER_POSTFIX:Ljava/lang/String;

    .line 99
    const-string v0, "//system/media/bootsamsung.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_BOOTSAMSUNG:Ljava/lang/String;

    .line 100
    const-string v0, "//system/media/bootsamsungloop.qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_BOOTSAMSUNG_LOOP:Ljava/lang/String;

    .line 102
    iput v1, p0, Lcom/android/server/power/ShutdownDialog;->BUFFER_SIZE:I

    .line 103
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 104
    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    .line 105
    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/ShutdownDialog;->MSG_LOAD_FINISH:I

    .line 113
    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->MSG_UPDATE_FRAME:I

    .line 114
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/power/ShutdownDialog;->MSG_UPDATE_DELAY:I

    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    .line 117
    new-instance v0, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    .line 131
    new-instance v0, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    .line 132
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 140
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/server/power/ShutdownDialog;->setCancelable(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7e5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/android/server/power/ShutdownDialog$DrawState;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 613
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 614
    const/4 v1, 0x0

    .line 624
    :goto_c
    return v1

    .line 616
    :cond_d
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/LibQmg;

    invoke-direct {v2, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".cover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 619
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 620
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/LibQmg;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :goto_3f
    const/4 v1, 0x1

    goto :goto_c

    .line 622
    :cond_41
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method private createBootupQmgPlayList()V
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 629
    const-string v0, "//system/media/bootsamsung.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 631
    return-void
.end method

.method private createShutdownQmgPlayList()V
    .registers 5

    .prologue
    .line 634
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 635
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 636
    const/4 v1, 0x0

    .line 637
    .local v1, "imei_mps_code":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v1

    .line 638
    if-eqz v1, :cond_2d

    .line 639
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "//system/media/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_shutdown.qmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 641
    .local v0, "chameleonPath":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 668
    .end local v0    # "chameleonPath":Ljava/lang/StringBuffer;
    :cond_2c
    :goto_2c
    return-void

    .line 646
    :cond_2d
    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 649
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

    .line 655
    :cond_49
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 658
    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/shutdown.qmg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 660
    const-string v2, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 661
    const-string v2, "//system/media/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 662
    const-string v2, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    goto :goto_2c

    .line 665
    :cond_6e
    const-string v2, "//system/media/shutdownloop.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_2c
.end method

.method private getChameleonCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 569
    new-instance v1, Ljava/io/File;

    const-string v2, "/carrier/chameleon.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 570
    const/4 v0, 0x0

    .line 574
    :goto_e
    return-object v0

    .line 572
    :cond_f
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 578
    if-eqz p1, :cond_e

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 609
    .end local p1    # "soundPath":Ljava/lang/String;
    :goto_d
    return-object p1

    .line 595
    .restart local p1    # "soundPath":Ljava/lang/String;
    :cond_e
    new-instance v2, Ljava/io/File;

    const-string v3, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 596
    const-string p1, "//system/csc_contents/PowerOff.ogg"

    goto :goto_d

    .line 599
    :cond_1e
    const-string v1, "//system/media/audio/ui/PowerOff.wav"

    .line 600
    .local v1, "poweroff_wav":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 601
    const-string p1, "//system/media/audio/ui/PowerOff.wav"

    goto :goto_d

    .line 604
    :cond_30
    const-string v0, "//system/media/audio/ui/PowerOff.ogg"

    .line 605
    .local v0, "poweroff_ogg":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 606
    const-string p1, "//system/media/audio/ui/PowerOff.ogg"

    goto :goto_d

    .line 609
    :cond_42
    const/4 p1, 0x0

    goto :goto_d
.end method

.method private getSystemVolume()I
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 302
    const/16 v1, -0x270f

    .line 303
    .local v1, "systemVolume":I
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 304
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_1b

    .line 305
    const-string/jumbo v2, "shutdown"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 308
    :cond_1b
    const-string v2, "ShutdownDialog"

    const-string v3, "!@systemVol:%d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return v1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .registers 10
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, "f":Ljava/io/File;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_b} :catch_65
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_b} :catch_7a
    .catchall {:try_start_6 .. :try_end_b} :catchall_8f

    .line 318
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    .line 319
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 320
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 322
    const-string/jumbo v5, "situation=8;device=0"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 324
    .local v4, "vol":F
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 325
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 326
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/server/power/ShutdownDialog$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownDialog$2;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 331
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_46} :catch_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_46} :catch_b0
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_46} :catch_ad
    .catchall {:try_start_b .. :try_end_46} :catchall_aa

    .line 341
    if-eqz v3, :cond_4b

    .line 342
    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_a0

    :cond_4b
    :goto_4b
    move-object v2, v3

    .line 348
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "vol":F
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_4c
    :goto_4c
    return-void

    .line 332
    :catch_4d
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    :goto_4e
    :try_start_4e
    const-string v5, "ShutdownDialog"

    const-string v6, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_8f

    .line 341
    if-eqz v2, :cond_4c

    .line 342
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_4c

    .line 344
    :catch_5b
    move-exception v0

    .line 345
    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    :goto_61
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 334
    .end local v0    # "e":Ljava/io/IOException;
    :catch_65
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_66
    :try_start_66
    const-string v5, "ShutdownDialog"

    const-string v6, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_8f

    .line 341
    if-eqz v2, :cond_4c

    .line 342
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_4c

    .line 344
    :catch_73
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    goto :goto_61

    .line 336
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7a
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_7b
    :try_start_7b
    const-string v5, "ShutdownDialog"

    const-string v6, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_8f

    .line 341
    if-eqz v2, :cond_4c

    .line 342
    :try_start_84
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_4c

    .line 344
    :catch_88
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    goto :goto_61

    .line 340
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_8f
    move-exception v5

    .line 341
    :goto_90
    if-eqz v2, :cond_95

    .line 342
    :try_start_92
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    .line 340
    :cond_95
    :goto_95
    throw v5

    .line 344
    :catch_96
    move-exception v0

    .line 345
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    .line 344
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "vol":F
    :catch_a0
    move-exception v0

    .line 345
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 340
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "vol":F
    :catchall_aa
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_90

    .line 336
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_ad
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7b

    .line 334
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_b0
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_66

    .line 332
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_b3
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4e
.end method


# virtual methods
.method public appendTextLog(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 689
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 690
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 691
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ShutdownDialog"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 693
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    return-void
.end method

.method public drawState()I
    .registers 2

    .prologue
    .line 733
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
    .line 698
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 699
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

    .line 159
    const-string v2, "ShutdownDialog"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 163
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 168
    .local v1, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    .line 174
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 175
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 184
    new-instance v2, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 191
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 192
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 197
    return-void
.end method

.method public prepareBootup()V
    .registers 4

    .prologue
    .line 711
    const-string v1, "ShutdownDialog"

    const-string v2, "prepare bootup image and sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v1, "/system/media/audio/ui/PowerOn.ogg"

    invoke-direct {p0, v1}, Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "soundPathConfirmed":Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I

    move-result v1

    if-lez v1, :cond_18

    .line 714
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    .line 717
    :cond_18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    .line 718
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createBootupQmgPlayList()V

    .line 719
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    .line 721
    return-void
.end method

.method public prepareFakeShutdown()V
    .registers 3

    .prologue
    .line 703
    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v0, "/system/media/audio/ui/PowerOff.ogg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    .line 706
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 707
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    .line 708
    return-void
.end method

.method public prepareShutdown()V
    .registers 3

    .prologue
    .line 724
    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;

    .line 726
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    .line 728
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    .line 729
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 739
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .registers 11
    .param p1, "timeout"    # I

    .prologue
    .line 671
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-int/lit16 v7, p1, 0x3e8

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 672
    .local v3, "endTime":J
    :goto_9
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v5}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 674
    .local v0, "delay":J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_26

    .line 675
    const-string v5, "ShutdownDialog"

    const-string v6, "!@Animation finish wait timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v0    # "delay":J
    :cond_24
    const/4 v5, 0x1

    return v5

    .line 678
    .restart local v0    # "delay":J
    :cond_26
    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "wait for finish : sleep 100ms"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-wide/16 v5, 0x64

    :try_start_30
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_9

    .line 681
    :catch_34
    move-exception v2

    .line 682
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v5, "ShutdownDialog"

    const-string v6, "InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
