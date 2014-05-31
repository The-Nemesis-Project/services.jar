.class public abstract Lcom/sec/android/service/sm/service/ISecurityManager$Stub;
.super Landroid/os/Binder;
.source "ISecurityManager.java"

# interfaces
.implements Lcom/sec/android/service/sm/service/ISecurityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/service/sm/service/ISecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/service/sm/service/ISecurityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.service.sm.service.ISecurityManager"

.field static final TRANSACTION_enableMDFPPMode:I = 0x2

.field static final TRANSACTION_getCCModeStatus:I = 0x4

.field static final TRANSACTION_initCCMode:I = 0x5

.field static final TRANSACTION_isCCMode:I = 0x1

.field static final TRANSACTION_isFIPSMode:I = 0x3

.field static final TRANSACTION_verifyVPN:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.service.sm.service.ISecurityManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/sm/service/ISecurityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.sec.android.service.sm.service.ISecurityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/service/sm/service/ISecurityManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/android/service/sm/service/ISecurityManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/android/service/sm/service/ISecurityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_80

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v2, "com.sec.android.service.sm.service.ISecurityManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "com.sec.android.service.sm.service.ISecurityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->isCCMode()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 55
    .end local v1    # "_result":Z
    :sswitch_23
    const-string v4, "com.sec.android.service.sm.service.ISecurityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    move v0, v3

    .line 58
    .local v0, "_arg0":Z
    :goto_2f
    invoke-virtual {p0, v0}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->enableMDFPPMode(Z)I

    move-result v1

    .line 59
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :cond_3a
    move v0, v2

    .line 57
    goto :goto_2f

    .line 65
    :sswitch_3c
    const-string v4, "com.sec.android.service.sm.service.ISecurityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->isFIPSMode()Z

    move-result v1

    .line 67
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v1, :cond_4b

    move v2, v3

    :cond_4b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 73
    .end local v1    # "_result":Z
    :sswitch_4f
    const-string v2, "com.sec.android.service.sm.service.ISecurityManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->getCCModeStatus()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 81
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_5f
    const-string v2, "com.sec.android.service.sm.service.ISecurityManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->initCCMode()I

    move-result v1

    .line 83
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 89
    .end local v1    # "_result":I
    :sswitch_6f
    const-string v2, "com.sec.android.service.sm.service.ISecurityManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->verifyVPN()I

    move-result v1

    .line 91
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 38
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_6f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
