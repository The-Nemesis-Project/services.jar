.class Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter$2;
.super Ljava/lang/Object;
.source "WifiManagerAdapter.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter$2;->this$0:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 80
    const-string v0, "WifiManagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save operation failed reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 76
    const-string v0, "WifiManagerAdapter"

    const-string v1, "save operation succeeded "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
