.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final SHOW_PERMISSION_DIALOG:I = 0x1

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WHITELIST_FILE:Ljava/lang/String; = "persist.sys.whitelist"

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mStrictEnable:Z

.field final mUidOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;>;"
        }
    .end annotation
.end field

.field final mWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "storagePath"    # Ljava/io/File;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 84
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 138
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 140
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 164
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 1291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    .line 206
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    .line 207
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 208
    new-instance v0, Lcom/android/server/AppOpsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 234
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readWhitelist()V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 236
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local p3, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p3, :cond_3

    .line 462
    :cond_2
    return-object p0

    .line 450
    :cond_3
    if-nez p0, :cond_a

    .line 451
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 453
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 454
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 455
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 456
    .local v2, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v2, :cond_27

    .line 457
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_27
    new-instance v3, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogResult$Result;
    .registers 12
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    .line 1170
    new-instance v4, Lcom/android/server/PermissionDialogResult$Result;

    invoke-direct {v4}, Lcom/android/server/PermissionDialogResult$Result;-><init>()V

    .line 1171
    .local v4, "result":Lcom/android/server/PermissionDialogResult$Result;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1172
    .local v2, "origId":J
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1173
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->what:I

    .line 1174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1175
    .local v0, "data":Ljava/util/HashMap;
    const-string v5, "result"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-string v5, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    const-string v5, "packageName"

    invoke-virtual {v0, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const-string v5, "op"

    invoke-virtual {v0, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string/jumbo v5, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1181
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1183
    return-object v4
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 14
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    const/4 v10, 0x0

    .line 314
    .local v10, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_2a

    .line 315
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .restart local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_9
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v0

    if-ge v9, v0, :cond_54

    .line 317
    invoke-virtual {p1, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 318
    .local v8, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v8, Lcom/android/server/AppOpsService$Op;->op:I

    iget v2, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v3, v8, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v5, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v7, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v0 .. v7}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 322
    .end local v8    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v9    # "j":I
    :cond_2a
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_2b
    array-length v0, p2

    if-ge v9, v0, :cond_54

    .line 323
    aget v0, p2, v9

    invoke-virtual {p1, v0}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 324
    .restart local v8    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v8, :cond_51

    .line 325
    if-nez v10, :cond_3f

    .line 326
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .restart local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_3f
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v8, Lcom/android/server/AppOpsService$Op;->op:I

    iget v2, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v3, v8, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v5, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v7, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v0 .. v7}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_51
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    .line 333
    .end local v8    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_54
    return-object v10
.end method

.method private getDefaultMode(IILjava/lang/String;)I
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1152
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->isStrict(IILjava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v0

    return v0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    .line 818
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 819
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_8

    .line 820
    const/4 v1, 0x0

    .line 822
    :goto_7
    return-object v1

    :cond_8
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_7
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .registers 8
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    .line 826
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 827
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_20

    .line 828
    if-nez p3, :cond_c

    .line 829
    const/4 v2, 0x0

    .line 838
    :goto_b
    return-object v2

    .line 831
    :cond_c
    iget v2, p1, Lcom/android/server/AppOpsService$Ops;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v0

    .line 832
    .local v0, "mode":I
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    iget v2, p1, Lcom/android/server/AppOpsService$Ops;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 833
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v1}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 835
    .end local v0    # "mode":I
    :cond_20
    if-eqz p3, :cond_25

    .line 836
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_25
    move-object v2, v1

    .line 838
    goto :goto_b
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    const/4 v6, 0x0

    .line 751
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 752
    .local v4, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v4, :cond_19

    .line 753
    if-nez p3, :cond_f

    move-object v3, v6

    .line 799
    :cond_e
    :goto_e
    return-object v3

    .line 756
    :cond_f
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 757
    .restart local v4    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 759
    :cond_19
    if-nez p1, :cond_29

    .line 760
    const-string p2, "root"

    .line 766
    :cond_1d
    :goto_1d
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 767
    .local v3, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v3, :cond_e

    .line 768
    if-nez p3, :cond_39

    move-object v3, v6

    .line 769
    goto :goto_e

    .line 761
    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_29
    const/16 v7, 0x7d0

    if-ne p1, v7, :cond_30

    .line 762
    const-string p2, "com.android.shell"

    goto :goto_1d

    .line 763
    :cond_30
    const/16 v7, 0x3e8

    if-ne p1, v7, :cond_1d

    if-nez p2, :cond_1d

    .line 764
    const-string p2, "android"

    goto :goto_1d

    .line 773
    .restart local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_39
    if-eqz p1, :cond_90

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 776
    .local v1, "ident":J
    const/4 v5, -0x1

    .line 778
    .local v5, "pkgUid":I
    :try_start_40
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_4d} :catch_81
    .catchall {:try_start_40 .. :try_end_4d} :catchall_9a

    move-result v5

    .line 785
    :cond_4e
    :goto_4e
    if-eq v5, p1, :cond_8d

    .line 788
    :try_start_50
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad call: specified package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " under uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but it is really "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_50 .. :try_end_7c} :catchall_9a

    .line 793
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v6

    goto :goto_e

    .line 780
    :catch_81
    move-exception v0

    .line 781
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_82
    const-string v7, "media"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_9a

    move-result v7

    if-eqz v7, :cond_4e

    .line 782
    const/16 v5, 0x3f5

    goto :goto_4e

    .line 793
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 796
    .end local v1    # "ident":J
    .end local v5    # "pkgUid":I
    :cond_90
    new-instance v3, Lcom/android/server/AppOpsService$Ops;

    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v3, p2, p1}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;I)V

    .line 797
    .restart local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 793
    .restart local v1    # "ident":J
    .restart local v5    # "pkgUid":I
    :catchall_9a
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private isInWhitelist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isStrict(IILjava/lang/String;)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1157
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    if-nez v1, :cond_6

    .line 1160
    :cond_5
    :goto_5
    return v0

    :cond_6
    const/16 v1, 0x2710

    if-le p2, v1, :cond_5

    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->isInWhitelist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    .line 1187
    if-eqz p1, :cond_b

    .line 1188
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 1189
    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    .line 1199
    .end local v0    # "switchCode":I
    :cond_b
    :goto_b
    return-void

    .line 1193
    .restart local v0    # "switchCode":I
    :cond_c
    if-nez p2, :cond_b

    goto :goto_b
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 10
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 383
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    .line 384
    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 385
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_3a

    .line 386
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v2}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 387
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-gtz v2, :cond_3a

    .line 388
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 389
    .local v1, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_3a

    .line 390
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_3a

    .line 392
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 398
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_3a
    return-void
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .registers 14
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 1203
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1204
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_2f

    .line 1205
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v4, :cond_12

    .line 1206
    const-string v4, "noteOperartion"

    invoke-direct {p0, v2, p4, v4}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1207
    :cond_12
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v4, :cond_1c

    .line 1208
    const-string/jumbo v4, "startOperation"

    invoke-direct {p0, v2, p4, v4}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1209
    :cond_1c
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 1210
    .local v3, "switchCode":I
    const/4 v4, 0x1

    if-ne p4, v4, :cond_30

    .line 1211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1236
    :cond_2b
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 1237
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 1239
    .end local v3    # "switchCode":I
    :cond_2f
    return-void

    .line 1212
    .restart local v3    # "switchCode":I
    :cond_30
    if-nez p4, :cond_2b

    .line 1213
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v4, :cond_3e

    .line 1214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1215
    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1217
    :cond_3e
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v4, :cond_2b

    .line 1218
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v4, :cond_51

    .line 1219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1220
    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1221
    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1223
    :cond_51
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget v5, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1224
    :goto_58
    iget-object v4, v2, Lcom/android/server/AppOpsService$Op;->mClientTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 1225
    iget-object v4, v2, Lcom/android/server/AppOpsService$Op;->mClientTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 1226
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1227
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    if-eqz v0, :cond_7b

    .line 1228
    iget-object v4, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v4, :cond_7b

    .line 1229
    iget-object v4, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_7b
    iget-object v4, v2, Lcom/android/server/AppOpsService$Op;->mClientTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_58
.end method

.method private scheduleWriteLocked()V
    .registers 5

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_11

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 805
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 807
    :cond_11
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .registers 3

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_7

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 813
    :cond_7
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 814
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 815
    return-void
.end method

.method private verifyIncomingOp(I)V
    .registers 5
    .param p1, "op"    # I

    .prologue
    .line 744
    if-ltz p1, :cond_7

    const/16 v0, 0x31

    if-ge p1, v0, :cond_7

    .line 745
    return-void

    .line 747
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 741
    :cond_6
    :goto_6
    return-void

    .line 736
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 739
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public checkOperation(IILjava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 588
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 589
    monitor-enter p0

    .line 590
    :try_start_7
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 591
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_18

    .line 592
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v1

    monitor-exit p0

    .line 594
    :goto_17
    return v1

    :cond_18
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_17

    .line 595
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 600
    monitor-enter p0

    .line 601
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 602
    const/4 v0, 0x0

    monitor-exit p0

    .line 604
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x2

    monitor-exit p0

    goto :goto_a

    .line 606
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1054
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_37

    .line 1056
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    :goto_36
    return-void

    .line 1062
    :cond_37
    monitor-enter p0

    .line 1063
    :try_start_38
    const-string v12, "Current AppOps Service state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1065
    .local v7, "now":J
    const/4 v6, 0x0

    .line 1066
    .local v6, "needSep":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-lez v12, :cond_b3

    .line 1067
    const/4 v6, 0x1

    .line 1068
    const-string v12, "  Op mode watchers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_57
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v3, v12, :cond_b3

    .line 1070
    const-string v12, "    Op "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1073
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_8b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_b0

    .line 1074
    const-string v12, "      #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1073
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    .line 1069
    :cond_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 1079
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_b3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lez v12, :cond_120

    .line 1080
    const/4 v6, 0x1

    .line 1081
    const-string v12, "  Package mode watchers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_c6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v3, v12, :cond_120

    .line 1083
    const-string v12, "    Pkg "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1086
    .restart local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_f8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_11d

    .line 1087
    const-string v12, "      #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1086
    add-int/lit8 v5, v5, 0x1

    goto :goto_f8

    .line 1082
    :cond_11d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c6

    .line 1092
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lez v12, :cond_168

    .line 1093
    const/4 v6, 0x1

    .line 1094
    const-string v12, "  All mode watchers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v3, v12, :cond_168

    .line 1096
    const-string v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1097
    const-string v12, " -> "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1095
    add-int/lit8 v3, v3, 0x1

    goto :goto_133

    .line 1100
    .end local v3    # "i":I
    :cond_168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lez v12, :cond_217

    .line 1101
    const/4 v6, 0x1

    .line 1102
    const-string v12, "  Clients:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_17b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v3, v12, :cond_217

    .line 1104
    const-string v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientState;

    .line 1106
    .local v2, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string v12, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1107
    iget-object v12, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v12, :cond_213

    iget-object v12, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_213

    .line 1108
    const-string v12, "      Started ops:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_1ca
    iget-object v12, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_213

    .line 1110
    iget-object v12, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 1111
    .local v9, "op":Lcom/android/server/AppOpsService$Op;
    const-string v12, "        "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "uid="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->uid:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1112
    const-string v12, " pkg="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    const-string v12, " op="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ca

    .line 1103
    .end local v5    # "j":I
    .end local v9    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_213
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17b

    .line 1118
    .end local v2    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v3    # "i":I
    :cond_217
    if-eqz v6, :cond_21c

    .line 1119
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1121
    :cond_21c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_21d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v3, v12, :cond_309

    .line 1122
    const-string v12, "  Uid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 1124
    .local v11, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_254
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_305

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Ops;

    .line 1125
    .local v10, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string v12, "    Package "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v10, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_276
    invoke-virtual {v10}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v12

    if-ge v5, v12, :cond_254

    .line 1127
    invoke-virtual {v10, v5}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 1128
    .restart local v9    # "op":Lcom/android/server/AppOpsService$Op;
    const-string v12, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1129
    const-string v12, ": mode="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1130
    iget-wide v12, v9, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2c1

    .line 1131
    const-string v12, "; time="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v9, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long v12, v7, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1132
    const-string v12, " ago"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    :cond_2c1
    iget-wide v12, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2e0

    .line 1135
    const-string v12, "; rejectTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    sub-long v12, v7, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1136
    const-string v12, " ago"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    :cond_2e0
    iget v12, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2ef

    .line 1139
    const-string v12, " (running)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    :goto_2ec
    add-int/lit8 v5, v5, 0x1

    goto :goto_276

    .line 1141
    :cond_2ef
    const-string v12, "; duration="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1142
    iget v12, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v12, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2ec

    .line 1148
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "j":I
    .end local v6    # "needSep":Z
    .end local v7    # "now":J
    .end local v9    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v10    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v11    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_302
    move-exception v12

    monitor-exit p0
    :try_end_304
    .catchall {:try_start_38 .. :try_end_304} :catchall_302

    throw v12

    .line 1121
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "needSep":Z
    .restart local v7    # "now":J
    .restart local v11    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_305
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_21d

    .line 1148
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v11    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_309
    :try_start_309
    monitor-exit p0
    :try_end_30a
    .catchall {:try_start_309 .. :try_end_30a} :catchall_302

    goto/16 :goto_36
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 698
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 699
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object v0, p1

    .line 700
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 701
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 702
    const/4 v2, 0x1

    :try_start_b
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 703
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_13

    .line 704
    monitor-exit p0

    .line 714
    :goto_12
    return-void

    .line 706
    :cond_13
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v2, :cond_55

    .line 707
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 708
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 713
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_52
    move-exception v2

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_52

    throw v2

    .line 712
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_55
    :try_start_55
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    .line 713
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_52

    goto :goto_12
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .registers 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 717
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_76

    .line 718
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_1f

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 720
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 726
    :goto_1b
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 730
    :goto_1e
    return-void

    .line 722
    :cond_1f
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 728
    :cond_76
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1e
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 365
    monitor-enter p0

    .line 366
    const/4 v4, 0x0

    :try_start_12
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 367
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_1a

    .line 368
    monitor-exit p0

    .line 378
    :goto_19
    return-object v1

    .line 370
    :cond_1a
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 371
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_25

    .line 372
    monitor-exit p0

    goto :goto_19

    .line 379
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :catchall_22
    move-exception v4

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw v4

    .line 374
    .restart local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_25
    :try_start_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 377
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_22

    goto :goto_19
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 15
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    :try_start_13
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_57

    .line 343
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 344
    .local v2, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_59

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    move-object v5, v4

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2c
    :try_start_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 345
    .local v3, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {p0, v3, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v6

    .line 346
    .local v6, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v6, :cond_61

    .line 347
    if-nez v5, :cond_5f

    .line 348
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_5c

    .line 350
    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_45
    :try_start_45
    new-instance v7, Landroid/app/AppOpsManager$PackageOps;

    iget-object v8, v3, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v7, v8, v9, v6}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 352
    .local v7, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v7    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_51
    move-object v5, v4

    .line 354
    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2c

    .line 342
    .end local v3    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v6    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_53
    add-int/lit8 v0, v0, 0x1

    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_13

    .line 356
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_57
    monitor-exit p0

    .line 357
    return-object v4

    .line 356
    :catchall_59
    move-exception v8

    :goto_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_59

    throw v8

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_5c
    move-exception v8

    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5a

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v3    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_5f
    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_45

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_61
    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_51
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 575
    monitor-enter p0

    .line 576
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 577
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_15

    .line 578
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 579
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_15
    monitor-exit p0

    return-object v0

    .line 582
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 16
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 612
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 613
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 614
    monitor-enter p0

    .line 615
    const/4 v7, 0x1

    :try_start_b
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 616
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v1, :cond_13

    .line 619
    monitor-exit p0

    .line 647
    :goto_12
    return v5

    .line 621
    :cond_13
    const/4 v7, 0x1

    invoke-direct {p0, v1, p1, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 622
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    iget v7, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_61

    .line 623
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Noting op not finished: uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_61
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 627
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    .line 628
    .local v2, "switchCode":I
    if-eq v2, p1, :cond_84

    const/4 v7, 0x1

    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .line 629
    .local v3, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_6f
    iget v7, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v7, v11, :cond_77

    iget v7, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v7, v5, :cond_86

    .line 633
    :cond_77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 634
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_12

    .line 646
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "switchCode":I
    .end local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :catchall_81
    move-exception v5

    monitor-exit p0
    :try_end_83
    .catchall {:try_start_b .. :try_end_83} :catchall_81

    throw v5

    .restart local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "switchCode":I
    :cond_84
    move-object v3, v0

    .line 628
    goto :goto_6f

    .line 635
    .restart local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_86
    :try_start_86
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v5, :cond_98

    .line 638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 639
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 640
    monitor-exit p0

    move v5, v6

    goto/16 :goto_12

    .line 642
    :cond_98
    iget v5, v0, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 643
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogResult$Result;

    move-result-object v4

    .line 646
    .local v4, "userDialogResult":Lcom/android/server/PermissionDialogResult$Result;
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_86 .. :try_end_a3} :catchall_81

    .line 647
    invoke-virtual {v4}, Lcom/android/server/PermissionDialogResult$Result;->get()I

    move-result v5

    goto/16 :goto_12
.end method

.method public notifyOperation(IILjava/lang/String;IZ)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "remember"    # Z

    .prologue
    .line 1243
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1244
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1245
    const/4 v3, 0x0

    .line 1246
    .local v3, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    .line 1247
    .local v5, "switchCode":I
    monitor-enter p0

    .line 1248
    :try_start_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->recordOperationLocked(IILjava/lang/String;I)V

    .line 1249
    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1250
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_6a

    .line 1252
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogResult:Lcom/android/server/PermissionDialogResult;

    iget-object v6, v6, Lcom/android/server/PermissionDialogResult;->mDialog:Lcom/android/server/PermissionDialog;

    if-eqz v6, :cond_26

    .line 1253
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogResult:Lcom/android/server/PermissionDialogResult;

    invoke-virtual {v6, p4}, Lcom/android/server/PermissionDialogResult;->notifyAll(I)V

    .line 1254
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogResult:Lcom/android/server/PermissionDialogResult;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/PermissionDialogResult;->mDialog:Lcom/android/server/PermissionDialog;

    .line 1256
    :cond_26
    if-eqz p5, :cond_6a

    iget v6, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v6, p4, :cond_6a

    .line 1257
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1258
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1259
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_43

    .line 1260
    if-nez v3, :cond_40

    .line 1261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v3, v4

    .line 1263
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_40
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_82

    :cond_43
    move-object v4, v3

    .line 1265
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_44
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v6, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 1266
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_8d

    .line 1267
    if-nez v4, :cond_8b

    .line 1268
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_88

    .line 1270
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_55
    :try_start_55
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1272
    :goto_58
    iget v6, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v8, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v6

    if-ne p4, v6, :cond_67

    .line 1275
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1277
    :cond_67
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 1280
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_82

    .line 1281
    if-eqz v3, :cond_85

    .line 1282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_85

    .line 1284
    :try_start_74
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Callback;

    iget-object v6, v6, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v6, v5, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7f} :catch_86

    .line 1282
    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 1280
    .end local v1    # "i":I
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_82
    move-exception v6

    :goto_83
    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v6

    .line 1289
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_85
    return-void

    .line 1285
    .restart local v1    # "i":I
    :catch_86
    move-exception v6

    goto :goto_7f

    .line 1280
    .end local v1    # "i":I
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_88
    move-exception v6

    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_83

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8b
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_55

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8d
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_58
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 276
    monitor-enter p0

    .line 277
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 278
    .local v0, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v0, :cond_1f

    .line 279
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 280
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1c

    .line 281
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 283
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 286
    :cond_1f
    monitor-exit p0

    .line 287
    return-void

    .line 286
    .end local v0    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_21
    move-exception v1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 240
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 241
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 909
    const/4 v4, 0x0

    const-string v5, "n"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 913
    .local v0, "outerDepth":I
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_51

    if-ne v3, v7, :cond_1b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_51

    .line 914
    :cond_1b
    if-eq v3, v7, :cond_c

    const/4 v4, 0x4

    if-eq v3, v4, :cond_c

    .line 918
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 919
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 920
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_c

    .line 922
    :cond_31
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    .line 927
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method readState()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 842
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v8

    .line 843
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_76

    .line 846
    :try_start_7
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_4e
    .catchall {:try_start_7 .. :try_end_c} :catchall_1a2

    move-result-object v3

    .line 851
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 853
    .local v4, "success":Z
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 854
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 857
    :cond_16
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_1e

    if-ne v6, v11, :cond_16

    .line 861
    :cond_1e
    if-eq v6, v9, :cond_79

    .line 862
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "no start tag found"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_28} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_28} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_28} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_28} :catch_11e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_28} :catch_146
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_28} :catch_16e
    .catchall {:try_start_e .. :try_end_28} :catchall_196

    .line 882
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_28
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_29
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_196

    .line 895
    if-nez v4, :cond_48

    .line 896
    :try_start_43
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_1a2

    .line 899
    :cond_48
    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_1a5
    .catchall {:try_start_48 .. :try_end_4b} :catchall_1a2

    .line 903
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_1a2

    .line 904
    :try_start_4c
    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_76

    .line 905
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :goto_4d
    return-void

    .line 847
    :catch_4e
    move-exception v0

    .line 848
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No existing app ops "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; starting empty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_4f .. :try_end_74} :catchall_1a2

    :try_start_74
    monitor-exit v8

    goto :goto_4d

    .line 904
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_76
    move-exception v7

    monitor-exit v8
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_76

    throw v7

    .line 865
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    .restart local v6    # "type":I
    :cond_79
    :try_start_79
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 867
    .local v1, "outerDepth":I
    :cond_7d
    :goto_7d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_10e

    if-ne v6, v12, :cond_8b

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_10e

    .line 868
    :cond_8b
    if-eq v6, v12, :cond_7d

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7d

    .line 872
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 873
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "pkg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 874
    invoke-virtual {p0, v2}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9f
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_9f} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_79 .. :try_end_9f} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_9f} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_9f} :catch_11e
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_9f} :catch_146
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_79 .. :try_end_9f} :catch_16e
    .catchall {:try_start_79 .. :try_end_9f} :catchall_196

    goto :goto_7d

    .line 884
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_a0
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_a1
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_196

    .line 895
    if-nez v4, :cond_c0

    .line 896
    :try_start_bb
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_1a2

    .line 899
    :cond_c0
    :try_start_c0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_1a2

    goto :goto_4b

    .line 900
    :catch_c4
    move-exception v7

    goto :goto_4b

    .line 876
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_c6
    :try_start_c6
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e5
    .catch Ljava/lang/IllegalStateException; {:try_start_c6 .. :try_end_e5} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_c6 .. :try_end_e5} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_c6 .. :try_end_e5} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c6 .. :try_end_e5} :catch_11e
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_e5} :catch_146
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c6 .. :try_end_e5} :catch_16e
    .catchall {:try_start_c6 .. :try_end_e5} :catchall_196

    goto :goto_7d

    .line 886
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_e6
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_e7
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_e7 .. :try_end_ff} :catchall_196

    .line 895
    if-nez v4, :cond_106

    .line 896
    :try_start_101
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_1a2

    .line 899
    :cond_106
    :try_start_106
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10b
    .catchall {:try_start_106 .. :try_end_109} :catchall_1a2

    goto/16 :goto_4b

    .line 900
    :catch_10b
    move-exception v7

    goto/16 :goto_4b

    .line 881
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_10e
    const/4 v4, 0x1

    .line 895
    if-nez v4, :cond_116

    .line 896
    :try_start_111
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_116
    .catchall {:try_start_111 .. :try_end_116} :catchall_1a2

    .line 899
    :cond_116
    :try_start_116
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_11b
    .catchall {:try_start_116 .. :try_end_119} :catchall_1a2

    goto/16 :goto_4b

    .line 900
    :catch_11b
    move-exception v7

    goto/16 :goto_4b

    .line 888
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_11e
    move-exception v0

    .line 889
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_11f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_11f .. :try_end_137} :catchall_196

    .line 895
    if-nez v4, :cond_13e

    .line 896
    :try_start_139
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_13e
    .catchall {:try_start_139 .. :try_end_13e} :catchall_1a2

    .line 899
    :cond_13e
    :try_start_13e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_143
    .catchall {:try_start_13e .. :try_end_141} :catchall_1a2

    goto/16 :goto_4b

    .line 900
    :catch_143
    move-exception v7

    goto/16 :goto_4b

    .line 890
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_146
    move-exception v0

    .line 891
    .local v0, "e":Ljava/io/IOException;
    :try_start_147
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15f
    .catchall {:try_start_147 .. :try_end_15f} :catchall_196

    .line 895
    if-nez v4, :cond_166

    .line 896
    :try_start_161
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_166
    .catchall {:try_start_161 .. :try_end_166} :catchall_1a2

    .line 899
    :cond_166
    :try_start_166
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_16b
    .catchall {:try_start_166 .. :try_end_169} :catchall_1a2

    goto/16 :goto_4b

    .line 900
    :catch_16b
    move-exception v7

    goto/16 :goto_4b

    .line 892
    .end local v0    # "e":Ljava/io/IOException;
    :catch_16e
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_16f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_187
    .catchall {:try_start_16f .. :try_end_187} :catchall_196

    .line 895
    if-nez v4, :cond_18e

    .line 896
    :try_start_189
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_18e
    .catchall {:try_start_189 .. :try_end_18e} :catchall_1a2

    .line 899
    :cond_18e
    :try_start_18e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_193
    .catchall {:try_start_18e .. :try_end_191} :catchall_1a2

    goto/16 :goto_4b

    .line 900
    :catch_193
    move-exception v7

    goto/16 :goto_4b

    .line 895
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_196
    move-exception v7

    if-nez v4, :cond_19e

    .line 896
    :try_start_199
    iget-object v9, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V
    :try_end_19e
    .catchall {:try_start_199 .. :try_end_19e} :catchall_1a2

    .line 899
    :cond_19e
    :try_start_19e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_1a8
    .catchall {:try_start_19e .. :try_end_1a1} :catchall_1a2

    .line 901
    :goto_1a1
    :try_start_1a1
    throw v7

    .line 903
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :catchall_1a2
    move-exception v7

    monitor-exit p0
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_1a2

    :try_start_1a4
    throw v7
    :try_end_1a5
    .catchall {:try_start_1a4 .. :try_end_1a5} :catchall_76

    .line 900
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    :catch_1a5
    move-exception v7

    goto/16 :goto_4b

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1a8
    move-exception v9

    goto :goto_1a1
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v14, 0x0

    const-string v15, "n"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 932
    .local v13, "uid":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 935
    .local v8, "outerDepth":I
    :cond_11
    :goto_11
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_ea

    const/4 v14, 0x3

    if-ne v12, v14, :cond_21

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_ea

    .line 936
    :cond_21
    const/4 v14, 0x3

    if-eq v12, v14, :cond_11

    const/4 v14, 0x4

    if-eq v12, v14, :cond_11

    .line 940
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 941
    .local v10, "tagName":Ljava/lang/String;
    const-string v14, "op"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c9

    .line 942
    const/4 v14, 0x0

    const-string v15, "n"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 943
    .local v2, "code":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v13, v1}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v3

    .line 944
    .local v3, "defaultMode":I
    new-instance v6, Lcom/android/server/AppOpsService$Op;

    move-object/from16 v0, p2

    invoke-direct {v6, v13, v0, v2, v3}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 945
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    const/4 v14, 0x0

    const-string v15, "m"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 946
    .local v5, "mode":Ljava/lang/String;
    if-eqz v5, :cond_60

    .line 947
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 949
    :cond_60
    const/4 v14, 0x0

    const-string/jumbo v15, "t"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 950
    .local v11, "time":Ljava/lang/String;
    if-eqz v11, :cond_72

    .line 951
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->time:J

    .line 953
    :cond_72
    const/4 v14, 0x0

    const-string v15, "r"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 954
    if-eqz v11, :cond_83

    .line 955
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 957
    :cond_83
    const/4 v14, 0x0

    const-string v15, "d"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 958
    .local v4, "dur":Ljava/lang/String;
    if-eqz v4, :cond_94

    .line 959
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 961
    :cond_94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 962
    .local v9, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v9, :cond_ac

    .line 963
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 964
    .restart local v9    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v14, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 966
    :cond_ac
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 967
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_c2

    .line 968
    new-instance v7, Lcom/android/server/AppOpsService$Ops;

    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    invoke-direct {v7, v0, v13}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;I)V

    .line 969
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    :cond_c2
    iget v14, v6, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v7, v14, v6}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 973
    .end local v2    # "code":I
    .end local v3    # "defaultMode":I
    .end local v4    # "dur":Ljava/lang/String;
    .end local v5    # "mode":Ljava/lang/String;
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v9    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v11    # "time":Ljava/lang/String;
    :cond_c9
    const-string v14, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown element under <pkg>: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_11

    .line 978
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_ea
    return-void
.end method

.method readWhitelist()V
    .registers 15

    .prologue
    .line 1295
    const-string v11, "persist.sys.whitelist"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1296
    .local v10, "whitelistFileName":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    if-eqz v11, :cond_12

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 1368
    :cond_12
    :goto_12
    return-void

    .line 1299
    :cond_13
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v9, "whitelistFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1301
    .local v1, "mWhitelistFile":Landroid/util/AtomicFile;
    monitor-enter v1

    .line 1302
    :try_start_1e
    monitor-enter p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_67

    .line 1305
    :try_start_1f
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_22} :catch_6a
    .catchall {:try_start_1f .. :try_end_22} :catchall_1bf

    move-result-object v5

    .line 1311
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1313
    .local v6, "success":Z
    :try_start_24
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1314
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v3, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1317
    :cond_2c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v11, 0x2

    if-eq v8, v11, :cond_36

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2c

    .line 1321
    :cond_36
    const/4 v11, 0x2

    if-eq v8, v11, :cond_8a

    .line 1322
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "no start tag found"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_41} :catch_41
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_41} :catch_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_41} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_41} :catch_13b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_41} :catch_163
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24 .. :try_end_41} :catch_18b
    .catchall {:try_start_24 .. :try_end_41} :catchall_1b3

    .line 1345
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_41
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_42
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_1b3

    .line 1358
    if-nez v6, :cond_61

    .line 1359
    :try_start_5c
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_1bf

    .line 1362
    :cond_61
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_1c2
    .catchall {:try_start_61 .. :try_end_64} :catchall_1bf

    .line 1366
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_64
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_1bf

    .line 1367
    :try_start_65
    monitor-exit v1

    goto :goto_12

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "success":Z
    :catchall_67
    move-exception v11

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_67

    throw v11

    .line 1306
    :catch_6a
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_6b
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No existing app ops whitelist "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_6b .. :try_end_88} :catchall_1bf

    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_67

    goto :goto_12

    .line 1325
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "success":Z
    .restart local v8    # "type":I
    :cond_8a
    :try_start_8a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1327
    .local v2, "outerDepth":I
    :cond_8e
    :goto_8e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_12b

    const/4 v11, 0x3

    if-ne v8, v11, :cond_9e

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v2, :cond_12b

    .line 1329
    :cond_9e
    const/4 v11, 0x3

    if-eq v8, v11, :cond_8e

    const/4 v11, 0x4

    if-eq v8, v11, :cond_8e

    .line 1334
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1335
    .local v7, "tagName":Ljava/lang/String;
    const-string v11, "pkg"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e3

    .line 1336
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1337
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catch Ljava/lang/IllegalStateException; {:try_start_8a .. :try_end_bc} :catch_41
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_bc} :catch_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_bc} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8a .. :try_end_bc} :catch_13b
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_bc} :catch_163
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8a .. :try_end_bc} :catch_18b
    .catchall {:try_start_8a .. :try_end_bc} :catchall_1b3

    goto :goto_8e

    .line 1347
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_bd
    move-exception v0

    .line 1348
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_be
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_be .. :try_end_d6} :catchall_1b3

    .line 1358
    if-nez v6, :cond_dd

    .line 1359
    :try_start_d8
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_dd
    .catchall {:try_start_d8 .. :try_end_dd} :catchall_1bf

    .line 1362
    :cond_dd
    :try_start_dd
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1
    .catchall {:try_start_dd .. :try_end_e0} :catchall_1bf

    goto :goto_64

    .line 1363
    :catch_e1
    move-exception v11

    goto :goto_64

    .line 1339
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_e3
    :try_start_e3
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <whitelist-pkgs>: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_102
    .catch Ljava/lang/IllegalStateException; {:try_start_e3 .. :try_end_102} :catch_41
    .catch Ljava/lang/NullPointerException; {:try_start_e3 .. :try_end_102} :catch_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_e3 .. :try_end_102} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e3 .. :try_end_102} :catch_13b
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_102} :catch_163
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e3 .. :try_end_102} :catch_18b
    .catchall {:try_start_e3 .. :try_end_102} :catchall_1b3

    goto :goto_8e

    .line 1349
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_103
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_104
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_104 .. :try_end_11c} :catchall_1b3

    .line 1358
    if-nez v6, :cond_123

    .line 1359
    :try_start_11e
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_123
    .catchall {:try_start_11e .. :try_end_123} :catchall_1bf

    .line 1362
    :cond_123
    :try_start_123
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_128
    .catchall {:try_start_123 .. :try_end_126} :catchall_1bf

    goto/16 :goto_64

    .line 1363
    :catch_128
    move-exception v11

    goto/16 :goto_64

    .line 1344
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_12b
    const/4 v6, 0x1

    .line 1358
    if-nez v6, :cond_133

    .line 1359
    :try_start_12e
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_133
    .catchall {:try_start_12e .. :try_end_133} :catchall_1bf

    .line 1362
    :cond_133
    :try_start_133
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_138
    .catchall {:try_start_133 .. :try_end_136} :catchall_1bf

    goto/16 :goto_64

    .line 1363
    :catch_138
    move-exception v11

    goto/16 :goto_64

    .line 1351
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_13b
    move-exception v0

    .line 1352
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_13c
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catchall {:try_start_13c .. :try_end_154} :catchall_1b3

    .line 1358
    if-nez v6, :cond_15b

    .line 1359
    :try_start_156
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_15b
    .catchall {:try_start_156 .. :try_end_15b} :catchall_1bf

    .line 1362
    :cond_15b
    :try_start_15b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_160
    .catchall {:try_start_15b .. :try_end_15e} :catchall_1bf

    goto/16 :goto_64

    .line 1363
    :catch_160
    move-exception v11

    goto/16 :goto_64

    .line 1353
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_163
    move-exception v0

    .line 1354
    .local v0, "e":Ljava/io/IOException;
    :try_start_164
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17c
    .catchall {:try_start_164 .. :try_end_17c} :catchall_1b3

    .line 1358
    if-nez v6, :cond_183

    .line 1359
    :try_start_17e
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_183
    .catchall {:try_start_17e .. :try_end_183} :catchall_1bf

    .line 1362
    :cond_183
    :try_start_183
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_188
    .catchall {:try_start_183 .. :try_end_186} :catchall_1bf

    goto/16 :goto_64

    .line 1363
    :catch_188
    move-exception v11

    goto/16 :goto_64

    .line 1355
    .end local v0    # "e":Ljava/io/IOException;
    :catch_18b
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_18c
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a4
    .catchall {:try_start_18c .. :try_end_1a4} :catchall_1b3

    .line 1358
    if-nez v6, :cond_1ab

    .line 1359
    :try_start_1a6
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_1ab
    .catchall {:try_start_1a6 .. :try_end_1ab} :catchall_1bf

    .line 1362
    :cond_1ab
    :try_start_1ab
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1ae} :catch_1b0
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1bf

    goto/16 :goto_64

    .line 1363
    :catch_1b0
    move-exception v11

    goto/16 :goto_64

    .line 1358
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1b3
    move-exception v11

    if-nez v6, :cond_1bb

    .line 1359
    :try_start_1b6
    iget-object v12, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V
    :try_end_1bb
    .catchall {:try_start_1b6 .. :try_end_1bb} :catchall_1bf

    .line 1362
    :cond_1bb
    :try_start_1bb
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1be} :catch_1c5
    .catchall {:try_start_1bb .. :try_end_1be} :catchall_1bf

    .line 1364
    :goto_1be
    :try_start_1be
    throw v11

    .line 1366
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "success":Z
    :catchall_1bf
    move-exception v11

    monitor-exit p0
    :try_end_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_1bf

    :try_start_1c1
    throw v11
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_67

    .line 1363
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "success":Z
    :catch_1c2
    move-exception v11

    goto/16 :goto_64

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1c5
    move-exception v12

    goto :goto_1be
.end method

.method public resetAllModes()V
    .registers 25

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 469
    const/4 v4, 0x0

    .line 470
    .local v4, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    monitor-enter p0

    .line 471
    const/4 v6, 0x0

    .line 472
    .local v6, "changed":Z
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .local v10, "i":I
    :goto_24
    if-ltz v10, :cond_127

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    .line 474
    .local v15, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 475
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_3c
    :goto_3c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_112

    .line 476
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 477
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 478
    .local v14, "packageName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$Ops;

    .line 479
    .local v16, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    .local v13, "j":I
    :goto_5a
    if-ltz v13, :cond_104

    .line 480
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Op;

    .line 481
    .local v7, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v19

    if-eqz v19, :cond_100

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v19, v0

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v21, v0

    iget-object v0, v7, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_100

    .line 483
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v19, v0

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v20, v0

    iget-object v0, v7, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 484
    const/4 v6, 0x1

    .line 485
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v4, v14, v0, v1}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    .line 487
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v4, v14, v0, v1}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    .line 489
    iget-wide v0, v7, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_100

    iget-wide v0, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_100

    .line 490
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 479
    :cond_100
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_5a

    .line 494
    .end local v7    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_104
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v19

    if-nez v19, :cond_3c

    .line 495
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_3c

    .line 505
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v10    # "i":I
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v13    # "j":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v16    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    :catchall_10f
    move-exception v19

    monitor-exit p0
    :try_end_111
    .catchall {:try_start_18 .. :try_end_111} :catchall_10f

    throw v19

    .line 498
    .restart local v10    # "i":I
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v15    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_112
    :try_start_112
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v19

    if-nez v19, :cond_123

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->removeAt(I)V

    .line 472
    :cond_123
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_24

    .line 502
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v15    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_127
    if-eqz v6, :cond_12c

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 505
    :cond_12c
    monitor-exit p0
    :try_end_12d
    .catchall {:try_start_112 .. :try_end_12d} :catchall_10f

    .line 506
    if-eqz v4, :cond_184

    .line 507
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_137
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_184

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 508
    .local v8, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    .line 509
    .local v5, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 510
    .local v18, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v10, 0x0

    :goto_150
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_137

    .line 511
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Pair;

    .line 513
    .local v17, "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_160
    iget-object v0, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_181
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_181} :catch_185

    .line 510
    :goto_181
    add-int/lit8 v10, v10, 0x1

    goto :goto_150

    .line 519
    .end local v5    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v8    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_184
    return-void

    .line 514
    .restart local v5    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v8    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v17    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v18    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_185
    move-exception v19

    goto :goto_181
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 402
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 404
    const/4 v3, 0x0

    .line 405
    .local v3, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 406
    monitor-enter p0

    .line 407
    const/4 v5, 0x1

    :try_start_d
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 408
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_55

    .line 409
    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v5, p4, :cond_55

    .line 410
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 411
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 412
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_2e

    .line 413
    if-nez v3, :cond_2b

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v3, v4

    .line 416
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_6d

    :cond_2e
    move-object v4, v3

    .line 418
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_2f
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 419
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_78

    .line 420
    if-nez v4, :cond_76

    .line 421
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_73

    .line 423
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_40
    :try_start_40
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 425
    :goto_43
    iget v5, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v7, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v5

    if-ne p4, v5, :cond_52

    .line 428
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 430
    :cond_52
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 433
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_6d

    .line 434
    if-eqz v3, :cond_70

    .line 435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_70

    .line 437
    :try_start_5f
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    iget-object v5, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, p1, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6a} :catch_71

    .line 435
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 433
    .end local v1    # "i":I
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_6d
    move-exception v5

    :goto_6e
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v5

    .line 442
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_70
    return-void

    .line 438
    .restart local v1    # "i":I
    :catch_71
    move-exception v5

    goto :goto_6a

    .line 433
    .end local v1    # "i":I
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_73
    move-exception v5

    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_6e

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_76
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_40

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_78
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_43
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 299
    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 302
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_11

    .line 303
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 304
    const/4 v0, 0x1

    .line 306
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 307
    if-eqz v0, :cond_17

    .line 308
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 310
    :cond_17
    return-void

    .line 306
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    .line 653
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 654
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object v0, p1

    .line 655
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 656
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 657
    const/4 v8, 0x1

    :try_start_d
    invoke-direct {p0, p3, p4, v8}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v3

    .line 658
    .local v3, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v3, :cond_15

    .line 661
    monitor-exit p0

    .line 693
    :goto_14
    return v7

    .line 663
    :cond_15
    const/4 v8, 0x1

    invoke-direct {p0, v3, p2, v8}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 664
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 665
    .local v4, "switchCode":I
    if-eq v4, p2, :cond_3a

    const/4 v8, 0x1

    invoke-direct {p0, v3, v4, v8}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v5

    .line 666
    .local v5, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_25
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v8, v9, :cond_2d

    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v8, v7, :cond_3c

    .line 670
    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 671
    iget v7, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_14

    .line 692
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v4    # "switchCode":I
    .end local v5    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :catchall_37
    move-exception v7

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_37

    throw v7

    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v4    # "switchCode":I
    :cond_3a
    move-object v5, v2

    .line 665
    goto :goto_25

    .line 672
    .restart local v5    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_3c
    :try_start_3c
    iget v7, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v7, :cond_63

    .line 675
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v7, :cond_51

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 677
    const-wide/16 v7, 0x0

    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 678
    const/4 v7, -0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 680
    :cond_51
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 681
    iget-object v7, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v7, :cond_60

    .line 682
    iget-object v7, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_60
    const/4 v7, 0x0

    monitor-exit p0

    goto :goto_14

    .line 686
    :cond_63
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 687
    iget-object v1, v0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 688
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v7, v2, Lcom/android/server/AppOpsService$Op;->mClientTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogResult$Result;

    move-result-object v6

    .line 692
    .local v6, "userDialogResult":Lcom/android/server/PermissionDialogResult$Result;
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_3c .. :try_end_75} :catchall_37

    .line 693
    invoke-virtual {v6}, Lcom/android/server/PermissionDialogResult$Result;->get()I

    move-result v7

    goto :goto_14
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 8
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 523
    monitor-enter p0

    .line 524
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 525
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 526
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_21

    .line 527
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 528
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_21
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3b

    .line 531
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 532
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_38

    .line 533
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    :cond_38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_3b
    if-eqz p2, :cond_54

    .line 539
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 540
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_51

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_54
    monitor-exit p0

    .line 547
    return-void

    .line 546
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_56
    move-exception v2

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_56

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 551
    monitor-enter p0

    .line 552
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 553
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_58

    .line 554
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 555
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_35

    .line 556
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 557
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_32

    .line 559
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 555
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 562
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_35
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_3d
    if-ltz v2, :cond_58

    .line 563
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 564
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 565
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_55

    .line 566
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 562
    :cond_55
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 570
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_58
    monitor-exit p0

    .line 571
    return-void

    .line 570
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_5a
    move-exception v3

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method public systemReady()V
    .registers 11

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    :try_start_3
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_83

    .line 247
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 248
    .local v6, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 249
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 250
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_8a

    .line 253
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    :try_start_27
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_38} :catch_72
    .catchall {:try_start_27 .. :try_end_38} :catchall_8a

    move-result v1

    .line 258
    .local v1, "curUid":I
    :goto_39
    :try_start_39
    iget v7, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    if-eq v1, v7, :cond_1b

    .line 259
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pruning old package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": new uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 262
    const/4 v0, 0x1

    goto :goto_1b

    .line 255
    .end local v1    # "curUid":I
    :catch_72
    move-exception v2

    .line 256
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    .restart local v1    # "curUid":I
    goto :goto_39

    .line 265
    .end local v1    # "curUid":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_75
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_80

    .line 266
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 246
    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 269
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_83
    if-eqz v0, :cond_88

    .line 270
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 272
    :cond_88
    monitor-exit p0

    .line 273
    return-void

    .line 272
    :catchall_8a
    move-exception v7

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_39 .. :try_end_8c} :catchall_8a

    throw v7
.end method

.method public uidRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 290
    monitor-enter p0

    .line 291
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 292
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 293
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 295
    :cond_11
    monitor-exit p0

    .line 296
    return-void

    .line 295
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method writeState()V
    .registers 23

    .prologue
    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 982
    const/16 v17, 0x0

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1c8

    move-result-object v4

    .line 986
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_16f
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c8

    move-result-object v14

    .line 993
    .local v14, "stream":Ljava/io/FileOutputStream;
    :try_start_1b
    new-instance v12, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v12}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 994
    .local v12, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v17, "utf-8"

    move-object/from16 v0, v17

    invoke-interface {v12, v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 995
    const/16 v17, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 996
    const/16 v17, 0x0

    const-string v19, "app-ops"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 998
    if-eqz v4, :cond_1ad

    .line 999
    const/4 v9, 0x0

    .line 1000
    .local v9, "lastPkg":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_46
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_1a0

    .line 1001
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$PackageOps;

    .line 1002
    .local v13, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_87

    .line 1003
    if-eqz v9, :cond_6d

    .line 1004
    const/16 v17, 0x0

    const-string v19, "pkg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1006
    :cond_6d
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1007
    const/16 v17, 0x0

    const-string v19, "pkg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1008
    const/16 v17, 0x0

    const-string v19, "n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1010
    :cond_87
    const/16 v17, 0x0

    const-string/jumbo v19, "uid"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1011
    const/16 v17, 0x0

    const-string v19, "n"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v12, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1012
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 1013
    .local v11, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_ad
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_190

    .line 1014
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 1015
    .local v10, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v17, 0x0

    const-string v19, "op"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1016
    const/16 v17, 0x0

    const-string v19, "n"

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v12, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1017
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v17

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v19

    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v20

    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_112

    .line 1019
    const/16 v17, 0x0

    const-string v19, "m"

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v12, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1021
    :cond_112
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v15

    .line 1022
    .local v15, "time":J
    const-wide/16 v19, 0x0

    cmp-long v17, v15, v19

    if-eqz v17, :cond_12e

    .line 1023
    const/16 v17, 0x0

    const-string/jumbo v19, "t"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v12, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1025
    :cond_12e
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v15

    .line 1026
    const-wide/16 v19, 0x0

    cmp-long v17, v15, v19

    if-eqz v17, :cond_149

    .line 1027
    const/16 v17, 0x0

    const-string v19, "r"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v12, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1029
    :cond_149
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v5

    .line 1030
    .local v5, "dur":I
    if-eqz v5, :cond_160

    .line 1031
    const/16 v17, 0x0

    const-string v19, "d"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v12, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1033
    :cond_160
    const/16 v17, 0x0

    const-string v19, "op"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_16b} :catch_1cb
    .catchall {:try_start_1b .. :try_end_16b} :catchall_1c8

    .line 1013
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_ad

    .line 987
    .end local v5    # "dur":I
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "lastPkg":Ljava/lang/String;
    .end local v10    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v11    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v12    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v13    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .end local v15    # "time":J
    :catch_16f
    move-exception v6

    .line 988
    .local v6, "e":Ljava/io/IOException;
    :try_start_170
    const-string v17, "AppOps"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to write state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    monitor-exit v18
    :try_end_18f
    .catchall {:try_start_170 .. :try_end_18f} :catchall_1c8

    .line 1050
    .end local v6    # "e":Ljava/io/IOException;
    :goto_18f
    return-void

    .line 1035
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "lastPkg":Ljava/lang/String;
    .restart local v11    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v12    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v13    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :cond_190
    const/16 v17, 0x0

    :try_start_192
    const-string/jumbo v19, "uid"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1000
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_46

    .line 1037
    .end local v8    # "j":I
    .end local v11    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v13    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_1a0
    if-eqz v9, :cond_1ad

    .line 1038
    const/16 v17, 0x0

    const-string v19, "pkg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1042
    .end local v7    # "i":I
    .end local v9    # "lastPkg":Ljava/lang/String;
    :cond_1ad
    const/16 v17, 0x0

    const-string v19, "app-ops"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1043
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_1c6} :catch_1cb
    .catchall {:try_start_192 .. :try_end_1c6} :catchall_1c8

    .line 1049
    .end local v12    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1c6
    :try_start_1c6
    monitor-exit v18

    goto :goto_18f

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v14    # "stream":Ljava/io/FileOutputStream;
    :catchall_1c8
    move-exception v17

    monitor-exit v18
    :try_end_1ca
    .catchall {:try_start_1c6 .. :try_end_1ca} :catchall_1c8

    throw v17

    .line 1045
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :catch_1cb
    move-exception v6

    .line 1046
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_1cc
    const-string v17, "AppOps"

    const-string v19, "Failed to write state, restoring backup."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1e2
    .catchall {:try_start_1cc .. :try_end_1e2} :catchall_1c8

    goto :goto_1c6
.end method
