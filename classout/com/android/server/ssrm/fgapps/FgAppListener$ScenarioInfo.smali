.class Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;
.super Ljava/lang/Object;
.source "FgAppListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/FgAppListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScenarioInfo"
.end annotation


# instance fields
.field public mSIPVisible:Z

.field public mUsbConnected:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mSIPVisible:Z

    .line 323
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    return-void
.end method
