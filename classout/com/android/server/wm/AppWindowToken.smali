.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"


# instance fields
.field final allAppWindows:Lcom/android/server/wm/WindowList;

.field allDrawn:Z

.field appFullscreen:Z

.field public appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field final appToken:Landroid/view/IApplicationToken;

.field clientHidden:Z

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field groupId:I

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field inputDispatchingTimeoutNanos:J

.field lastTransactionSequence:J

.field layoutConfigChanges:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field final mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field numDrawnWindows:I

.field numInterestingWindows:I

.field removed:Z

.field reportedDrawn:Z

.field reportedVisible:Z

.field requestedOrientation:I

.field showWhenLocked:Z

.field startingData:Lcom/android/server/wm/StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingView:Landroid/view/View;

.field startingWindow:Lcom/android/server/wm/WindowState;

.field willBeHidden:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;)V
    .registers 7
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/view/IApplicationToken;

    .prologue
    const/4 v3, -0x1

    .line 117
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 52
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 57
    iput v3, p0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 59
    iput v3, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 70
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    .line 119
    iput-object p0, p0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 120
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 121
    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 123
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWindowAnimator;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 124
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_f

    .line 258
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 261
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allAppWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 263
    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "groupId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 264
    const-string v0, " appFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 265
    const-string v0, " requestedOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 266
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hiddenRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 267
    const-string v0, " clientHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 268
    const-string v0, " willBeHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 269
    const-string v0, " reportedDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 270
    const-string v0, " reportedVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 271
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_8b

    .line 272
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    :cond_8b
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    if-nez v0, :cond_9d

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    if-nez v0, :cond_9d

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v0, :cond_d9

    .line 276
    :cond_9d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "numInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 278
    const-string v0, " numDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 279
    const-string v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 280
    const-string v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 281
    const-string v0, " (animator="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 282
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    :cond_d9
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_ea

    .line 285
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 288
    :cond_ea
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_f6

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v0, :cond_f6

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v0, :cond_118

    .line 289
    :cond_f6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 290
    const-string v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 291
    const-string v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 293
    :cond_118
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_128

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-nez v0, :cond_128

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_128

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-eqz v0, :cond_154

    .line 295
    :cond_128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 296
    const-string v0, " startingView="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 297
    const-string v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 298
    const-string v0, " startingMoved"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 300
    :cond_154
    return-void
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .registers 5

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 228
    .local v0, "j":I
    :cond_6
    if-lez v0, :cond_21

    .line 229
    add-int/lit8 v0, v0, -0x1

    .line 230
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 231
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 236
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_20
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method isVisible()Z
    .registers 5

    .prologue
    .line 240
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 241
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3a

    .line 242
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 243
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v3, :cond_37

    iget v3, v2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v3, :cond_2b

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-nez v3, :cond_37

    :cond_2b
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_37

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 248
    const/4 v3, 0x1

    .line 251
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_36
    return v3

    .line 241
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 251
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_3a
    const/4 v3, 0x0

    goto :goto_36
.end method

.method sendAppVisibilityToClients()V
    .registers 6

    .prologue
    .line 127
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 128
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 129
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 130
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_1c

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v3, :cond_1c

    .line 128
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 137
    :cond_1c
    :try_start_1c
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v3, :cond_29

    const/4 v3, 0x1

    :goto_23
    invoke-interface {v4, v3}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_19

    .line 138
    :catch_27
    move-exception v3

    goto :goto_19

    .line 137
    :cond_29
    const/4 v3, 0x0

    goto :goto_23

    .line 141
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_2b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 311
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method updateReportedVisibilityLocked()V
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 144
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v12, :cond_7

    .line 224
    :cond_6
    :goto_6
    return-void

    .line 148
    :cond_7
    const/4 v7, 0x0

    .line 149
    .local v7, "numInteresting":I
    const/4 v8, 0x0

    .line 150
    .local v8, "numVisible":I
    const/4 v6, 0x0

    .line 151
    .local v6, "numDrawn":I
    const/4 v4, 0x1

    .line 155
    .local v4, "nowGone":Z
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 156
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_56

    .line 157
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 158
    .local v9, "win":Lcom/android/server/wm/WindowState;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq v9, v12, :cond_33

    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v12, :cond_33

    iget v12, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v12, :cond_33

    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_33

    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v12, :cond_36

    .line 156
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 179
    :cond_36
    add-int/lit8 v7, v7, 0x1

    .line 180
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v12

    if-eqz v12, :cond_4c

    .line 181
    add-int/lit8 v6, v6, 0x1

    .line 182
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v12

    if-nez v12, :cond_4a

    .line 183
    add-int/lit8 v8, v8, 0x1

    .line 185
    :cond_4a
    const/4 v4, 0x0

    goto :goto_33

    .line 186
    :cond_4c
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_33

    .line 187
    const/4 v4, 0x0

    goto :goto_33

    .line 191
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_56
    if-lez v7, :cond_a1

    if-lt v6, v7, :cond_a1

    move v3, v10

    .line 192
    .local v3, "nowDrawn":Z
    :goto_5b
    if-lez v7, :cond_a3

    if-lt v8, v7, :cond_a3

    move v5, v10

    .line 193
    .local v5, "nowVisible":Z
    :goto_60
    if-nez v4, :cond_6a

    .line 195
    if-nez v3, :cond_66

    .line 196
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 198
    :cond_66
    if-nez v5, :cond_6a

    .line 199
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 204
    :cond_6a
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-eq v3, v12, :cond_83

    .line 205
    if-eqz v3, :cond_81

    .line 206
    iget-object v12, p0, Lcom/android/server/wm/WindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v13, 0x9

    invoke-virtual {v12, v13, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 208
    .local v2, "m":Landroid/os/Message;
    iget-object v12, p0, Lcom/android/server/wm/WindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 210
    .end local v2    # "m":Landroid/os/Message;
    :cond_81
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 212
    :cond_83
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eq v5, v12, :cond_6

    .line 216
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 217
    iget-object v12, p0, Lcom/android/server/wm/WindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v14, 0x8

    if-eqz v5, :cond_a5

    move v12, v10

    :goto_92
    if-eqz v4, :cond_a7

    :goto_94
    invoke-virtual {v13, v14, v12, v10, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 222
    .restart local v2    # "m":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/wm/WindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "nowDrawn":Z
    .end local v5    # "nowVisible":Z
    :cond_a1
    move v3, v11

    .line 191
    goto :goto_5b

    .restart local v3    # "nowDrawn":Z
    :cond_a3
    move v5, v11

    .line 192
    goto :goto_60

    .restart local v5    # "nowVisible":Z
    :cond_a5
    move v12, v11

    .line 217
    goto :goto_92

    :cond_a7
    move v10, v11

    goto :goto_94
.end method
