.class public final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public duration:I

.field public mode:I

.field public nesting:I

.field public final op:I

.field public rejectTime:J

.field public time:J


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "_op"    # I

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 110
    return-void
.end method
