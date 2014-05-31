.class Lcom/android/server/AlarmManagerService$PrevAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrevAlarm"
.end annotation


# instance fields
.field public mInterval:J

.field public mIsStandalone:Z

.field public mOperation:Landroid/app/PendingIntent;

.field public mType:I

.field public mWindowLength:J

.field public mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;IJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V
    .registers 10
    .param p2, "type"    # I
    .param p3, "windowLength"    # J
    .param p5, "interval"    # J
    .param p7, "operation"    # Landroid/app/PendingIntent;
    .param p8, "isStandalone"    # Z
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1984
    iput p2, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mType:I

    .line 1985
    iput-wide p3, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mWindowLength:J

    .line 1986
    iput-wide p5, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mInterval:J

    .line 1987
    iput-object p7, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mOperation:Landroid/app/PendingIntent;

    .line 1988
    iput-boolean p8, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mIsStandalone:Z

    .line 1989
    iput-object p9, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mWorkSource:Landroid/os/WorkSource;

    .line 1990
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1996
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PrevAlarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    iget v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1999
    const-string v1, ", windowLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mWindowLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2001
    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2003
    const-string v1, ", isStandalone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mIsStandalone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2005
    const-string v1, ", oper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mOperation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mOperation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2010
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
