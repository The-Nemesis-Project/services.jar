.class final enum Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;
.super Ljava/lang/Enum;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "profileStateVals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

.field public static final enum CONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

.field public static final enum DISCONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

.field public static final enum IDLE:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->IDLE:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->CONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->DISCONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    sget-object v1, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->IDLE:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->CONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->DISCONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->$VALUES:[Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    const-class v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;
    .registers 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->$VALUES:[Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    return-object v0
.end method
