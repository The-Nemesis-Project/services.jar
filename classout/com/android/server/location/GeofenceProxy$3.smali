.class Lcom/android/server/location/GeofenceProxy$3;
.super Landroid/os/Handler;
.source "GeofenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mGeofenceHardwareConnected:Z

.field private mGeofenceProviderConnected:Z

.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 129
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    iput-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceHardwareConnected:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceProviderConnected:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 155
    :cond_6
    :goto_6
    return-void

    .line 138
    :pswitch_7
    iput-boolean v1, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceProviderConnected:Z

    .line 139
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceHardwareConnected:Z

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    # invokes: Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProvider()V
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)V

    goto :goto_6

    .line 144
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    # invokes: Lcom/android/server/location/GeofenceProxy;->setGpsGeofence()V
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)V

    .line 145
    iput-boolean v1, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceHardwareConnected:Z

    .line 146
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceProviderConnected:Z

    if-eqz v0, :cond_6

    .line 147
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    # invokes: Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProvider()V
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)V

    goto :goto_6

    .line 151
    :pswitch_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceHardwareConnected:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    # invokes: Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProvider()V
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)V

    goto :goto_6

    .line 136
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_13
        :pswitch_24
    .end packed-switch
.end method
