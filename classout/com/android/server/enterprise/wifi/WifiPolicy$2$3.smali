.class Lcom/android/server/enterprise/wifi/WifiPolicy$2$3;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$2;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy$2;)V
    .registers 2

    .prologue
    .line 2883
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2$3;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2$3;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$2;

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # invokes: Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWpsBlockedNetworks()Z
    invoke-static {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$200(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z

    .line 2886
    return-void
.end method
