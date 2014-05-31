.class final Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
.super Landroid/os/Handler;
.source "GeofenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeofencingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 157
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 158
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 161
    if-eqz p1, :cond_7

    .line 162
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_72

    .line 201
    :cond_7
    :goto_7
    return-void

    .line 165
    :pswitch_8
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 166
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V
    invoke-static {v6, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    .line 167
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V
    invoke-static {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    goto :goto_7

    .line 171
    .end local v5    # "userId":I
    :pswitch_15
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 172
    .restart local v5    # "userId":I
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V
    invoke-static {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    goto :goto_7

    .line 183
    .end local v5    # "userId":I
    :pswitch_1d
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 184
    .local v4, "uid":I
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;
    invoke-static {v6, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;

    move-result-object v3

    .line 185
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 186
    new-instance v2, Landroid/content/Intent;

    const-string v6, "edm.intent.action.device.inside"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [I

    .line 188
    .local v1, "id":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_56

    .line 189
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 191
    :cond_56
    const-string v6, "edm.intent.extra.geofence.id"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 192
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_7

    .line 162
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method
