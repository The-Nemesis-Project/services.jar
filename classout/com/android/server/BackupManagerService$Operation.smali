.class Lcom/android/server/BackupManagerService$Operation;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Operation"
.end annotation


# instance fields
.field public callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

.field public state:I

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;ILcom/android/server/BackupManagerService$BackupRestoreTask;)V
    .registers 4
    .param p2, "initialState"    # I
    .param p3, "callbackObj"    # Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/server/BackupManagerService$Operation;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput p2, p0, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 463
    iput-object p3, p0, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .line 464
    return-void
.end method