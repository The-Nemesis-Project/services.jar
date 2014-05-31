.class public Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIPStatusInfo"
.end annotation


# instance fields
.field public isSIPEventFilterThreadRunning:Z

.field public isSIPVisible:Z

.field public latestSIPVisibleReport:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1041
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    .line 1053
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    .line 1056
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    return-void
.end method

.method public static getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    .registers 1

    .prologue
    .line 1043
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    if-nez v0, :cond_b

    .line 1044
    new-instance v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    .line 1046
    :cond_b
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    return-object v0
.end method
