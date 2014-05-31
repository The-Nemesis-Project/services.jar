.class public Lcom/android/server/am/ThumbnailHolder;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"


# instance fields
.field lastDescription:Ljava/lang/CharSequence;

.field lastThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method disposeThumbnail()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    .line 27
    iput-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    .line 28
    return-void
.end method
