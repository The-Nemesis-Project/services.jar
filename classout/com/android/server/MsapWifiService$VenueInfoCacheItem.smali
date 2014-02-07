.class Lcom/android/server/MsapWifiService$VenueInfoCacheItem;
.super Ljava/lang/Object;
.source "MsapWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MsapWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VenueInfoCacheItem"
.end annotation


# instance fields
.field mBssId:Ljava/lang/String;

.field mParseError:I

.field mServerId:Ljava/lang/String;

.field mSsId:Ljava/lang/String;

.field mVenueHash:Ljava/lang/String;

.field mVenueName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MsapWifiService;


# direct methods
.method constructor <init>(Lcom/android/server/MsapWifiService;)V
    .registers 3

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->this$0:Lcom/android/server/MsapWifiService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mParseError:I

    .line 182
    return-void
.end method

.method constructor <init>(Lcom/android/server/MsapWifiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p2, "venueHash"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "bssId"    # Ljava/lang/String;
    .param p5, "ssId"    # Ljava/lang/String;
    .param p6, "venueName"    # Ljava/lang/String;
    .param p7, "parseError"    # I

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->this$0:Lcom/android/server/MsapWifiService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    .line 188
    iput-object p4, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    .line 189
    iput-object p5, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    .line 190
    iput-object p6, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    .line 191
    iput p7, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mParseError:I

    .line 192
    return-void
.end method

.method private compareString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 226
    if-nez p1, :cond_d

    const-string v0, ""

    .line 227
    .local v0, "tmpStr1":Ljava/lang/String;
    :goto_4
    if-nez p2, :cond_f

    const-string v1, ""

    .line 228
    .local v1, "tmpStr2":Ljava/lang/String;
    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .end local v0    # "tmpStr1":Ljava/lang/String;
    .end local v1    # "tmpStr2":Ljava/lang/String;
    :cond_d
    move-object v0, p1

    .line 226
    goto :goto_4

    .restart local v0    # "tmpStr1":Ljava/lang/String;
    :cond_f
    move-object v1, p2

    .line 227
    goto :goto_8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 196
    if-nez p1, :cond_4

    .line 209
    :cond_3
    :goto_3
    return v1

    :cond_4
    move-object v0, p1

    .line 200
    check-cast v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;

    .line 202
    .local v0, "venueInfoCacheItem":Lcom/android/server/MsapWifiService$VenueInfoCacheItem;
    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method
