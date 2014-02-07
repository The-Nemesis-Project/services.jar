.class Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppWindowAnimParams"
.end annotation


# instance fields
.field mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field mWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWindowAnimator;)V
    .registers 7
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;

    .prologue
    .line 757
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 760
    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 761
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mWinAnimators:Ljava/util/ArrayList;

    .line 762
    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 763
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_29

    .line 764
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mWinAnimators:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 766
    :cond_29
    return-void
.end method
