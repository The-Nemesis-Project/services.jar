.class public Lcom/android/server/am/MultiWindowFacadeService;
.super Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.source "MultiWindowFacadeService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiWindowFacade"

.field private static sSelf:Lcom/android/server/am/MultiWindowFacadeService;


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIsMWTrayOpen:Z

.field private mLock:Ljava/lang/Object;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 34
    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mIsMWTrayOpen:Z

    .line 39
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 41
    sput-object p0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    .line 42
    return-void
.end method

.method private getRootStackBox()Landroid/app/ActivityManager$StackBoxInfo;
    .registers 6

    .prologue
    .line 316
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getStackBoxes()Ljava/util/List;

    move-result-object v2

    .line 319
    .local v2, "stackBoxInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackBoxInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$StackBoxInfo;

    .line 320
    .local v1, "stackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    iget v3, v1, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    iget v3, v1, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    .line 326
    .end local v1    # "stackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method private getStackBoxByZone(I)Landroid/app/ActivityManager$StackBoxInfo;
    .registers 11
    .param p1, "zone"    # I

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v5, 0x0

    .line 156
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowFacadeService;->getRootStackBox()Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v4

    .line 158
    .local v4, "rootStackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    if-eqz v4, :cond_d

    iget-object v6, v4, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-nez v6, :cond_2b

    .line 161
    :cond_d
    const-string v6, "MultiWindowFacade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStackBoxByZone There is No Application StackBox zone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 229
    :goto_2a
    return-object v2

    .line 166
    :cond_2b
    const/4 v0, -0x1

    .line 167
    .local v0, "level1Index":I
    packed-switch p1, :pswitch_data_13a

    :pswitch_2f
    move-object v2, v5

    .line 180
    goto :goto_2a

    .line 171
    :pswitch_31
    const/4 v0, 0x0

    .line 183
    :goto_32
    iget-object v6, v4, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    aget-object v2, v6, v0

    .line 184
    .local v2, "lv1Info":Landroid/app/ActivityManager$StackBoxInfo;
    iget-object v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-nez v6, :cond_97

    .line 185
    const/4 v6, 0x3

    if-eq p1, v6, :cond_41

    const/16 v6, 0xc

    if-ne p1, v6, :cond_73

    :cond_41
    iget-object v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v6, :cond_73

    iget-object v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-lez v6, :cond_73

    .line 187
    const-string v5, "MultiWindowFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStackBoxByZone Lv1 zone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 176
    .end local v2    # "lv1Info":Landroid/app/ActivityManager$StackBoxInfo;
    :pswitch_71
    const/4 v0, 0x1

    .line 177
    goto :goto_32

    .line 190
    .restart local v2    # "lv1Info":Landroid/app/ActivityManager$StackBoxInfo;
    :cond_73
    const-string v6, "MultiWindowFacade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStackBoxByZone Lv1 zone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 191
    goto :goto_2a

    .line 196
    :cond_97
    const/4 v1, -0x1

    .line 197
    .local v1, "level2Index":I
    packed-switch p1, :pswitch_data_156

    .line 220
    :goto_9b
    :pswitch_9b
    iget-object v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    aget-object v3, v6, v1

    .line 221
    .local v3, "lv2Info":Landroid/app/ActivityManager$StackBoxInfo;
    iget-object v6, v3, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-nez v6, :cond_115

    .line 222
    iget-object v6, v3, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v6, :cond_115

    iget-object v6, v3, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-lez v6, :cond_115

    .line 223
    const-string v5, "MultiWindowFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStackBoxByZone Lv2 zone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 224
    goto/16 :goto_2a

    .line 201
    .end local v3    # "lv2Info":Landroid/app/ActivityManager$StackBoxInfo;
    :pswitch_d5
    iget v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_107

    iget v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_107

    .line 203
    const-string v6, "MultiWindowFacade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStackBoxByZone zone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already splited."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 204
    goto/16 :goto_2a

    .line 206
    :cond_107
    iget v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_10f

    const/4 v1, 0x0

    .line 207
    :goto_10e
    goto :goto_9b

    .line 206
    :cond_10f
    const/4 v1, 0x1

    goto :goto_10e

    .line 210
    :pswitch_111
    const/4 v1, 0x0

    .line 211
    goto :goto_9b

    .line 214
    :pswitch_113
    const/4 v1, 0x1

    .line 215
    goto :goto_9b

    .line 228
    .restart local v3    # "lv2Info":Landroid/app/ActivityManager$StackBoxInfo;
    :cond_115
    const-string v6, "MultiWindowFacade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStackBoxByZone Lv2 zone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " found=null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 229
    goto/16 :goto_2a

    .line 167
    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_71
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_71
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_71
    .end packed-switch

    .line 197
    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_111
        :pswitch_113
        :pswitch_d5
        :pswitch_111
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_113
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_d5
    .end packed-switch
.end method

.method private getTopTaskIdByZone(I)I
    .registers 8
    .param p1, "zone"    # I

    .prologue
    .line 245
    const/4 v2, -0x1

    .line 246
    .local v2, "taskId":I
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackBoxByZone(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v1

    .line 247
    .local v1, "stack":Landroid/app/ActivityManager$StackBoxInfo;
    if-eqz v1, :cond_14

    .line 248
    iget-object v3, v1, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 249
    .local v0, "idx":I
    iget-object v3, v1, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v2, v3, v0

    .line 251
    .end local v0    # "idx":I
    :cond_14
    const-string v3, "MultiWindowFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopTaskIdByZone zone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v2
.end method

.method public static self()Lcom/android/server/am/MultiWindowFacadeService;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    return-object v0
.end method


# virtual methods
.method public changeFocusedTaskToFull()V
    .registers 4

    .prologue
    .line 401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 402
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfFocusedTaskToNormal()V

    .line 403
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    return-void
.end method

.method public exchangeTopTaskToZone(II)Z
    .registers 11
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    .line 140
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 141
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v0

    .line 142
    .local v0, "task1":I
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v1

    .line 144
    .local v1, "task2":I
    const-string v4, "MultiWindowFacade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchangeTopTaskToZone zone1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zone2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eq v0, v7, :cond_57

    if-eq v1, v7, :cond_57

    .line 148
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->exchangeTaskToStack(IIZ)V

    .line 149
    monitor-exit v3

    .line 151
    :goto_56
    return v2

    :cond_57
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_56

    .line 152
    .end local v0    # "task1":I
    .end local v1    # "task2":I
    :catchall_5a
    move-exception v2

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public getArrangeState()I
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "result":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v2, "normalStackBoxInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackBoxInfo;>;"
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getStackBoxInfos()Ljava/util/ArrayList;

    move-result-object v5

    .line 270
    .local v5, "stackBoxInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackBoxInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackBoxInfo;

    .line 271
    .local v4, "stackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    iget v6, v4, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12

    iget v6, v4, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    if-eq v6, v9, :cond_12

    .line 273
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 277
    .end local v4    # "stackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    :cond_2b
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackBoxInfo;

    .line 278
    .restart local v4    # "stackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    iget-object v0, v4, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    .line 279
    .local v0, "childrens":[Landroid/app/ActivityManager$StackBoxInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-eqz v6, :cond_39

    .line 280
    or-int/lit8 v3, v3, 0x1

    .line 283
    :cond_39
    if-eqz v0, :cond_45

    aget-object v6, v0, v8

    iget-object v6, v6, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-eqz v6, :cond_45

    .line 284
    and-int/lit8 v3, v3, -0x2

    .line 285
    or-int/lit8 v3, v3, 0x2

    .line 288
    :cond_45
    if-eqz v0, :cond_51

    aget-object v6, v0, v9

    iget-object v6, v6, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-eqz v6, :cond_51

    .line 289
    and-int/lit8 v3, v3, -0x2

    .line 290
    or-int/lit8 v3, v3, 0x4

    .line 293
    :cond_51
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_5b

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_5b

    .line 295
    const/16 v3, 0x8

    .line 297
    :cond_5b
    return v3
.end method

.method public getAvailableMultiInstanceCnt()I
    .registers 3

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getAvailableMultiInstanceCnt()I

    move-result v0

    monitor-exit v1

    return v0

    .line 409
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getFocusedStackLayer()I
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .registers 4

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 306
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_18

    .line 307
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 308
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_18

    .line 309
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    .line 312
    .end local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 5
    .param p1, "flags"    # I

    .prologue
    .line 256
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 257
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topResumedActivityExceptFloatingLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 258
    .local v0, "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_11

    .line 259
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    .line 262
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_10

    .line 263
    .end local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 76
    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 77
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_c

    .line 78
    const/4 v1, 0x0

    monitor-exit v2

    .line 79
    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    monitor-exit v2

    goto :goto_b

    .line 80
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getPreviewRect(II)Landroid/graphics/Rect;
    .registers 4
    .param p1, "zone"    # I
    .param p2, "applistSize"    # I

    .prologue
    .line 345
    const v0, 0x3f333333

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MultiWindowFacadeService;->getPreviewRect(IIF)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewRect(IIF)Landroid/graphics/Rect;
    .registers 15
    .param p1, "zone"    # I
    .param p2, "applistSize"    # I
    .param p3, "scale"    # F

    .prologue
    const/4 v10, 0x1

    const/high16 v8, 0x40000000

    .line 348
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 350
    .local v3, "resultRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 351
    .local v0, "fullscreen":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 353
    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, p3

    sub-float/2addr v6, v7

    int-to-float v7, p2

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    float-to-int v1, v6

    .line 354
    .local v1, "previewHPadding":I
    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, p3

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    float-to-int v2, v6

    .line 356
    .local v2, "previewVPadding":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, p2, v1

    iget v7, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v2

    invoke-direct {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    .local v5, "unknownRect":Landroid/graphics/Rect;
    if-nez p1, :cond_3d

    .line 385
    .end local v5    # "unknownRect":Landroid/graphics/Rect;
    :goto_3c
    return-object v5

    .line 362
    .restart local v5    # "unknownRect":Landroid/graphics/Rect;
    :cond_3d
    new-instance v4, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v6}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 363
    .local v4, "scaledCenterPoint":Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, p3

    iget v7, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Point;->y:I

    .line 364
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, p3

    iget v7, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, p2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    int-to-float v7, p2

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Point;->x:I

    .line 366
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_80

    .line 367
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 369
    :cond_80
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_97

    .line 370
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v10, :cond_c0

    .line 371
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 375
    :cond_97
    :goto_97
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_ae

    .line 376
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v10, :cond_cc

    .line 377
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 381
    :cond_ae
    :goto_ae
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_bd

    .line 382
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    :cond_bd
    move-object v5, v3

    .line 385
    goto/16 :goto_3c

    .line 373
    :cond_c0
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_97

    .line 379
    :cond_cc
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_ae
.end method

.method public getSplitMaxWeight()F
    .registers 2

    .prologue
    .line 450
    const v0, 0x3f4ccccd

    return v0
.end method

.method public getSplitMinWeight()F
    .registers 2

    .prologue
    .line 446
    const v0, 0x3e4ccccd

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 106
    const/4 v1, -0x1

    .line 107
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 108
    :try_start_5
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 109
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 110
    monitor-exit v3

    .line 118
    :cond_c
    :goto_c
    return-object v2

    .line 111
    :cond_d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 112
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_20

    .line 114
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    .line 115
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_c

    .line 112
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 462
    const/4 v1, -0x1

    .line 463
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 464
    :try_start_5
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 465
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 466
    monitor-exit v3

    .line 474
    :cond_c
    :goto_c
    return-object v2

    .line 467
    :cond_d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 468
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_20

    .line 470
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    .line 471
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBoxPosition(I)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_c

    .line 468
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 122
    const/4 v1, -0x1

    .line 123
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 124
    :try_start_5
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 125
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 126
    monitor-exit v3

    .line 134
    :cond_c
    :goto_c
    return-object v2

    .line 127
    :cond_d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 128
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_20

    .line 130
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    .line 131
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_c

    .line 128
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .registers 7
    .param p1, "zone"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackBoxByZone(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v1

    .line 235
    .local v1, "stack":Landroid/app/ActivityManager$StackBoxInfo;
    if-eqz v1, :cond_9

    .line 236
    iget-object v0, v1, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    .line 239
    :cond_9
    const-string v2, "MultiWindowFacade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getZoneBounds zone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v0
.end method

.method public minimizeAll()V
    .registers 4

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 456
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/MultiWindowPolicy;->minimizeAll(Ljava/lang/String;)V

    .line 457
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public moveOnlySpecificTaskToFront(II)V
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 435
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 436
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    move-result-wide v0

    .line 438
    .local v0, "origId":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, p1, p2, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(IILandroid/os/Bundle;Z)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .line 440
    :try_start_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    monitor-exit v3

    .line 443
    return-void

    .line 440
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 442
    .end local v0    # "origId":J
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public requestSplitPreview(ZZI)V
    .registers 5
    .param p1, "enablePreview"    # Z
    .param p2, "willbSplit"    # Z
    .param p3, "appListSize"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->requestSplitPreview(ZZI)V

    .line 338
    return-void
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setFocusAppByZone(I)V
    .registers 10
    .param p1, "zone"    # I

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 414
    .local v1, "origId":J
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 415
    :try_start_7
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 416
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 417
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 418
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_13

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_13

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-ne v5, p1, :cond_13

    .line 421
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 426
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_45
    monitor-exit v6
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_4a

    .line 427
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 428
    return-void

    .line 426
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_4a
    move-exception v5

    :try_start_4b
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v5
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 67
    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 68
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_11

    .line 69
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 71
    :cond_11
    monitor-exit v2

    .line 72
    return-void

    .line 71
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 3
    .param p1, "open"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mIsMWTrayOpen:Z

    .line 331
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setMultiWindowTrayOpenState(Z)V

    .line 332
    return-void
.end method

.method public setPreviewFullAppZone(I)V
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 390
    sget v0, Lcom/android/server/am/MultiWindowPolicy;->sPreviewNormalAppZone:I

    if-eq v0, p1, :cond_b

    .line 391
    sput p1, Lcom/android/server/am/MultiWindowPolicy;->sPreviewNormalAppZone:I

    .line 392
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestSplitPreviewTraversal()V

    .line 394
    :cond_b
    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 84
    const/4 v1, -0x1

    .line 85
    .local v1, "stackId":I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 86
    :try_start_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 87
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_c

    .line 88
    monitor-exit v4

    .line 103
    :cond_b
    :goto_b
    return-void

    .line 91
    :cond_c
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 92
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 93
    .local v2, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_35

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 94
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 95
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 98
    .end local v2    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3f

    .line 100
    const/4 v3, -0x1

    if-eq v1, v3, :cond_b

    .line 101
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_b

    .line 98
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 50
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 51
    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->resizeStackBox(Landroid/graphics/Point;)V

    .line 432
    return-void
.end method
