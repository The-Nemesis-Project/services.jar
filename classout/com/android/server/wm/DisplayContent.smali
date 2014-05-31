.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field private mAppTopLevelStackBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field mEasyOneHandScaleSpec:Landroid/view/MagnificationSpec;

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenStack:Lcom/android/server/wm/TaskStack;

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStackBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRect:Landroid/graphics/Rect;

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field mWeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .registers 12
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/high16 v8, 0x3f000000

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v4, Lcom/android/server/wm/WindowList;

    invoke-direct {v4}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    .line 86
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    .line 87
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 88
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 89
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 90
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 91
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 92
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 93
    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 96
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 113
    new-instance v4, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v4}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    .line 121
    iput-object v7, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    .line 125
    iput-object v7, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 131
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    .line 137
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 1022
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    .line 146
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 147
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 148
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 149
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_bd

    move v4, v5

    :goto_7e
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 150
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 153
    new-instance v0, Lcom/android/server/wm/StackBox;

    const/4 v4, 0x4

    invoke-direct {v0, p2, p0, v7, v4}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V

    .line 154
    .local v0, "hiddenBox":Lcom/android/server/wm/StackBox;
    new-instance v1, Lcom/android/server/wm/TaskStack;

    invoke-direct {v1, p2, v6, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 155
    .local v1, "hiddenStack":Lcom/android/server/wm/TaskStack;
    iput-object v0, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 156
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 157
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    .line 160
    new-instance v2, Lcom/android/server/wm/StackBox;

    invoke-direct {v2, p2, p0, v7, v5}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V

    .line 162
    .local v2, "newBox":Lcom/android/server/wm/StackBox;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v3, Lcom/android/server/wm/TaskStack;

    invoke-direct {v3, p2, v5, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 164
    .local v3, "newStack":Lcom/android/server/wm/TaskStack;
    iput-object v2, v3, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 165
    iput-object v3, v2, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 166
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 169
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void

    .end local v0    # "hiddenBox":Lcom/android/server/wm/StackBox;
    .end local v1    # "hiddenStack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "newBox":Lcom/android/server/wm/StackBox;
    .end local v3    # "newStack":Lcom/android/server/wm/TaskStack;
    :cond_bd
    move v4, v6

    .line 149
    goto :goto_7e
.end method

.method private getAppplicationStackBox()Lcom/android/server/wm/StackBox;
    .registers 4

    .prologue
    .line 697
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 698
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->isApplicationStackBox()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 702
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method addStackBox(Lcom/android/server/wm/StackBox;ZZ)V
    .registers 9
    .param p1, "box"    # Lcom/android/server/wm/StackBox;
    .param p2, "toTop"    # Z
    .param p3, "isRemovedFromAppTopLevelStackBox"    # Z

    .prologue
    const/4 v3, 0x0

    .line 482
    if-eqz p3, :cond_13

    .line 483
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    if-eqz p2, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_d
    invoke-virtual {v4, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 501
    :goto_10
    return-void

    :cond_11
    move v2, v3

    .line 483
    goto :goto_d

    .line 485
    :cond_13
    const/4 v1, -0x1

    .line 486
    .local v1, "index":I
    invoke-virtual {p1}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 487
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_22
    if-ltz v0, :cond_3c

    .line 488
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 487
    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 491
    :cond_35
    if-eqz p2, :cond_3a

    add-int/lit8 v1, v0, 0x1

    :goto_39
    goto :goto_32

    :cond_3a
    move v1, v3

    goto :goto_39

    .line 494
    .end local v0    # "i":I
    :cond_3c
    if-ltz v1, :cond_44

    .line 495
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_10

    .line 497
    :cond_44
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    if-eqz p2, :cond_4e

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_4e
    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_10
.end method

.method addTask(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayContent;->addTask(Lcom/android/server/wm/Task;ZZ)V

    .line 235
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZ)V
    .registers 18
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "tapOutSide"    # Z

    .prologue
    .line 239
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v5, "normalFlotingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget v9, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 244
    .local v9, "userId":I
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 245
    .local v6, "numTasks":I
    if-eqz p2, :cond_8e

    .line 247
    iget-object v10, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v10, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v10}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v2

    .line 248
    .local v2, "isFloatingStack":Z
    iget-object v10, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    .line 249
    .local v3, "isMinimizedTask":Z
    add-int/lit8 v7, v6, -0x1

    .local v7, "taskNdx":I
    :goto_29
    if-ltz v7, :cond_3b

    .line 250
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 251
    .local v0, "historyTask":Lcom/android/server/wm/Task;
    iget v10, v0, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v10, v9, :cond_6e

    .line 252
    if-eqz v2, :cond_71

    .line 253
    if-eqz v3, :cond_61

    .line 267
    .end local v0    # "historyTask":Lcom/android/server/wm/Task;
    :cond_3b
    add-int/lit8 v7, v7, 0x1

    .line 277
    .end local v2    # "isFloatingStack":Z
    .end local v3    # "isMinimizedTask":Z
    :cond_3d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a0

    .line 278
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 279
    .local v4, "normalFlotingTask":Lcom/android/server/wm/Task;
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v10, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_47

    .line 255
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "normalFlotingTask":Lcom/android/server/wm/Task;
    .restart local v0    # "historyTask":Lcom/android/server/wm/Task;
    .restart local v2    # "isFloatingStack":Z
    .restart local v3    # "isMinimizedTask":Z
    :cond_61
    iget-object v10, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 249
    :cond_6e
    :goto_6e
    add-int/lit8 v7, v7, -0x1

    goto :goto_29

    .line 259
    :cond_71
    iget-object v10, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v10, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v10}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 261
    iget-object v10, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v11, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    if-nez p3, :cond_8c

    const/4 v10, 0x1

    :goto_82
    invoke-virtual {v11, v10}, Lcom/android/server/wm/StackBox;->isFloatingStackBox(Z)Z

    move-result v10

    if-nez v10, :cond_6e

    .line 262
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 261
    :cond_8c
    const/4 v10, 0x0

    goto :goto_82

    .line 270
    .end local v0    # "historyTask":Lcom/android/server/wm/Task;
    .end local v2    # "isFloatingStack":Z
    .end local v3    # "isMinimizedTask":Z
    .end local v7    # "taskNdx":I
    :cond_8e
    const/4 v7, 0x0

    .restart local v7    # "taskNdx":I
    :goto_8f
    if-ge v7, v6, :cond_3d

    .line 271
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v10, v9, :cond_3d

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_8f

    .line 284
    :cond_a0
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 285
    const/16 v11, 0x791a

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v13, p1, Lcom/android/server/wm/Task;->taskId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    const/4 v13, 0x1

    if-eqz p2, :cond_c8

    const/4 v10, 0x1

    :goto_b7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v13

    const/4 v10, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 286
    return-void

    .line 285
    :cond_c8
    const/4 v10, 0x0

    goto :goto_b7
.end method

.method animateDimLayers()Z
    .registers 4

    .prologue
    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackBoxNdx":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 876
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    .line 875
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 880
    :cond_1b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_23
    if-ltz v1, :cond_35

    .line 881
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    .line 880
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 884
    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, v2, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    .line 887
    return v0
.end method

.method close()V
    .registers 3

    .prologue
    .line 927
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackBoxNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 928
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->close()V

    .line 927
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 932
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_20
    if-ltz v0, :cond_30

    .line 933
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->close()V

    .line 932
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 936
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->close()V

    .line 938
    return-void
.end method

.method createStack(IIIF)Lcom/android/server/wm/TaskStack;
    .registers 25
    .param p1, "stackId"    # I
    .param p2, "relativeStackBoxId"    # I
    .param p3, "position"    # I
    .param p4, "weight"    # F

    .prologue
    .line 321
    const/4 v10, 0x0

    .line 324
    .local v10, "newStack":Lcom/android/server/wm/TaskStack;
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_5b

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_19

    .line 326
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "createStack: HOME_STACK_ID (0) not first."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 328
    :cond_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 409
    :cond_1d
    :goto_1d
    if-eqz v10, :cond_24

    .line 410
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 413
    :cond_24
    const/16 v13, 0x791c

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/high16 v16, 0x42c80000

    mul-float v16, v16, p4

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 415
    return-object v10

    .line 329
    :cond_5b
    if-nez p1, :cond_62

    .line 330
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    goto :goto_1d

    .line 333
    :cond_62
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v12, v13, -0x1

    .local v12, "stackBoxNdx":I
    :goto_6c
    if-ltz v12, :cond_e8

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/StackBox;

    .line 335
    .local v6, "box":Lcom/android/server/wm/StackBox;
    const/4 v13, 0x6

    move/from16 v0, p3

    if-eq v0, v13, :cond_82

    const/4 v13, 0x7

    move/from16 v0, p3

    if-ne v0, v13, :cond_18b

    .line 338
    :cond_82
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_199

    .line 339
    new-instance v9, Lcom/android/server/wm/StackBox;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v13, v0, v14}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    .line 340
    .local v9, "newBox":Lcom/android/server/wm/StackBox;
    new-instance v10, Lcom/android/server/wm/TaskStack;

    .end local v10    # "newStack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v10, v13, v0, v1}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 341
    .restart local v10    # "newStack":Lcom/android/server/wm/TaskStack;
    iput-object v9, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 342
    iput-object v10, v9, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 343
    const/4 v13, 0x6

    move/from16 v0, p3

    if-ne v0, v13, :cond_17d

    const/4 v11, 0x1

    .line 348
    .local v11, "offset":I
    :goto_ad
    const/4 v4, 0x0

    .line 349
    .local v4, "appStackBox":Lcom/android/server/wm/StackBox;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_b6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/StackBox;

    .line 350
    .local v5, "b":Lcom/android/server/wm/StackBox;
    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->isApplicationStackBox()Z

    move-result v13

    if-eqz v13, :cond_b6

    .line 351
    move-object v4, v5

    .line 355
    .end local v5    # "b":Lcom/android/server/wm/StackBox;
    :cond_c9
    if-eqz v4, :cond_180

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 357
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 376
    .end local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    .end local v6    # "box":Lcom/android/server/wm/StackBox;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "index":I
    .end local v9    # "newBox":Lcom/android/server/wm/StackBox;
    .end local v11    # "offset":I
    :cond_e8
    :goto_e8
    if-gez v12, :cond_1d

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v12, v13, -0x1

    :goto_f4
    if-ltz v12, :cond_15a

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/StackBox;

    .line 379
    .restart local v6    # "box":Lcom/android/server/wm/StackBox;
    const/4 v13, 0x6

    move/from16 v0, p3

    if-eq v0, v13, :cond_19d

    const/4 v13, 0x7

    move/from16 v0, p3

    if-eq v0, v13, :cond_19d

    .line 381
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 382
    if-eqz v10, :cond_19d

    .line 383
    const/4 v4, 0x0

    .line 384
    .restart local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_121
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_134

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/StackBox;

    .line 385
    .restart local v5    # "b":Lcom/android/server/wm/StackBox;
    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->isApplicationStackBox()Z

    move-result v13

    if-eqz v13, :cond_121

    .line 386
    move-object v4, v5

    .line 390
    .end local v5    # "b":Lcom/android/server/wm/StackBox;
    :cond_134
    if-eqz v4, :cond_15a

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 392
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 402
    .end local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    .end local v6    # "box":Lcom/android/server/wm/StackBox;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "index":I
    :cond_15a
    if-gez v12, :cond_1d

    .line 403
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "createStack: stackBoxId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 343
    .restart local v6    # "box":Lcom/android/server/wm/StackBox;
    .restart local v9    # "newBox":Lcom/android/server/wm/StackBox;
    :cond_17d
    const/4 v11, 0x0

    goto/16 :goto_ad

    .line 364
    .restart local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "offset":I
    :cond_180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    add-int v14, v12, v11

    invoke-virtual {v13, v14, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_e8

    .line 369
    .end local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "newBox":Lcom/android/server/wm/StackBox;
    .end local v11    # "offset":I
    :cond_18b
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 370
    if-nez v10, :cond_e8

    .line 333
    :cond_199
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_6c

    .line 377
    :cond_19d
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_f4
.end method

.method createStack(IILandroid/graphics/Rect;)Lcom/android/server/wm/TaskStack;
    .registers 8
    .param p1, "stackId"    # I
    .param p2, "stackType"    # I
    .param p3, "stackFrame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    .line 420
    const/4 v1, 0x0

    .line 423
    .local v1, "newStack":Lcom/android/server/wm/TaskStack;
    if-ne p1, v3, :cond_14

    .line 424
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v3, :cond_36

    .line 425
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "createStack: HOME_STACK_ID (0) not available."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_14
    new-instance v0, Lcom/android/server/wm/StackBox;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3, p2}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V

    .line 429
    .local v0, "newBox":Lcom/android/server/wm/StackBox;
    new-instance v1, Lcom/android/server/wm/TaskStack;

    .end local v1    # "newStack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 430
    .restart local v1    # "newStack":Lcom/android/server/wm/TaskStack;
    iput-object v0, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 431
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 432
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    .line 434
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 436
    .end local v0    # "newBox":Lcom/android/server/wm/StackBox;
    :cond_36
    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 941
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Display: mDisplayId="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 942
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 943
    .local v4, "subPrefix":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "init="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 944
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 945
    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v10, v11, :cond_59

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v10, v11, :cond_59

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v10, v11, :cond_7d

    .line 949
    :cond_59
    const-string v10, " base="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 951
    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    :cond_7d
    const-string v10, " cur="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 954
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 955
    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 956
    const-string v10, " app="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 957
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 958
    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 959
    const-string v10, " rng="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 960
    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 961
    const-string v10, "-"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 962
    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 963
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "layoutNeeded="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 966
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .local v0, "boxNdx":I
    :goto_f6
    if-ltz v0, :cond_124

    .line 968
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "StackBox #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 969
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/StackBox;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 966
    add-int/lit8 v0, v0, -0x1

    goto :goto_f6

    .line 973
    :cond_124
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Hiden StackBox #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 974
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v10, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 975
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    :goto_151
    if-ltz v0, :cond_17f

    .line 976
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "App Top Level StackBox #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 977
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/StackBox;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 975
    add-int/lit8 v0, v0, -0x1

    goto :goto_151

    .line 981
    :cond_17f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->numTokens()I

    move-result v2

    .line 982
    .local v2, "ndx":I
    if-lez v2, :cond_1d7

    .line 983
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 984
    const-string v10, "  Application tokens in Z order:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    .line 986
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, "taskNdx":I
    :goto_198
    if-ltz v5, :cond_1d7

    .line 987
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget-object v8, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 988
    .local v8, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v8}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "tokenNdx":I
    move v3, v2

    .end local v2    # "ndx":I
    .local v3, "ndx":I
    :goto_1ab
    if-ltz v7, :cond_1d3

    .line 989
    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    .line 990
    .local v9, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const-string v10, "  App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "ndx":I
    .restart local v2    # "ndx":I
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 991
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    const-string v10, "    "

    invoke-virtual {v9, p2, v10}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 988
    add-int/lit8 v7, v7, -0x1

    move v3, v2

    .end local v2    # "ndx":I
    .restart local v3    # "ndx":I
    goto :goto_1ab

    .line 986
    .end local v9    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1d3
    add-int/lit8 v5, v5, -0x1

    move v2, v3

    .end local v3    # "ndx":I
    .restart local v2    # "ndx":I
    goto :goto_198

    .line 996
    .end local v5    # "taskNdx":I
    .end local v7    # "tokenNdx":I
    .end local v8    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_1d7
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_216

    .line 997
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 998
    const-string v10, "  Exiting tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1ef
    if-ltz v1, :cond_216

    .line 1000
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 1001
    .local v6, "token":Lcom/android/server/wm/WindowToken;
    const-string v10, "  Exiting #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1002
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1003
    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 1004
    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 999
    add-int/lit8 v1, v1, -0x1

    goto :goto_1ef

    .line 1007
    .end local v1    # "i":I
    .end local v6    # "token":Lcom/android/server/wm/WindowToken;
    :cond_216
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    if-lez v10, :cond_255

    .line 1008
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1009
    const-string v10, "  Exiting application tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "i":I
    :goto_22e
    if-ltz v1, :cond_255

    .line 1011
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 1012
    .restart local v6    # "token":Lcom/android/server/wm/WindowToken;
    const-string v10, "  Exiting App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1013
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1014
    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 1015
    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1010
    add-int/lit8 v1, v1, -0x1

    goto :goto_22e

    .line 1018
    .end local v1    # "i":I
    .end local v6    # "token":Lcom/android/server/wm/WindowToken;
    :cond_255
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1019
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 5
    .param p1, "screenOrientation"    # I

    .prologue
    .line 191
    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    if-nez p1, :cond_15

    .line 193
    :cond_5
    new-instance v0, Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v0, v2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 194
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 195
    .local v1, "temp":I
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 196
    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 199
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "temp":I
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    goto :goto_14
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 303
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 304
    .local v3, "width":I
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 305
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 306
    .local v0, "height":I
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 307
    .local v2, "top":I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 308
    return-void
.end method

.method public getRootCurrentStackBox(I)Lcom/android/server/wm/StackBox;
    .registers 8
    .param p1, "type"    # I

    .prologue
    .line 706
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 707
    .local v1, "orderedStackId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "oderIdx":I
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_57

    .line 708
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskIdx":I
    :goto_14
    if-ltz v3, :cond_54

    .line 709
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v5, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_51

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget v4, v4, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-ne v4, p1, :cond_51

    .line 711
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, v4, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 712
    .local v2, "rootStackBox":Lcom/android/server/wm/StackBox;
    :goto_4a
    iget-object v4, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v4, :cond_58

    .line 713
    iget-object v2, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_4a

    .line 708
    .end local v2    # "rootStackBox":Lcom/android/server/wm/StackBox;
    :cond_51
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 707
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 719
    .end local v3    # "taskIdx":I
    :cond_57
    const/4 v2, 0x0

    :cond_58
    return-object v2
.end method

.method public getRootStackBox(I)Lcom/android/server/wm/StackBox;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 1075
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 1076
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    iget v1, v1, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-ne v1, p1, :cond_1f

    .line 1077
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    .line 1080
    :goto_1e
    return-object v1

    .line 1075
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1080
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .registers 5
    .param p1, "stackId"    # I

    .prologue
    .line 754
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackBoxNdx":I
    :goto_8
    if-ltz v1, :cond_1c

    .line 755
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 756
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_19

    .line 769
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_18
    :goto_18
    return-object v0

    .line 754
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 762
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_24
    if-ltz v1, :cond_37

    .line 763
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 764
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_18

    .line 762
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 769
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_37
    const/4 v0, 0x0

    goto :goto_18
.end method

.method getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;
    .registers 6
    .param p1, "box"    # Lcom/android/server/wm/StackBox;

    .prologue
    .line 543
    new-instance v0, Landroid/app/ActivityManager$StackBoxInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackBoxInfo;-><init>()V

    .line 544
    .local v0, "info":Landroid/app/ActivityManager$StackBoxInfo;
    iget v1, p1, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    .line 545
    iget v1, p1, Lcom/android/server/wm/StackBox;->mWeight:F

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    .line 546
    iget-boolean v1, p1, Lcom/android/server/wm/StackBox;->mVertical:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->vertical:Z

    .line 548
    iget v1, p1, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxType:I

    .line 550
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    .line 551
    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_29

    .line 552
    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    .line 560
    :goto_28
    return-object v0

    .line 555
    :cond_29
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    .line 556
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/app/ActivityManager$StackBoxInfo;

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    .line 557
    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 558
    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_28
.end method

.method public getStackBoxInfoByStackId(ILcom/android/server/wm/WindowManagerService$LEVEL;)Landroid/app/ActivityManager$StackBoxInfo;
    .registers 5
    .param p1, "stackId"    # I
    .param p2, "level"    # Lcom/android/server/wm/WindowManagerService$LEVEL;

    .prologue
    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "info":Landroid/app/ActivityManager$StackBoxInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfoByStackId(Ljava/util/ArrayList;ILcom/android/server/wm/WindowManagerService$LEVEL;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v0

    .line 1027
    if-nez v0, :cond_f

    .line 1028
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfoByStackId(Ljava/util/ArrayList;ILcom/android/server/wm/WindowManagerService$LEVEL;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v0

    .line 1030
    :cond_f
    return-object v0
.end method

.method public getStackBoxInfoByStackId(Ljava/util/ArrayList;ILcom/android/server/wm/WindowManagerService$LEVEL;)Landroid/app/ActivityManager$StackBoxInfo;
    .registers 8
    .param p2, "stackId"    # I
    .param p3, "level"    # Lcom/android/server/wm/WindowManagerService$LEVEL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;I",
            "Lcom/android/server/wm/WindowManagerService$LEVEL;",
            ")",
            "Landroid/app/ActivityManager$StackBoxInfo;"
        }
    .end annotation

    .prologue
    .line 1034
    .local p1, "stackBoxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/StackBox;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackBoxNdx":I
    :goto_6
    if-ltz v1, :cond_5d

    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/StackBox;->getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 1037
    sget-object v3, Lcom/android/server/wm/WindowManagerService$LEVEL;->SELF:Lcom/android/server/wm/WindowManagerService$LEVEL;

    if-ne p3, v3, :cond_1e

    .line 1038
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    .line 1060
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_1d
    return-object v3

    .line 1039
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_1e
    sget-object v3, Lcom/android/server/wm/WindowManagerService$LEVEL;->PARENT:Lcom/android/server/wm/WindowManagerService$LEVEL;

    if-ne p3, v3, :cond_2d

    .line 1040
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v3, :cond_5a

    .line 1041
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    goto :goto_1d

    .line 1043
    :cond_2d
    sget-object v3, Lcom/android/server/wm/WindowManagerService$LEVEL;->SIBLING:Lcom/android/server/wm/WindowManagerService$LEVEL;

    if-ne p3, v3, :cond_49

    .line 1044
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v3, :cond_5a

    .line 1045
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1046
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    goto :goto_1d

    .line 1048
    :cond_42
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    goto :goto_1d

    .line 1051
    :cond_49
    sget-object v3, Lcom/android/server/wm/WindowManagerService$LEVEL;->ROOT:Lcom/android/server/wm/WindowManagerService$LEVEL;

    if-ne p3, v3, :cond_5a

    .line 1052
    move-object v2, v0

    .line 1053
    .local v2, "temp":Lcom/android/server/wm/StackBox;
    :goto_4e
    iget-object v3, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v3, :cond_55

    .line 1054
    iget-object v2, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_4e

    .line 1056
    :cond_55
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    goto :goto_1d

    .line 1034
    .end local v2    # "temp":Lcom/android/server/wm/StackBox;
    :cond_5a
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1060
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_5d
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method getStackBoxInfos()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackBoxInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackBoxInfo;>;"
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackBoxNdx":I
    :goto_d
    if-ltz v1, :cond_21

    .line 566
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 569
    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_29
    if-ltz v1, :cond_3d

    .line 570
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 573
    :cond_3d
    return-object v0
.end method

.method public getStackOrder(Z)Ljava/util/ArrayList;
    .registers 9
    .param p1, "bAllStack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .local v4, "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1115
    .local v2, "prevRootStackBox":Lcom/android/server/wm/StackBox;
    const/4 v0, -0x1

    .line 1116
    .local v0, "currStackId":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_3c

    .line 1117
    if-nez p1, :cond_3e

    .line 1118
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v5, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 1119
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v5, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 1120
    .local v3, "rootStackBox":Lcom/android/server/wm/StackBox;
    :goto_31
    iget-object v5, v3, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_38

    .line 1121
    iget-object v3, v3, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_31

    .line 1124
    :cond_38
    if-eqz v2, :cond_3d

    if-eq v2, v3, :cond_3d

    .line 1139
    .end local v3    # "rootStackBox":Lcom/android/server/wm/StackBox;
    :cond_3c
    return-object v4

    .line 1127
    .restart local v3    # "rootStackBox":Lcom/android/server/wm/StackBox;
    :cond_3d
    move-object v2, v3

    .line 1131
    .end local v3    # "rootStackBox":Lcom/android/server/wm/StackBox;
    :cond_3e
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v5, v6, :cond_6f

    .line 1132
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v5, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v5, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v0, v5, :cond_6f

    .line 1133
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v5, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 1134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    :cond_6f
    add-int/lit8 v1, v1, -0x1

    goto :goto_f
.end method

.method getTasks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method public getWindowOrder(Lcom/android/server/wm/WindowState;)I
    .registers 5
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2c

    .line 1144
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v1, Lcom/android/server/wm/AppWindowToken;->groupId:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->groupId:I

    if-ne v1, v2, :cond_29

    .line 1149
    .end local v0    # "i":I
    :goto_28
    return v0

    .line 1143
    .restart local v0    # "i":I
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1149
    :cond_2c
    const/4 v0, -0x1

    goto :goto_28
.end method

.method public hasAccess(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method public hasIsolatedSplitStackBox()Z
    .registers 4

    .prologue
    .line 723
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 724
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->isApplicationStackBox()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 725
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v2

    .line 728
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method homeOnTop()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_2e

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    iget v1, v1, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1c

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 214
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-ne v1, v4, :cond_2c

    move v1, v2

    .line 217
    :goto_2b
    return v1

    :cond_2c
    move v1, v3

    .line 214
    goto :goto_2b

    .line 217
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eq v1, v4, :cond_3e

    :goto_3c
    move v1, v2

    goto :goto_2b

    :cond_3e
    move v2, v3

    goto :goto_3c
.end method

.method public isAppTopLevelStackBox(Lcom/android/server/wm/StackBox;)Z
    .registers 5
    .param p1, "stackBox"    # Lcom/android/server/wm/StackBox;

    .prologue
    const/4 v1, 0x0

    .line 1084
    if-nez p1, :cond_4

    .line 1097
    :cond_3
    :goto_3
    return v1

    .line 1088
    :cond_4
    move-object v0, p1

    .line 1089
    .local v0, "rootStackBox":Lcom/android/server/wm/StackBox;
    :goto_5
    iget-object v2, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v2, :cond_c

    .line 1090
    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_5

    .line 1093
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1094
    const/4 v1, 0x1

    goto :goto_3
.end method

.method isDimming()Z
    .registers 4

    .prologue
    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackBoxNdx":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 907
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v2

    or-int/2addr v0, v2

    .line 906
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 909
    :cond_1b
    return v0
.end method

.method public isPrivate()Z
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method moveHomeStackBox(Z)Z
    .registers 8
    .param p1, "toTop"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 585
    const/16 v5, 0x791d

    if-eqz p1, :cond_4c

    move v2, v3

    :goto_7
    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_70

    .line 604
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v2

    xor-int/2addr v2, p1

    if-eqz v2, :cond_4b

    .line 605
    const/4 v1, -0x1

    .line 606
    .local v1, "targetIdx":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 607
    if-eqz p1, :cond_65

    .line 608
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2e
    if-ltz v0, :cond_3e

    .line 609
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    iget v2, v2, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_56

    .line 610
    move v1, v0

    .line 614
    :cond_3e
    const/4 v2, -0x1

    if-ne v1, v2, :cond_59

    .line 615
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v0    # "i":I
    :goto_4a
    move v4, v3

    .line 624
    .end local v1    # "targetIdx":I
    :cond_4b
    :pswitch_4b
    return v4

    :cond_4c
    move v2, v4

    .line 585
    goto :goto_7

    .line 587
    :pswitch_4e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "moveHomeStackBox: No home StackBox!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    .restart local v0    # "i":I
    .restart local v1    # "targetIdx":I
    :cond_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 617
    :cond_59
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4a

    .line 620
    .end local v0    # "i":I
    :cond_65
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4a

    .line 586
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_4b
    .end packed-switch
.end method

.method moveStackBox(Lcom/android/server/wm/StackBox;Z)Z
    .registers 12
    .param p1, "stack"    # Lcom/android/server/wm/StackBox;
    .param p2, "toTop"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 639
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    packed-switch v8, :pswitch_data_aa

    .line 643
    invoke-virtual {p1}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v8

    if-nez v8, :cond_82

    .line 644
    invoke-virtual {p1}, Lcom/android/server/wm/StackBox;->isHomeStackBox()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 645
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v6

    xor-int/2addr v6, p2

    if-eqz v6, :cond_22

    .line 646
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->moveHomeStackBox(Z)Z

    move-result v7

    .line 684
    :cond_22
    :goto_22
    :pswitch_22
    return v7

    .line 640
    :pswitch_23
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "moveHomeStackBox: No home StackBox!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 650
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v8

    if-nez v8, :cond_3c

    move v8, v6

    :goto_32
    xor-int/2addr v8, p2

    if-eqz v8, :cond_40

    .line 651
    if-nez p2, :cond_3e

    :goto_37
    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->moveHomeStackBox(Z)Z

    move-result v7

    goto :goto_22

    :cond_3c
    move v8, v7

    .line 650
    goto :goto_32

    :cond_3e
    move v6, v7

    .line 651
    goto :goto_37

    .line 654
    :cond_40
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->getAppplicationStackBox()Lcom/android/server/wm/StackBox;

    move-result-object v1

    .line 655
    .local v1, "currAppStackBox":Lcom/android/server/wm/StackBox;
    if-eqz p2, :cond_22

    if-eqz v1, :cond_22

    .line 658
    const/4 v4, 0x0

    .line 659
    .local v4, "nextAppStackBox":Lcom/android/server/wm/StackBox;
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 660
    .local v0, "box":Lcom/android/server/wm/StackBox;
    iget v8, p1, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    invoke-virtual {v0, v8}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 661
    move-object v4, v0

    .line 666
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_64
    if-eqz v4, :cond_22

    .line 667
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 668
    .local v3, "index":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 669
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 671
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 672
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    .line 673
    goto :goto_22

    .line 680
    .end local v1    # "currAppStackBox":Lcom/android/server/wm/StackBox;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "nextAppStackBox":Lcom/android/server/wm/StackBox;
    :cond_82
    if-eqz p2, :cond_a1

    .line 681
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 682
    .local v5, "stackIndex":I
    if-lez v5, :cond_99

    .line 683
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    .line 684
    goto :goto_22

    .line 686
    :cond_99
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "moveStackBox: stack is not exists in mStackBoxes!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 690
    .end local v5    # "stackIndex":I
    :cond_a1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "moveStackBox: this case should not be called!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 639
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
    .end packed-switch
.end method

.method numTokens()I
    .registers 4

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 314
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 313
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 316
    :cond_1d
    return v0
.end method

.method removeStackBox(Lcom/android/server/wm/StackBox;)Z
    .registers 3
    .param p1, "box"    # Lcom/android/server/wm/StackBox;

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;Z)Z

    move-result v0

    return v0
.end method

.method removeStackBox(Lcom/android/server/wm/StackBox;Z)Z
    .registers 10
    .param p1, "box"    # Lcom/android/server/wm/StackBox;
    .param p2, "replaceParent"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 511
    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 512
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_b

    iget v4, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v4, v3, :cond_b

    .line 538
    :cond_a
    :goto_a
    return v2

    .line 520
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 521
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 525
    :cond_1f
    if-eqz p2, :cond_59

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 526
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 527
    .local v0, "index":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 528
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4f

    .line 529
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 535
    .end local v0    # "index":I
    :cond_4f
    :goto_4f
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v3

    .line 536
    goto :goto_a

    .line 532
    :cond_59
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4f
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 3

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackBoxNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 861
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 860
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 865
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_20
    if-ltz v0, :cond_30

    .line 866
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 865
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 869
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 871
    return-void
.end method

.method resetDimming()V
    .registers 3

    .prologue
    .line 891
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackBoxNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 892
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 891
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 896
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_20
    if-ltz v0, :cond_30

    .line 897
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 896
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 900
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 902
    return-void
.end method

.method resizeStack(IF)Z
    .registers 7
    .param p1, "stackBoxId"    # I
    .param p2, "weight"    # F

    .prologue
    const/4 v2, 0x1

    .line 442
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackBoxNdx":I
    :goto_9
    if-ltz v1, :cond_1f

    .line 443
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 444
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 445
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 458
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_1b
    return v2

    .line 442
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 450
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_27
    if-ltz v1, :cond_3d

    .line 451
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 452
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 453
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_1b

    .line 450
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 458
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_3d
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public resizeWeight(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1064
    .local p1, "weight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1065
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    .line 1066
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getRootStackBox(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    .line 1067
    .local v0, "root":Lcom/android/server/wm/StackBox;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resizeWeight()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1068
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1070
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public reverseVerticalValue()V
    .registers 6

    .prologue
    .line 1101
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_25

    .line 1102
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    iget v3, v3, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_22

    .line 1103
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    .line 1101
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1107
    :cond_25
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 1108
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    goto :goto_2b

    .line 1110
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_3b
    return-void
.end method

.method setStackBoxSize(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    .line 737
    const/4 v1, 0x0

    .line 738
    .local v1, "change":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackBoxNdx":I
    :goto_a
    if-ltz v2, :cond_2b

    .line 740
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 738
    :goto_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 743
    :cond_1d
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_1a

    .line 746
    :cond_2b
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "appStackHBoxNdx":I
    :goto_33
    if-ltz v0, :cond_45

    .line 747
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v3

    or-int/2addr v1, v3

    .line 746
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    .line 750
    :cond_45
    return v1
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .registers 10
    .param p1, "focusedStack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v7, 0x1

    .line 787
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 788
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 801
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    iget-object v4, p1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/StackBox;->isFloatingStackBox(Z)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 802
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v5, v5, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 803
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_23
    if-ltz v0, :cond_98

    .line 804
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 805
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 807
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7dd

    if-ne v4, v5, :cond_3a

    .line 803
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 810
    :cond_3a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v4

    if-eqz v4, :cond_37

    if-eqz v1, :cond_37

    if-ne v1, p1, :cond_37

    .line 811
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v7, :cond_37

    .line 812
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 813
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 814
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_37

    .line 819
    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_62
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "i":I
    :goto_68
    if-ltz v0, :cond_98

    .line 820
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 821
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 822
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_95

    if-eqz v1, :cond_95

    if-eq v1, p1, :cond_95

    .line 823
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 824
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 825
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 819
    :cond_95
    add-int/lit8 v0, v0, -0x1

    goto :goto_68

    .line 832
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_98
    return-void
.end method

.method stackIdFromPoint(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x1

    .line 776
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 777
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 778
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v2

    .line 779
    .local v2, "stackId":I
    if-le v2, v3, :cond_1a

    .line 782
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    .end local v2    # "stackId":I
    :goto_19
    return v2

    .line 776
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    .restart local v2    # "stackId":I
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    .end local v2    # "stackId":I
    :cond_1d
    move v2, v3

    .line 782
    goto :goto_19
.end method

.method stopDimmingIfNeeded()V
    .registers 3

    .prologue
    .line 913
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackBoxNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 914
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 913
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 918
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_20
    if-ltz v0, :cond_30

    .line 919
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 918
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 922
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 924
    return-void
.end method

.method switchStack(I)Z
    .registers 6
    .param p1, "stackBoxId"    # I

    .prologue
    const/4 v2, 0x1

    .line 464
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackBoxNdx":I
    :goto_9
    if-ltz v1, :cond_1f

    .line 465
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 466
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchBounds(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 467
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 471
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_1b
    return v2

    .line 464
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 471
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method switchUserStacks(II)V
    .registers 8
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 836
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1e

    .line 837
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 838
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 842
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 836
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 846
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1e
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "stackBoxNdx":I
    :goto_26
    if-ltz v1, :cond_36

    .line 847
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 846
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 851
    :cond_36
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_3e
    if-ltz v1, :cond_4e

    .line 852
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 851
    add-int/lit8 v1, v1, -0x1

    goto :goto_3e

    .line 855
    :cond_4e
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 857
    return-void
.end method

.method updateDisplayInfo()V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 298
    return-void
.end method
