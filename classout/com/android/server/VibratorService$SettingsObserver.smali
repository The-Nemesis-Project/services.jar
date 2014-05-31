.class Lcom/android/server/VibratorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .registers 6
    .param p2, "type"    # I

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 1167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1168
    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2100(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1169
    iput p2, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    .line 1170
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x5

    .line 1174
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1176
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1177
    iget v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    packed-switch v1, :pswitch_data_94

    .line 1211
    :cond_11
    :goto_11
    return-void

    .line 1179
    :pswitch_12
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2100(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1180
    .local v0, "magnitudeLevel":I
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v4, :cond_2e

    .end local v0    # "magnitudeLevel":I
    :goto_2a
    # setter for: Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$2302(Lcom/android/server/VibratorService;I)I

    goto :goto_11

    .restart local v0    # "magnitudeLevel":I
    :cond_2e
    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->levelToMagnitude:[I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_2a

    .line 1188
    .end local v0    # "magnitudeLevel":I
    :pswitch_37
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2100(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1189
    .restart local v0    # "magnitudeLevel":I
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v4, :cond_53

    .end local v0    # "magnitudeLevel":I
    :goto_4f
    # setter for: Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$2502(Lcom/android/server/VibratorService;I)I

    goto :goto_11

    .restart local v0    # "magnitudeLevel":I
    :cond_53
    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->levelToMagnitude:[I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_4f

    .line 1197
    .end local v0    # "magnitudeLevel":I
    :pswitch_5c
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2100(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1198
    .restart local v0    # "magnitudeLevel":I
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v4, :cond_8b

    .end local v0    # "magnitudeLevel":I
    :goto_74
    # setter for: Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$2602(Lcom/android/server/VibratorService;I)I

    .line 1200
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1201
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2600(Lcom/android/server/VibratorService;)I

    move-result v2

    # setter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$1702(Lcom/android/server/VibratorService;I)I

    goto :goto_11

    .line 1198
    .restart local v0    # "magnitudeLevel":I
    :cond_8b
    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->levelToMagnitude:[I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_74

    .line 1177
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_12
        :pswitch_37
        :pswitch_5c
    .end packed-switch
.end method
