.class final Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$LandscapeMarkingPolicy;
.super Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LandscapeMarkingPolicy"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "height"    # I
    .param p2, "width"    # I

    .prologue
    .line 437
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;-><init>(II)V

    .line 438
    return-void
.end method


# virtual methods
.method public calulate(II)I
    .registers 4
    .param p1, "y"    # I
    .param p2, "x"    # I

    .prologue
    .line 441
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;->mHeight:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method
