.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;
.super Landroid/os/Handler;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseVpnHandler"
.end annotation


# static fields
.field private static final ACTION_IPTABLE_EXECUTE:I = 0x5

.field private static final ACTION_NOTIFY_APP_LAUNCH:I = 0x7

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_RETRY_VPN_CONNECTION:I = 0x6

.field private static final ACTION_VPN_INITIALIZE_BIND:I = 0x8

.field private static final CONNECTIVITY_ACTION:I = 0x4

.field private static final ENTERPRISE_STATUS_CALLBACK:I = 0x1

.field private static final GET_STATUS_IDLE:I = 0x1

.field private static final VPN_CONNECT_FAILURE:I = 0x5

.field private static final VPN_CONNECT_READY:I = 0x1

.field private static final VPN_CONNECT_SUCCESS:I = 0x4

.field private static final VPN_PROFILE_CONNECTING:I = 0x2

.field private static final VPN_PROFILE_DELETE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 2

    .prologue
    .line 2735
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 54
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2755
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Message received"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 2757
    .local v27, "map":Landroid/os/Bundle;
    const/16 v40, -0x1

    .line 2758
    .local v40, "uid":I
    const/16 v44, 0x0

    .line 2759
    .local v44, "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    const/16 v29, 0x0

    .local v29, "packageName":Ljava/lang/String;
    const/16 v32, 0x0

    .local v32, "profileName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2760
    .local v16, "errorString":Ljava/lang/String;
    const/16 v39, -0x1

    .line 2761
    .local v39, "status":I
    const/4 v6, 0x0

    .line 2762
    .local v6, "check_install_type":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_d24

    .line 3170
    :cond_27
    :goto_27
    return-void

    .line 2764
    :pswitch_28
    const-string v45, "status"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 2765
    const-string v45, "profileName"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2766
    const-string v45, "errorString"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2767
    if-nez v16, :cond_4a

    .line 2768
    const-string v16, "Empty"

    .line 2770
    :cond_4a
    const-string v45, "state"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 2771
    .local v38, "state":I
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : callback to status : profile : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",  state : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", status : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : callback to status : Error "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    const/16 v17, 0x0

    .line 2775
    .local v17, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 2776
    .local v43, "vpnEntry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    if-eqz v43, :cond_485

    .line 2777
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v24

    .line 2778
    .local v24, "list":Ljava/util/ArrayList;
    if-eqz v24, :cond_27

    .line 2779
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 2780
    .local v5, "array":[Ljava/lang/Object;
    array-length v0, v5

    move/from16 v23, v0

    .line 2781
    .local v23, "length":I
    if-nez v38, :cond_39f

    .line 2782
    packed-switch v39, :pswitch_data_d38

    :pswitch_d6
    goto/16 :goto_27

    .line 2831
    :pswitch_d8
    const/16 v17, 0x0

    :goto_da
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_29c

    .line 2832
    aget-object v44, v5, v17

    .end local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2833
    .restart local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_131

    .line 2834
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2835
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v40

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2839
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2831
    :cond_131
    add-int/lit8 v17, v17, 0x1

    goto :goto_da

    .line 2784
    :pswitch_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getRunningPackages()Ljava/util/List;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/List;

    move-result-object v37

    .line 2785
    .local v37, "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    :goto_140
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_1bc

    .line 2786
    aget-object v44, v5, v17

    .end local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2788
    .restart local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v45

    if-lez v45, :cond_16c

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v45

    if-lez v45, :cond_1b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v37

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/util/List;)Z

    move-result v45

    if-eqz v45, :cond_1b9

    .line 2792
    :cond_16c
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1b9

    .line 2793
    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2794
    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2795
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v40

    .line 2796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v40

    move-object/from16 v3, v16

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;ILjava/lang/String;)V

    .line 2785
    :cond_1b9
    add-int/lit8 v17, v17, 0x1

    goto :goto_140

    .line 2802
    :cond_1bc
    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    .line 2805
    .local v31, "profileErrorMessageSuccess":Z
    if-eqz v31, :cond_27

    .line 2806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v45

    if-lez v45, :cond_203

    .line 2808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    .line 2810
    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    .line 2815
    .end local v31    # "profileErrorMessageSuccess":Z
    .end local v37    # "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_20e
    const/16 v17, 0x0

    :goto_210
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_264

    .line 2816
    aget-object v44, v5, v17

    .end local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2817
    .restart local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_25c

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v45 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v47

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v45 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2821
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2823
    :cond_25c
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2815
    add-int/lit8 v17, v17, 0x1

    goto :goto_210

    .line 2825
    :cond_264
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_28b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2828
    :cond_28b
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    .line 2842
    :cond_29c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2844
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_2c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2845
    :cond_2c3
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    .line 2848
    :pswitch_2d4
    const/16 v33, 0x0

    .line 2852
    .local v33, "profileRunning":Z
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Handling VPN CONNECTING state on Network Change"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    const/16 v17, 0x0

    :goto_2e1
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_337

    .line 2854
    aget-object v44, v5, v17

    .end local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2855
    .restart local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_32f

    .line 2856
    const/16 v33, 0x1

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v45 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v47

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v45 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2860
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2862
    :cond_32f
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2853
    add-int/lit8 v17, v17, 0x1

    goto :goto_2e1

    .line 2864
    :cond_337
    if-eqz v33, :cond_351

    .line 2865
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    :cond_351
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_360

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2869
    :cond_360
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    .line 2872
    .end local v33    # "profileRunning":Z
    :pswitch_371
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : The Start Connection callback for remove vpn connection method is recieved and its state is  "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "Status is "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 2876
    :cond_39f
    sparse-switch v39, :sswitch_data_d48

    goto/16 :goto_27

    .line 2880
    :goto_3a4
    :sswitch_3a4
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : ready status : VPN disconnect successfully"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    const/16 v17, 0x0

    :goto_3af
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_429

    .line 2882
    aget-object v44, v5, v17

    .end local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2883
    .restart local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_406

    .line 2884
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2885
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v40

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2889
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2881
    :cond_406
    add-int/lit8 v17, v17, 0x1

    goto :goto_3af

    .line 2878
    :sswitch_409
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : fail status : VPN disconnect failure"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a4

    .line 2892
    :cond_429
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    .line 2894
    .restart local v31    # "profileErrorMessageSuccess":Z
    if-eqz v31, :cond_470

    .line 2895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v45

    if-lez v45, :cond_47b

    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2902
    :cond_470
    :goto_470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    .line 2899
    :cond_47b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto :goto_470

    .line 2907
    .end local v5    # "array":[Ljava/lang/Object;
    .end local v23    # "length":I
    .end local v24    # "list":Ljava/util/ArrayList;
    .end local v31    # "profileErrorMessageSuccess":Z
    :cond_485
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : ProfileNameVpnEntry returned null in handleMessage"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 2912
    .end local v17    # "i":I
    .end local v38    # "state":I
    .end local v43    # "vpnEntry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :pswitch_490
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Handle MSG package add"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    const-string v45, "uid"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v40

    .line 2914
    const-string v45, "package"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2915
    const-string v45, "new_install_or_update"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2916
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_4d9

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : The install type value during package added is "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_4d9
    if-eqz v29, :cond_27

    .line 2918
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_50d

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : vpn handle : package add : PackageName and UID : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :cond_50d
    const-string v45, "com.mocana.vpn.android"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_52b

    .line 2920
    if-nez v6, :cond_520

    .line 2921
    const/16 v45, 0x1

    # setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->kvpn_install_type:Z
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$502(Z)Z

    .line 2924
    :cond_520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    .line 2925
    :cond_52b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    move/from16 v2, v40

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updatePackageData(Ljava/lang/String;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)Z

    move-result v45

    if-eqz v45, :cond_27

    .line 2926
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : package add : Package found in DB with rule proceed with logic"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnObjectFromDB(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    move-result-object v42

    .line 2929
    .local v42, "vpn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    if-eqz v42, :cond_27

    .line 2930
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v32

    .line 2931
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v11

    .line 2932
    .local v11, "containerId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addToHashMap(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V

    .line 2934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v45

    if-eqz v45, :cond_72b

    if-lez v11, :cond_598

    if-lez v11, :cond_72b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_72b

    .line 2936
    :cond_598
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : pakcage add : Network is connected"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    :try_start_5a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    if-eqz v45, :cond_27

    .line 2939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v36

    .line 2940
    .local v36, "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v41, 0x0

    .line 2941
    .local v41, "value":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_5d3

    .line 2942
    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    .end local v41    # "value":Ljava/lang/String;
    check-cast v41, Ljava/lang/String;

    .line 2945
    .restart local v41    # "value":Ljava/lang/String;
    :cond_5d3
    if-eqz v41, :cond_27

    .line 2946
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_5f9

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : package add : Callback state: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_5f9
    const-string v45, "CONNECTED"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_690

    .line 2948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 2949
    .restart local v43    # "vpnEntry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    if-eqz v43, :cond_685

    .line 2950
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    .line 2951
    .local v20, "interfaceName":Ljava/lang/String;
    if-eqz v20, :cond_27

    .line 2952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v20

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2954
    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2955
    const/16 v45, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v40

    move-object/from16 v3, v20

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_662
    .catch Landroid/os/RemoteException; {:try_start_5a1 .. :try_end_662} :catch_664

    goto/16 :goto_27

    .line 2977
    .end local v20    # "interfaceName":Ljava/lang/String;
    .end local v36    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v41    # "value":Ljava/lang/String;
    .end local v43    # "vpnEntry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :catch_664
    move-exception v14

    .line 2978
    .local v14, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : pakcage add : Exception at mocana:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 2959
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v36    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v41    # "value":Ljava/lang/String;
    .restart local v43    # "vpnEntry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :cond_685
    :try_start_685
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Profilename not found in the map"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 2961
    .end local v43    # "vpnEntry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :cond_690
    const-string v45, "CONNECTING"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_27

    .line 2962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    new-instance v46, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-direct/range {v46 .. v48}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v46

    move/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v45

    if-nez v45, :cond_27

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v36

    .line 2965
    const/16 v41, 0x0

    .line 2966
    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_711

    .line 2967
    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    .end local v41    # "value":Ljava/lang/String;
    check-cast v41, Ljava/lang/String;

    .line 2968
    .restart local v41    # "value":Ljava/lang/String;
    if-eqz v41, :cond_711

    .line 2969
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : package add : Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : package add : Cannot start vpn, mocana returned error"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_729
    .catch Landroid/os/RemoteException; {:try_start_685 .. :try_end_729} :catch_664

    goto/16 :goto_27

    .line 2981
    .end local v36    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v41    # "value":Ljava/lang/String;
    :cond_72b
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : package add : Network is not connected"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 2988
    .end local v11    # "containerId":I
    .end local v42    # "vpn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    :pswitch_736
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Handle MSG package remove"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    const-string v45, "package"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2991
    const-string v45, "com.mocana.vpn.android"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_76b

    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2995
    :cond_76b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2996
    .restart local v44    # "vpnObj":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    if-eqz v44, :cond_27

    .line 2997
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v32

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_27

    .line 2999
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : package remove>> Remove from iptable/hashmap"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 3005
    :pswitch_7ad
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : connectivity action : Handle MSG CONNECTIVITY_ACTION"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    const-string v45, "status"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    .line 3007
    .local v28, "networkState":Z
    const/16 v45, 0x1

    move/from16 v0, v28

    move/from16 v1, v45

    if-ne v0, v1, :cond_7e9

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 3009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    .line 3012
    :cond_7e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 3013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_27

    .line 3017
    .end local v28    # "networkState":Z
    :pswitch_801
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : iptable execute : Handle MSG ACTION_IPTABLE_EXECUTE"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    const-string v45, "command"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3019
    .local v7, "command":Ljava/lang/String;
    if-eqz v7, :cond_27

    .line 3020
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3021
    .local v10, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v45, " "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3022
    .local v9, "commandArray":[Ljava/lang/String;
    move-object v4, v9

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_829
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_837

    aget-object v8, v4, v18

    .line 3023
    .local v8, "commandArg":Ljava/lang/String;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3022
    add-int/lit8 v18, v18, 0x1

    goto :goto_829

    .line 3026
    .end local v8    # "commandArg":Ljava/lang/String;
    :cond_837
    :try_start_837
    new-instance v45, Ljava/lang/ProcessBuilder;

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-direct/range {v45 .. v46}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v45

    const/16 v46, 0x1

    invoke-virtual/range {v45 .. v46}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v30

    .line 3028
    .local v30, "process":Ljava/lang/Process;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Process;->waitFor()I
    :try_end_857
    .catch Ljava/io/IOException; {:try_start_837 .. :try_end_857} :catch_859
    .catch Ljava/lang/InterruptedException; {:try_start_837 .. :try_end_857} :catch_865

    goto/16 :goto_27

    .line 3029
    .end local v30    # "process":Ljava/lang/Process;
    :catch_859
    move-exception v14

    .line 3030
    .local v14, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : iptable execute : IOException iptables command failed "

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 3031
    .end local v14    # "e":Ljava/io/IOException;
    :catch_865
    move-exception v14

    .line 3032
    .local v14, "e":Ljava/lang/InterruptedException;
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : iptable execute : InterruptedException iptables command failed "

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 3037
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "command":Ljava/lang/String;
    .end local v9    # "commandArray":[Ljava/lang/String;
    .end local v10    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .end local v18    # "i$":I
    .end local v22    # "len$":I
    :pswitch_871
    const-string v45, "uid"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v40

    .line 3038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v45

    if-eqz v45, :cond_27

    .line 3039
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : notify app launch : network on"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    :try_start_890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v45

    const-string v46, "EnterpriseVpn"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-string v49, "UID_APP"

    aput-object v49, v47, v48

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    aput-object v50, v48, v49

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "profileName"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    const-string v51, "applicationInfo"

    aput-object v51, v49, v50

    invoke-virtual/range {v45 .. v49}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 3050
    .local v13, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v13, :cond_27

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v45

    if-lez v45, :cond_27

    .line 3051
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 3052
    .local v12, "cv":Landroid/content/ContentValues;
    const-string v45, "profileName"

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3053
    const-string v45, "applicationInfo"

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3054
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_940

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : notify app launch : packageName : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " profileName :"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "interface: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v47

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    :cond_940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    if-eqz v45, :cond_27

    .line 3058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v35

    .line 3059
    .local v35, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v41, 0x0

    .line 3060
    .restart local v41    # "value":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_972

    .line 3061
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    .end local v41    # "value":Ljava/lang/String;
    check-cast v41, Ljava/lang/String;

    .line 3063
    .restart local v41    # "value":Ljava/lang/String;
    :cond_972
    if-eqz v41, :cond_27

    .line 3064
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : notify app launch : Value is not null and going inside start connection"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 3067
    .local v15, "entry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_9b5

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : notify app launch : Callback state: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    :cond_9b5
    const-string v45, "IDLE"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_9cd

    const-string v45, "FAILED"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_a83

    .line 3069
    :cond_9cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    new-instance v46, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-direct/range {v46 .. v48}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v46

    move/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v45

    if-nez v45, :cond_27

    .line 3071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v35

    .line 3072
    const/16 v41, 0x0

    .line 3073
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_a48

    .line 3074
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    .end local v41    # "value":Ljava/lang/String;
    check-cast v41, Ljava/lang/String;

    .line 3076
    .restart local v41    # "value":Ljava/lang/String;
    if-eqz v41, :cond_a48

    .line 3077
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_a48

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : notify app launch : Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_a48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : notify app launch : Cannot start vpn, mocana returned error"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a60
    .catch Landroid/os/RemoteException; {:try_start_890 .. :try_end_a60} :catch_a62

    goto/16 :goto_27

    .line 3100
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "entry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v35    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v41    # "value":Ljava/lang/String;
    :catch_a62
    move-exception v14

    .line 3102
    .local v14, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : Exceptionin notify: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 3083
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v12    # "cv":Landroid/content/ContentValues;
    .restart local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15    # "entry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .restart local v35    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v41    # "value":Ljava/lang/String;
    :cond_a83
    :try_start_a83
    const-string v45, "CONNECTED"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_27

    if-eqz v15, :cond_27

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v45

    if-eqz v45, :cond_27

    .line 3084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 3085
    .restart local v42    # "vpn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    if-eqz v42, :cond_27

    .line 3086
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    if-nez v45, :cond_b02

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 3088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 3089
    const/16 v45, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 3090
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v40

    move-object/from16 v3, v47

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_27

    .line 3093
    :cond_b02
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_27

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : notify app launch : Already running application ignoring:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b26
    .catch Landroid/os/RemoteException; {:try_start_a83 .. :try_end_b26} :catch_a62

    goto/16 :goto_27

    .line 3107
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "entry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v35    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v41    # "value":Ljava/lang/String;
    .end local v42    # "vpn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    :pswitch_b28
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : retry vpn"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 3109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v45

    if-eqz v45, :cond_d04

    .line 3110
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : retry vpn : Network is connected"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :try_start_b4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    if-eqz v45, :cond_27

    .line 3113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_b73
    :goto_b73
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_cf9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 3114
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 3115
    .restart local v15    # "entry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v25

    .line 3116
    .local v25, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    const/16 v34, 0x1

    .line 3119
    .local v34, "removeProfileError":Z
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_b9d
    :goto_b9d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_bc8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 3120
    .local v26, "localState":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v45

    if-lez v45, :cond_bc5

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v45

    if-lez v45, :cond_b9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v46

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static/range {v45 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_b9d

    .line 3123
    :cond_bc5
    const/16 v34, 0x0

    goto :goto_b9d

    .line 3126
    .end local v26    # "localState":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    :cond_bc8
    if-eqz v34, :cond_bfd

    .line 3127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bdb
    .catch Landroid/os/RemoteException; {:try_start_b4f .. :try_end_bdb} :catch_bdc

    goto :goto_b73

    .line 3158
    .end local v15    # "entry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "key":Ljava/lang/String;
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    .end local v34    # "removeProfileError":Z
    :catch_bdc
    move-exception v14

    .line 3159
    .restart local v14    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : retry vpn : Exception at mocana:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 3129
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v15    # "entry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    .restart local v34    # "removeProfileError":Z
    :cond_bfd
    :try_start_bfd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v36

    .line 3130
    .restart local v36    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v41, 0x0

    .line 3131
    .restart local v41    # "value":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_c1d

    .line 3132
    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    .end local v41    # "value":Ljava/lang/String;
    check-cast v41, Ljava/lang/String;

    .line 3135
    .restart local v41    # "value":Ljava/lang/String;
    :cond_c1d
    if-eqz v41, :cond_b73

    .line 3136
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : retry vpn : Callback state: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    const-string v45, "IDLE"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_c55

    const-string v45, "FAILED"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_b73

    .line 3138
    :cond_c55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    new-instance v46, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-direct/range {v46 .. v48}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    move-object/from16 v2, v46

    move/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v45

    if-nez v45, :cond_ce6

    .line 3140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v36

    .line 3142
    const/16 v41, 0x0

    .line 3143
    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_cdb

    .line 3144
    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    .end local v41    # "value":Ljava/lang/String;
    check-cast v41, Ljava/lang/String;

    .line 3145
    .restart local v41    # "value":Ljava/lang/String;
    if-eqz v41, :cond_cdb

    .line 3146
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : retry vpn : Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    :cond_cdb
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : retry vpn : Cannot start vpn, mocana returned error"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b73

    .line 3150
    :cond_ce6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b73

    .line 3156
    .end local v15    # "entry":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "key":Ljava/lang/String;
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    .end local v34    # "removeProfileError":Z
    .end local v36    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v41    # "value":Ljava/lang/String;
    :cond_cf9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_d02
    .catch Landroid/os/RemoteException; {:try_start_bfd .. :try_end_d02} :catch_bdc

    goto/16 :goto_27

    .line 3162
    :cond_d04
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : retry vpn : Network is not connected"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 3166
    :pswitch_d0f
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : vpn init bind"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    .line 2762
    nop

    :pswitch_data_d24
    .packed-switch 0x1
        :pswitch_28
        :pswitch_490
        :pswitch_736
        :pswitch_7ad
        :pswitch_801
        :pswitch_b28
        :pswitch_871
        :pswitch_d0f
    .end packed-switch

    .line 2782
    :pswitch_data_d38
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_2d4
        :pswitch_d6
        :pswitch_134
        :pswitch_20e
        :pswitch_371
    .end packed-switch

    .line 2876
    :sswitch_data_d48
    .sparse-switch
        0x1 -> :sswitch_3a4
        0x5 -> :sswitch_409
    .end sparse-switch
.end method
