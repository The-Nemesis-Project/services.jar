.class Lcom/android/server/wm/WinAnimatorList;
.super Ljava/util/ArrayList;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/wm/WindowStateAnimator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WinAnimatorList;)V
    .registers 2
    .param p1, "other"    # Lcom/android/server/wm/WinAnimatorList;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    return-void
.end method
