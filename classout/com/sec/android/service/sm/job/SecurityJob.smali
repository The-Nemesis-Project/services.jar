.class public Lcom/sec/android/service/sm/job/SecurityJob;
.super Ljava/lang/Object;
.source "SecurityJob.java"


# static fields
.field private static final CHECK_ICD_SUCCESS:Ljava/lang/String; = "1"

.field private static final ENFORCE_SECUREBOOT_OFF:I = 0x0

.field private static final ENFORCE_SECUREBOOT_ON:I = 0x1

.field private static final KNOX_INSTALLED_FILE:Ljava/lang/String; = "/data/system/edk_p_container_1"

.field private static final KNOX_MDPP_FILE:Ljava/lang/String; = "/data/system/edk_mdpp"

.field public static final MDPP_DISABLED:I = 0x8

.field public static final MDPP_EMPTY:I = 0x10

.field public static final MDPP_ENABLED:I = 0x1

.field public static final MDPP_ENFORCING:I = 0x2

.field public static final MDPP_READY:I = 0x4

.field private static final OLD_KEY_FILE:Ljava/lang/String; = "/data/system/password.key"

.field private static final PROPERTY_FIPSUI:Ljava/lang/String; = "ro.fipsui"

.field private static final PROPERTY_MDPP:Ljava/lang/String; = "security.mdpp"

.field private static final PROPERTY_MDPP_DISABLED:Ljava/lang/String; = "Disabled"

.field private static final PROPERTY_MDPP_EMPTY:Ljava/lang/String; = "None"

.field private static final PROPERTY_MDPP_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final PROPERTY_MDPP_ENFORCING:Ljava/lang/String; = "Enforcing"

.field private static final PROPERTY_MDPP_READY:Ljava/lang/String; = "Ready"

.field private static final PROPERTY_MDPP_RELEASE:Ljava/lang/String; = "ro.security.mdpp.release"

.field public static final PROPERTY_MDPP_RESULT:Ljava/lang/String; = "security.mdpp.result"

.field private static final PROPERTY_MDPP_UX:Ljava/lang/String; = "ro.security.mdpp.ux"

.field private static final PROPERTY_MDPP_VER:Ljava/lang/String; = "ro.security.mdpp.ver"

.field public static final SEC_MANAGER_ERR_CCMODE_ALREADY_ENABLED:I = -0xe

.field public static final SEC_MANAGER_ERR_CCMODE_ALREADY_READY:I = -0xf

.field public static final SEC_MANAGER_ERR_CCMODE_DISABLED:I = -0xb

.field public static final SEC_MANAGER_ERR_CCMODE_ELSE:I = -0xd

.field public static final SEC_MANAGER_ERR_CCMODE_EMPTY:I = -0xc

.field public static final SEC_MANAGER_ERR_CCMODE_NOT_SUPPORT_CCMODE:I = -0x10

.field public static final SEC_MANAGER_ERR_ENFORCE_SB_FLAG_FAIL:I = -0x18

.field public static final SEC_MANAGER_ERR_GET_CCMODE_FLAG_FAIL:I = -0x1c

.field public static final SEC_MANAGER_ERR_GET_FIPS_STATUS_FAIL:I = -0x23

.field public static final SEC_MANAGER_ERR_ICD_FILE_NOT_EXIST:I = -0x16

.field public static final SEC_MANAGER_ERR_ICD_RESULT_INVALID:I = -0x17

.field public static final SEC_MANAGER_ERR_INVALID_INPUT:I = -0x1

.field public static final SEC_MANAGER_ERR_ODE_ENCRYPED_EXTERNAL:I = -0x21

.field public static final SEC_MANAGER_ERR_ODE_ENCRYPED_INTERNAL:I = -0x20

.field public static final SEC_MANAGER_ERR_ODE_ENCRYPED_NONE:I = -0x1f

.field public static final SEC_MANAGER_ERR_ODE_GETTING_STATUS_FAIL:I = -0x1e

.field public static final SEC_MANAGER_ERR_ODE_NOT_SET:I = -0x22

.field public static final SEC_MANAGER_ERR_OUT_OF_RANGE_OF_MAX_PW_COUNT:I = -0x19

.field public static final SEC_MANAGER_ERR_PASSWORD_HISTORY_LENGTH_SET:I = -0x25

.field public static final SEC_MANAGER_ERR_RECOVERY_PASSWORD_POLICY_SET:I = -0x24

.field public static final SEC_MANAGER_ERR_ROOTING_CHECK_FAIL:I = -0x15

.field public static final SEC_MANAGER_ERR_SCREENLOCK_NOT_SET:I = -0x1a

.field public static final SEC_MANAGER_ERR_SET_CCMODE_FLAG_FAIL:I = -0x1b

.field public static final SEC_MANAGER_ERR_SKMM_FIPS_SELFTEST_FAIL:I = -0x14

.field public static final SEC_MANAGER_OK:I

.field private static mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

.field private static mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-direct {v0}, Lcom/sec/android/service/sm/job/SecurityNativeJob;-><init>()V

    sput-object v0, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    .line 75
    new-instance v0, Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-direct {v0}, Lcom/sec/android/service/sm/service/SecurityManagerService;-><init>()V

    sput-object v0, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    .line 76
    return-void
.end method

.method private static checkCCModeOnDevice()I
    .registers 6

    .prologue
    .line 293
    const/4 v4, 0x0

    .line 294
    .local v4, "result":I
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/system/password.key"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, "oldKeyFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/edk_p_container_1"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "knoxInstalledFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/system/edk_mdpp"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v2, "knoxMDPPFile":Ljava/io/File;
    sget-object v5, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v5}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->getCCModeFlag()I

    move-result v0

    .line 299
    .local v0, "CCModeFlag":I
    const-string v5, "check the current status #1 ..."

    invoke-static {v5}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 300
    const/4 v5, 0x1

    if-ne v0, v5, :cond_26

    .line 301
    const/4 v4, 0x1

    .line 328
    :goto_25
    return v4

    .line 302
    :cond_26
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2b

    .line 303
    const/4 v4, 0x2

    goto :goto_25

    .line 304
    :cond_2b
    const/4 v5, 0x4

    if-ne v0, v5, :cond_30

    .line 305
    const/4 v4, 0x4

    goto :goto_25

    .line 306
    :cond_30
    const/16 v5, 0x8

    if-ne v0, v5, :cond_37

    .line 307
    const/16 v4, 0x8

    goto :goto_25

    .line 310
    :cond_37
    const-string v5, "check the current status #2 ..."

    invoke-static {v5}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 311
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_55

    .line 312
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 313
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 314
    const/4 v4, 0x4

    goto :goto_25

    .line 317
    :cond_50
    const/16 v4, 0x10

    goto :goto_25

    .line 320
    :cond_53
    const/4 v4, 0x4

    goto :goto_25

    .line 324
    :cond_55
    const/16 v4, 0x10

    goto :goto_25
.end method

.method private static checkDevicePolicy()I
    .registers 8

    .prologue
    .line 332
    const/4 v5, 0x0

    .line 335
    .local v5, "res":I
    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    .line 336
    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->getSamsungEncryptionStatusForCC()I

    move-result v0

    .line 338
    .local v0, "isEncrypted":I
    packed-switch v0, :pswitch_data_fc

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 356
    const/16 v5, -0x22

    .line 395
    .end local v5    # "res":I
    :goto_22
    return v5

    .line 340
    .restart local v5    # "res":I
    :pswitch_23
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 341
    const/16 v5, -0x1e

    goto :goto_22

    .line 343
    :pswitch_3c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 344
    const/16 v5, -0x1f

    goto :goto_22

    .line 346
    :pswitch_55
    const-string v6, "ODE check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 360
    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    .line 361
    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->getMaximumFailedPasswordsForWipe()I

    move-result v3

    .line 363
    .local v3, "maximumFailedPasswordsForWipe":I
    if-lez v3, :cond_66

    .line 364
    const/16 v6, 0x14

    if-le v3, v6, :cond_b2

    .line 365
    :cond_66
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. maximumFailedPasswordsForWipe = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 365
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 367
    const/16 v5, -0x19

    goto :goto_22

    .line 349
    .end local v3    # "maximumFailedPasswordsForWipe":I
    :pswitch_7f
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 350
    const/16 v5, -0x20

    goto :goto_22

    .line 352
    :pswitch_98
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 353
    const/16 v5, -0x21

    goto/16 :goto_22

    .line 369
    .restart local v3    # "maximumFailedPasswordsForWipe":I
    :cond_b2
    const-string v6, "MaxPassword check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 372
    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->isKeyguardSecure()Z

    move-result v2

    .line 373
    .local v2, "isSecure":Z
    if-nez v2, :cond_c8

    .line 374
    const-string v6, "Failed. the screen is not locked."

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 375
    const/16 v5, -0x1a

    goto/16 :goto_22

    .line 377
    :cond_c8
    const-string v6, "ScreenLock check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 380
    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->getPasswordRecoverable()Z

    move-result v1

    .line 381
    .local v1, "isPasswordRecoverable":Z
    if-eqz v1, :cond_de

    .line 382
    const-string v6, "Failed. Recovery password policy has been set."

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 383
    const/16 v5, -0x24

    goto/16 :goto_22

    .line 385
    :cond_de
    const-string v6, "RecoveryPassword check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 388
    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->getPasswordHistoryLength()I

    move-result v4

    .line 389
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_f4

    .line 390
    const-string v6, "Failed. PasswordHistoryLength has been set."

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 391
    const/16 v5, -0x25

    goto/16 :goto_22

    .line 393
    :cond_f4
    const-string v6, "PasswordHistoryLength check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    goto/16 :goto_22

    .line 338
    nop

    :pswitch_data_fc
    .packed-switch -0x1
        :pswitch_23
        :pswitch_3c
        :pswitch_55
        :pswitch_7f
        :pswitch_98
    .end packed-switch
.end method

.method private static checkICD()I
    .registers 6

    .prologue
    const/16 v4, -0x17

    const/16 v3, -0x16

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, "res":I
    new-instance v2, Ljava/io/File;

    const-string v5, "/system/bin/icd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_19

    .line 430
    const-string v4, "#1 icd doesn\'t exist."

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v3

    .line 458
    .end local v0    # "res":I
    :cond_18
    :goto_18
    return v0

    .line 434
    .restart local v0    # "res":I
    :cond_19
    new-instance v2, Ljava/io/File;

    .end local v2    # "target":Ljava/io/File;
    const-string v5, "/dev/icd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .restart local v2    # "target":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 436
    invoke-static {v2}, Lcom/sec/android/service/sm/util/FileIO;->getLineInFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "result":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed. #2 icd : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v4

    .line 439
    goto :goto_18

    .line 442
    .end local v1    # "result":Ljava/lang/String;
    :cond_46
    const-string v4, "#2 icd doesn\'t exist."

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v3

    .line 443
    goto :goto_18

    .line 446
    .restart local v1    # "result":Ljava/lang/String;
    :cond_4d
    new-instance v2, Ljava/io/File;

    .end local v2    # "target":Ljava/io/File;
    const-string v5, "/dev/icdr"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v2    # "target":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 448
    invoke-static {v2}, Lcom/sec/android/service/sm/util/FileIO;->getLineInFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 449
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed. #3 icd : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v4

    .line 451
    goto :goto_18

    .line 454
    :cond_7a
    const-string v4, "#3 icd doesn\'t exist."

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v3

    .line 455
    goto :goto_18
.end method

.method private static enforceSB(Z)I
    .registers 6
    .param p0, "enabled"    # Z

    .prologue
    const/16 v2, -0x18

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "res":I
    const/4 v1, -0x1

    .line 465
    .local v1, "secureBootFlag":I
    if-eqz p0, :cond_45

    .line 466
    sget-object v3, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->setSBFlagOn()I

    move-result v0

    .line 467
    if-eqz v0, :cond_25

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setSBFlagOn() res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 491
    :goto_24
    return v2

    .line 471
    :cond_25
    sget-object v3, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->getSBFlag()I

    move-result v1

    .line 472
    const/4 v3, 0x1

    if-eq v1, v3, :cond_83

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. SBFlag has yet to set. current flag = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 473
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_24

    .line 478
    :cond_45
    sget-object v3, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->setSBFlagOff()I

    move-result v0

    .line 479
    if-eqz v0, :cond_64

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setSBFlagOff() res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_24

    .line 483
    :cond_64
    sget-object v3, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->getSBFlag()I

    move-result v1

    .line 484
    if-eqz v1, :cond_83

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. SBFlag has yet to set. current flag = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 485
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_24

    :cond_83
    move v2, v0

    .line 491
    goto :goto_24
.end method

.method private static performCCModePreProcess()I
    .registers 3

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 402
    .local v0, "res":I
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkICD()I

    move-result v0

    .line 403
    if-eqz v0, :cond_1e

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed. checkICD = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 423
    :goto_1d
    return v0

    .line 409
    :cond_1e
    invoke-static {}, Lcom/sec/android/service/sm/util/FipsStatus;->getFipsStatus()I

    move-result v0

    .line 410
    if-eqz v0, :cond_3d

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed. FipsStatus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 412
    const/16 v0, -0x23

    goto :goto_1d

    .line 416
    :cond_3d
    sget-object v1, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v1}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->SKMM_SelfTest()I

    move-result v0

    .line 417
    if-eqz v0, :cond_5c

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed. SKMM and FIPSOpenssl self test = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    goto :goto_1d

    .line 422
    :cond_5c
    const-string v1, "Pre Process OK."

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public static setCCMode(I)I
    .registers 5
    .param p0, "status"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, "res":I
    sparse-switch p0, :sswitch_data_90

    .line 569
    invoke-static {v3, v3}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-eqz v1, :cond_71

    .line 576
    :cond_c
    :goto_c
    return v3

    .line 539
    :sswitch_d
    invoke-static {v2, v2}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_c

    .line 541
    const-string v1, "security.mdpp"

    const-string v2, "Enabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "security.mdpp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "security.mdpp"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    goto :goto_c

    .line 545
    :sswitch_33
    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_c

    .line 547
    const-string v1, "security.mdpp"

    const-string v2, "Enforcing"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 551
    :sswitch_42
    const/4 v1, 0x4

    invoke-static {v3, v1}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_c

    .line 553
    const-string v1, "security.mdpp"

    const-string v2, "Ready"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 557
    :sswitch_51
    const/16 v1, 0x8

    invoke-static {v2, v1}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_c

    .line 559
    const-string v1, "security.mdpp"

    const-string v2, "Disabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 563
    :sswitch_61
    const/16 v1, 0x10

    invoke-static {v3, v1}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_c

    .line 565
    const-string v1, "security.mdpp"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 571
    :cond_71
    const-string v1, "security.mdpp"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCCMode default... status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_1a

    .line 537
    nop

    :sswitch_data_90
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_33
        0x4 -> :sswitch_42
        0x8 -> :sswitch_51
        0x10 -> :sswitch_61
    .end sparse-switch
.end method

.method public static setCCModeFlag(I)I
    .registers 7
    .param p0, "status"    # I

    .prologue
    const/16 v3, -0x1b

    .line 495
    const/4 v2, 0x0

    .line 496
    .local v2, "res":I
    move v0, p0

    .line 498
    .local v0, "_status":I
    sget-object v4, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v4, v0}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->setCCModeFlag(I)I

    move-result v2

    .line 499
    if-eqz v2, :cond_24

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed. setCCModeFlag() res = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v2, v3

    .line 510
    .end local v2    # "res":I
    :cond_23
    :goto_23
    return v2

    .line 503
    .restart local v2    # "res":I
    :cond_24
    sget-object v4, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v4}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->getCCModeFlag()I

    move-result v1

    .line 504
    .local v1, "ccFlag":I
    if-eq v1, v0, :cond_23

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed. CCMode Flag has yet to set. current flag = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 505
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v2, v3

    .line 507
    goto :goto_23
.end method

.method private static setFlags(ZI)I
    .registers 6
    .param p0, "SBenabled"    # Z
    .param p1, "CCModeStatus"    # I

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 517
    .local v0, "res":I
    invoke-static {p0}, Lcom/sec/android/service/sm/job/SecurityJob;->enforceSB(Z)I

    move-result v0

    .line 518
    if-eqz v0, :cond_29

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. enforceSB : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 520
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    move v1, v0

    .line 531
    .end local v0    # "res":I
    .local v1, "res":I
    :goto_28
    return v1

    .line 524
    .end local v1    # "res":I
    .restart local v0    # "res":I
    :cond_29
    invoke-static {p1}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCModeFlag(I)I

    move-result v0

    .line 525
    if-eqz v0, :cond_55

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCModeFlag : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 527
    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    move v1, v0

    .line 528
    .end local v0    # "res":I
    .restart local v1    # "res":I
    goto :goto_28

    .end local v1    # "res":I
    .restart local v0    # "res":I
    :cond_55
    move v1, v0

    .line 531
    .end local v0    # "res":I
    .restart local v1    # "res":I
    goto :goto_28
.end method


# virtual methods
.method public enableMDFPPMode(Z)I
    .registers 12
    .param p1, "enable"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/16 v5, 0x10

    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, "res":I
    const-string v3, "security.mdpp.result"

    const-string v4, "None"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v3, "Enabled"

    const-string v4, "ro.security.mdpp.ux"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 150
    const-string v3, "This model does not support CC mode."

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 151
    const/16 v1, -0x10

    .line 152
    const-string v3, "security.mdpp.result"

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 270
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_2e
    return v2

    .line 158
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_2f
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkCCModeOnDevice()I

    move-result v0

    .line 159
    .local v0, "ccModeOnDevice":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "the current mode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 161
    if-eqz p1, :cond_186

    .line 162
    if-ne v0, v9, :cond_60

    .line 163
    const-string v3, "Failed. CCMode is already enabled."

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 164
    const/16 v1, -0xe

    .line 165
    const-string v3, "security.mdpp.result"

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    move v2, v1

    .line 270
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_2e

    .line 168
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_60
    if-eq v0, v8, :cond_64

    .line 169
    if-ne v0, v7, :cond_107

    .line 170
    :cond_64
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkDevicePolicy()I

    move-result v1

    .line 171
    const-string v3, "security.mdpp.result"

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz v1, :cond_a6

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Prerequisite policies have yet to set. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 177
    invoke-static {v7}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 178
    if-eqz v1, :cond_5e

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_5e

    .line 183
    :cond_a6
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->performCCModePreProcess()I

    move-result v1

    .line 184
    const-string v3, "security.mdpp.result"

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-eqz v1, :cond_e9

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. CCMode Pre-Process. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 189
    invoke-static {v6}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 190
    if-eqz v1, :cond_5e

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 195
    :cond_e9
    invoke-static {v7}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 196
    if-eqz v1, :cond_5e

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 203
    :cond_107
    if-ne v0, v5, :cond_132

    .line 204
    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 205
    if-eqz v1, :cond_125

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 208
    :cond_125
    const/16 v1, -0xc

    .line 209
    const-string v3, "security.mdpp.result"

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 211
    :cond_132
    if-ne v0, v6, :cond_15d

    .line 212
    invoke-static {v6}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 213
    if-eqz v1, :cond_150

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 216
    :cond_150
    const/16 v1, -0xb

    .line 217
    const-string v3, "security.mdpp.result"

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 220
    :cond_15d
    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 221
    if-eqz v1, :cond_179

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 224
    :cond_179
    const/16 v1, -0xd

    .line 225
    const-string v3, "security.mdpp.result"

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 230
    :cond_186
    if-eq v0, v9, :cond_18a

    .line 231
    if-ne v0, v7, :cond_1b1

    .line 232
    :cond_18a
    invoke-static {v8}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 233
    if-eqz v1, :cond_1a6

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 236
    :cond_1a6
    const-string v3, "security.mdpp.result"

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 238
    :cond_1b1
    if-ne v0, v8, :cond_1c5

    .line 239
    const-string v3, "Failed. CCMode is already ready."

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 240
    const/16 v1, -0xf

    .line 241
    const-string v3, "security.mdpp.result"

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 243
    :cond_1c5
    if-ne v0, v6, :cond_1f0

    .line 244
    invoke-static {v6}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 245
    if-eqz v1, :cond_1e3

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 248
    :cond_1e3
    const/16 v1, -0xb

    .line 249
    const-string v3, "security.mdpp.result"

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 251
    :cond_1f0
    if-ne v0, v5, :cond_21b

    .line 252
    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 253
    if-eqz v1, :cond_20e

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 256
    :cond_20e
    const/16 v1, -0xc

    .line 257
    const-string v3, "security.mdpp.result"

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 260
    :cond_21b
    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 261
    if-eqz v1, :cond_237

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 264
    :cond_237
    const/16 v1, -0xd

    .line 265
    const-string v3, "security.mdpp.result"

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e
.end method

.method public getCCModeStatus()Ljava/lang/String;
    .registers 3

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ro.security.mdpp.ver"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string v1, "ro.security.mdpp.release"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    const-string v1, "security.mdpp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initCCMode()I
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x10

    const/16 v4, 0x8

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "res":I
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkCCModeOnDevice()I

    move-result v0

    .line 81
    .local v0, "ccModeOnDevice":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the current mode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 83
    if-eq v0, v6, :cond_27

    if-ne v0, v7, :cond_b6

    .line 84
    :cond_27
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkDevicePolicy()I

    move-result v1

    .line 85
    if-eqz v1, :cond_60

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Prerequisite policies have yet to set. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 89
    invoke-static {v7}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 90
    if-eqz v1, :cond_5f

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 140
    :cond_5f
    :goto_5f
    return v1

    .line 94
    :cond_60
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->performCCModePreProcess()I

    move-result v1

    .line 95
    if-eqz v1, :cond_99

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. CCMode Pre-Process. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 98
    invoke-static {v4}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 99
    if-eqz v1, :cond_5f

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_5f

    .line 104
    :cond_99
    invoke-static {v6}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 105
    if-eqz v1, :cond_5f

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_5f

    .line 115
    :cond_b6
    if-ne v0, v8, :cond_d5

    .line 116
    invoke-static {v8}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 117
    if-eqz v1, :cond_5f

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_5f

    .line 120
    :cond_d5
    if-ne v0, v4, :cond_f7

    .line 121
    invoke-static {v4}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 122
    if-eqz v1, :cond_f3

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 125
    :cond_f3
    const/16 v1, -0xb

    goto/16 :goto_5f

    .line 126
    :cond_f7
    if-ne v0, v5, :cond_119

    .line 127
    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 128
    if-eqz v1, :cond_115

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 131
    :cond_115
    const/16 v1, -0xc

    goto/16 :goto_5f

    .line 133
    :cond_119
    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 134
    if-eqz v1, :cond_135

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .line 137
    :cond_135
    const/16 v1, -0xd

    goto/16 :goto_5f
.end method

.method public isCCMode()Z
    .registers 3

    .prologue
    .line 274
    const-string v1, "security.mdpp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "propertyMDPP":Ljava/lang/String;
    const-string v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 277
    const/4 v1, 0x1

    .line 279
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isFIPSMode()Z
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public verifyVPN()I
    .registers 2

    .prologue
    .line 580
    sget-object v0, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v0}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->verifyVPN()I

    move-result v0

    return v0
.end method
