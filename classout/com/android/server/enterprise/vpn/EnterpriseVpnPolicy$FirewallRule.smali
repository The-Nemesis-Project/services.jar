.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$FirewallRule;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FirewallRule"
.end annotation


# static fields
.field public static final APPEND:I = 0x0

.field public static final DELETE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 2

    .prologue
    .line 3252
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$FirewallRule;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
