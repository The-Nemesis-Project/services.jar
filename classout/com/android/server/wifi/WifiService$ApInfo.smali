.class public Lcom/android/server/wifi/WifiService$ApInfo;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private Eap:Ljava/lang/String;

.field private MCCMNC:Ljava/lang/String;

.field private NetworkName:Ljava/lang/String;

.field private Priority:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1711
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1712
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1713
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1714
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1715
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1716
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1717
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1718
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1720
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1721
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1722
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1723
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;

    .prologue
    .line 1724
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1725
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1726
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1727
    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1728
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1729
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1730
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1732
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1733
    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1734
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1735
    iput-object p5, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1736
    return-void
.end method


# virtual methods
.method public getEap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
