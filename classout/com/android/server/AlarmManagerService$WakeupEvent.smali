.class Lcom/android/server/AlarmManagerService$WakeupEvent;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WakeupEvent"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;

.field public uid:I

.field public when:J


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;JILjava/lang/String;)V
    .registers 6
    .param p2, "theTime"    # J
    .param p4, "theUid"    # I
    .param p5, "theAction"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    .line 181
    iput p4, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    .line 182
    iput-object p5, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    .line 183
    return-void
.end method
