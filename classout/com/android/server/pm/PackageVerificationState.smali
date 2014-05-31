.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mExtendedTimeout:Z

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

.field private final mVerificationId:I

.field private mVerificationIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "verificationId"    # I
    .param p3, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mVerificationIntent:Landroid/content/Intent;

    .line 64
    iput p2, p0, Lcom/android/server/pm/PackageVerificationState;->mVerificationId:I

    .line 65
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 66
    iput-object p3, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 67
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 69
    return-void
.end method


# virtual methods
.method public addRequiredVerifierUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 90
    return-void
.end method

.method public addSufficientVerifier(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 99
    return-void
.end method

.method public clearSufficientVerifiers()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 106
    return-void
.end method

.method public extendTimeout()V
    .registers 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_7

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 199
    :cond_7
    return-void
.end method

.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method public getVerificationId()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mVerificationId:I

    return v0
.end method

.method public getVerificationIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mVerificationIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public initTimeout()V
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 215
    return-void
.end method

.method public isInstallAllowed()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v0, :cond_6

    .line 182
    const/4 v0, 0x0

    .line 189
    :goto_5
    return v0

    .line 185
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_d

    .line 186
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    goto :goto_5

    .line 189
    :cond_d
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isVerificationComplete()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_6

    .line 164
    const/4 v0, 0x0

    .line 171
    :goto_5
    return v0

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 168
    const/4 v0, 0x1

    goto :goto_5

    .line 171
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    goto :goto_5
.end method

.method public setVerifierResponse(II)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 116
    iget-object v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 117
    packed-switch p2, :pswitch_data_54

    .line 129
    iget-object v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 130
    iget-object v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 131
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 152
    :cond_1b
    :goto_1b
    return v0

    .line 119
    :pswitch_1c
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 122
    :pswitch_21
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 123
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 124
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_1b

    .line 137
    :cond_33
    iget-object v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 138
    if-ne p2, v0, :cond_41

    .line 139
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 143
    :cond_41
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 144
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 145
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    goto :goto_1b

    :cond_51
    move v0, v1

    .line 152
    goto :goto_1b

    .line 117
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method public timeoutExtended()Z
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return v0
.end method
