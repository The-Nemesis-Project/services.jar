.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;
.source "RemoteInjectionService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static mRemoteScreenHeight:I

.field private static mRemoteScreenWidth:I


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 90
    invoke-direct {p0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 94
    .local v1, "orientation":I
    if-eqz v1, :cond_16

    if-ne v1, v3, :cond_27

    :cond_16
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    :goto_1a
    sput v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 95
    if-eqz v1, :cond_20

    if-ne v1, v3, :cond_2c

    :cond_20
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    :goto_24
    sput v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 96
    return-void

    .line 94
    :cond_27
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    goto :goto_1a

    .line 95
    :cond_2c
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    goto :goto_24
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 286
    .local v1, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 288
    .local v3, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 289
    .local v5, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 290
    .local v6, "code":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 291
    .local v7, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 292
    .local v8, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    .line 293
    .local v9, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 294
    .local v10, "scancode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    .line 295
    .local v12, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 297
    .local v13, "flags":I
    if-nez v12, :cond_2c

    .line 298
    const/16 v12, 0x101

    .line 301
    :cond_2c
    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-nez v11, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 302
    :cond_36
    const-wide/16 v14, 0x0

    cmp-long v11, v1, v14

    if-nez v11, :cond_3d

    move-wide v1, v3

    .line 304
    :cond_3d
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v11, v13, 0x8

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 307
    .local v0, "newEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    if-eqz p2, :cond_50

    const/4 v11, 0x2

    :goto_4b
    invoke-virtual {v14, v0, v11}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v11

    return v11

    :cond_50
    const/4 v11, 0x1

    goto :goto_4b
.end method

.method private injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 313
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 314
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_11

    .line 315
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 318
    :cond_11
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1d

    const/4 v1, 0x2

    :goto_18
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1d
    const/4 v1, 0x1

    goto :goto_18
.end method

.method private injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 324
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 325
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_12

    .line 326
    const v1, 0x10004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 329
    :cond_12
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1e

    const/4 v1, 0x2

    :goto_19
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1e
    const/4 v1, 0x1

    goto :goto_19
.end method

.method private transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 340
    .local v15, "display":Landroid/view/Display;
    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    .line 341
    .local v17, "hwWidth":F
    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 342
    .local v16, "hwHeight":F
    invoke-virtual {v15}, Landroid/view/Display;->getRotation()I

    move-result v18

    .line 344
    .local v18, "orientation":I
    if-eqz v18, :cond_21

    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_6f

    :cond_21
    sget v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    int-to-float v0, v1

    move/from16 v20, v0

    .line 345
    .local v20, "remoteWidth":F
    :goto_26
    if-eqz v18, :cond_2d

    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_75

    :cond_2d
    sget v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    int-to-float v0, v1

    move/from16 v19, v0

    .line 348
    .local v19, "remoteHeight":F
    :goto_32
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float v2, v17, v20

    mul-float v6, v1, v2

    .line 349
    .local v6, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    div-float v2, v16, v19

    mul-float v7, v1, v2

    .line 351
    .local v7, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1

    .line 344
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v19    # "remoteHeight":F
    .end local v20    # "remoteWidth":F
    :cond_6f
    sget v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    int-to-float v0, v1

    move/from16 v20, v0

    goto :goto_26

    .line 345
    .restart local v20    # "remoteWidth":F
    :cond_75
    sget v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    int-to-float v0, v1

    move/from16 v19, v0

    goto :goto_32
.end method

.method public static updateRemoteScreenDimensions(II)V
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 359
    const-string v0, "RemoteInjection"

    const-string v1, "RemoteInjectionService: updateRemoteScreenDimensions()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sput p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 361
    sput p1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 362
    return-void
.end method


# virtual methods
.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_17

    .line 122
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_16
    return v2

    .line 128
    :cond_17
    iget-object v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v5, "Remote Control"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 134
    .local v8, "token":J
    const/4 v7, 0x0

    .line 137
    .local v7, "ret":Z
    :try_start_25
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_42

    move-result v7

    .line 142
    :goto_29
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    if-eqz v7, :cond_5c

    .line 145
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a keystroke event into the UI succeeded"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_40
    move v2, v7

    .line 152
    goto :goto_16

    .line 138
    :catch_42
    move-exception v6

    .line 139
    .local v6, "e":Ljava/lang/Exception;
    const-string v3, "RemoteInjection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error injecting trackball event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 148
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 179
    iget-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 186
    .local v9, "token":J
    const/4 v7, 0x0

    .line 189
    .local v7, "ret":Z
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 190
    .local v8, "tev":Landroid/view/MotionEvent;
    invoke-direct {p0, v8, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_30

    move-result v7

    .line 195
    .end local v8    # "tev":Landroid/view/MotionEvent;
    :goto_18
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    if-eqz v7, :cond_4a

    .line 198
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a pointer (touch) event into the UI succeeded"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_2f
    return v7

    .line 191
    :catch_30
    move-exception v6

    .line 192
    .local v6, "e":Ljava/lang/Exception;
    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 201
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4a
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a pointer (touch) event into the UI failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 232
    iget-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 239
    .local v9, "token":J
    const/4 v7, 0x0

    .line 242
    .local v7, "ret":Z
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 243
    .local v8, "tev":Landroid/view/MotionEvent;
    invoke-direct {p0, v8, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_30

    move-result v7

    .line 248
    .end local v8    # "tev":Landroid/view/MotionEvent;
    :goto_18
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    if-eqz v7, :cond_4a

    .line 251
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a trackball event into the UI succeeded"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_2f
    return v7

    .line 244
    :catch_30
    move-exception v6

    .line 245
    .local v6, "e":Ljava/lang/Exception;
    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 254
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4a
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a trackball event into the UI failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 266
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 272
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 282
    return-void
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 277
    return-void
.end method
