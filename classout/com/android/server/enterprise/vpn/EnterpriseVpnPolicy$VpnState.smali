.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnState"
.end annotation


# static fields
.field private static final RUNNING:I = 0x1

.field private static final STOPPED:I


# instance fields
.field private mCid:I

.field private mInterface:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mState:I

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "cid"    # I

    .prologue
    .line 3183
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 3184
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 8
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "cid"    # I
    .param p6, "interfaceName"    # Ljava/lang/String;
    .param p7, "state"    # I

    .prologue
    .line 3186
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3187
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mProfileName:Ljava/lang/String;

    .line 3188
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mPackageName:Ljava/lang/String;

    .line 3189
    iput-object p6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mInterface:Ljava/lang/String;

    .line 3190
    iput p4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mUid:I

    .line 3191
    iput p5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mCid:I

    .line 3192
    iput p7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mState:I

    .line 3193
    return-void
.end method


# virtual methods
.method public getCid()I
    .registers 2

    .prologue
    .line 3228
    iget v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mCid:I

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3204
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3196
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 3236
    iget v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mState:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 3220
    iget v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mUid:I

    return v0
.end method

.method public setCid(I)V
    .registers 2
    .param p1, "cid"    # I

    .prologue
    .line 3232
    iput p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mCid:I

    .line 3233
    return-void
.end method

.method public setInterface(Ljava/lang/String;)V
    .registers 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3216
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mInterface:Ljava/lang/String;

    .line 3217
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3208
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mPackageName:Ljava/lang/String;

    .line 3209
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3200
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mProfileName:Ljava/lang/String;

    .line 3201
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 3240
    iput p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mState:I

    .line 3241
    return-void
.end method

.method public setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 3224
    iput p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mUid:I

    .line 3225
    return-void
.end method
