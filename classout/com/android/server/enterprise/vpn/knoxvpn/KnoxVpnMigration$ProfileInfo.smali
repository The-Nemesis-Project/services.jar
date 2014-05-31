.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;
.super Ljava/lang/Object;
.source "KnoxVpnMigration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileInfo"
.end annotation


# instance fields
.field public adminId:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;Ljava/lang/String;I)V
    .registers 5
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    .line 747
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    .line 750
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    .line 751
    iput p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    .line 752
    return-void
.end method
