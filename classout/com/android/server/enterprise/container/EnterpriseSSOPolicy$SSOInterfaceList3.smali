.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;
.super Ljava/lang/Object;
.source "EnterpriseSSOPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SSOInterfaceList3"
.end annotation


# instance fields
.field public centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .registers 2

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
