.class Lcom/android/server/ClipboardService$ListenerInfo;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerInfo"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/ClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V
    .registers 4
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/ClipboardService$ListenerInfo;->this$0:Lcom/android/server/ClipboardService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p2, p0, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    .line 77
    iput-object p3, p0, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    .line 78
    return-void
.end method
