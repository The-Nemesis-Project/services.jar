.class public Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;
.super Ljava/lang/Thread;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandsLooperThread"
.end annotation


# instance fields
.field public mHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 2

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1932
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1933
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    .line 1934
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1935
    return-void
.end method
