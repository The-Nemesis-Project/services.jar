.class Lcom/android/server/AppWidgetServiceImpl$2;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetServiceImpl;)V
    .registers 2

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/android/server/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1094
    :try_start_5
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V
    invoke-static {v0}, Lcom/android/server/AppWidgetServiceImpl;->access$000(Lcom/android/server/AppWidgetServiceImpl;)V

    .line 1095
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 1096
    monitor-exit v1

    .line 1097
    return-void

    .line 1096
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method
