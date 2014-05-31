.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ACTION_MDM_BROWSERPROVIDER_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed"

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final AUDIT:I = 0x3

.field private static final AUDITLOGPOLICY_AUDITLOGENABLED_METHOD:Ljava/lang/String; = "isAuditLogEnabled"

.field private static final AUDITLOGPOLICY_AUTOCOMPLETE_EVENT:Ljava/lang/String; = "AUTO_COMPLETING_DATA"

.field private static final AUDITLOGPOLICY_OPENPOPUP_EVENT:Ljava/lang/String; = "OPEN_POPUP_URL"

.field private static final AUDITLOGPOLICY_OPENURL_EVENT:Ljava/lang/String; = "OPEN_URL"

.field private static final AUDIT_URI:Ljava/lang/String; = "AuditLog"

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BROWSER:I = 0x1

.field private static final BROWSERPOLICY_AUTOFILL_METHOD:Ljava/lang/String; = "getAutoFillSetting"

.field private static final BROWSERPOLICY_COOKIES_METHOD:Ljava/lang/String; = "getCookiesSetting"

.field private static final BROWSERPOLICY_HTTPPROXY_METHOD:Ljava/lang/String; = "getHttpProxy"

.field private static final BROWSERPOLICY_JAVASCRIPT_METHOD:Ljava/lang/String; = "getJavaScriptSetting"

.field private static final BROWSERPOLICY_POPUPS_METHOD:Ljava/lang/String; = "getPopupsSetting"

.field private static final BROWSER_URI:Ljava/lang/String; = "BrowserPolicy"

.field private static final CERTIFICATE:I = 0x5

.field private static final CERTIFICATEPOLICY_CERTIFICATE_REMOVED_METHOD:Ljava/lang/String; = "certificateRemoved"

.field private static final CERTIFICATEPOLICY_NOTIFY_METHOD:Ljava/lang/String; = "notifyCertificateFailure"

.field private static final CERTIFICATE_URI:Ljava/lang/String; = "CertificatePolicy"

.field public static final EXTRA_API_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed.api"

.field private static final FIREWALL:I = 0x2

.field private static final FIREWALLPOLICY_SAVEURLBLOCKEDREPORT_METHOD:Ljava/lang/String; = "saveURLBlockedReport"

.field private static final FIREWALLPOLICY_URLFILTERENABLED_METHOD:Ljava/lang/String; = "getURLFilterEnabled"

.field private static final FIREWALLPOLICY_URLFILTERLIST_METHOD:Ljava/lang/String; = "getURLFilterList"

.field private static final FIREWALLPOLICY_URLFILTERREPORTENABLED_METHOD:Ljava/lang/String; = "getURLFilterReportEnabled"

.field private static final FIREWALL_URI:Ljava/lang/String; = "FirewallPolicy"

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field private static final PROVIDER_AUDITLOGPOLICY:Ljava/lang/String; = "AuditLogPolicy/"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLogPolicy//isAuditLogEnabled"

.field public static final PROVIDER_AUDITLOGPOLICY_AUTOCOMPLETE:Ljava/lang/String; = "AuditLogPolicy//AUTO_COMPLETING_DATA"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENPOPUP:Ljava/lang/String; = "AuditLogPolicy//OPEN_POPUP_URL"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENURL:Ljava/lang/String; = "AuditLogPolicy//OPEN_URL"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_CERTIFICATEPOLICY_NOTIFY:Ljava/lang/String; = "CertificatePolicy/notifyCertificateFailure"

.field public static final PROVIDER_FIREWALLPOLICY_SAVEURLBLOCKEDREPORT:Ljava/lang/String; = "FirewallPolicy/saveURLBlockedReport"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field private static final PROVIDER_SMARTCARDBROWSERPOLICY:Ljava/lang/String; = "SmartCardPolicy/"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardPolicy//isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardPolicy//getClientCertificateAlias"

.field private static final SMARTCARD:I = 0x4

.field private static final SMARTCARDBROWSERPOLICY_AUTHENTICATION_METHOD:Ljava/lang/String; = "isAuthenticationEnabled"

.field private static final SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE_METHOD:Ljava/lang/String; = "getClientCertificateAlias"

.field private static final SMARTCARD_URI:Ljava/lang/String; = "SmartCardBrowserPolicy"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mCursor:Landroid/database/MatrixCursor;

.field mEdmFirewallPolicy:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 84
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 85
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "FirewallPolicy"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AuditLog"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardBrowserPolicy"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.sec.knox.provider/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 507
    .local v0, "content_uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 508
    .local v1, "token":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 509
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 414
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 416
    .local v10, "callingUid":I
    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_da

    .line 483
    :cond_f
    :goto_f
    :pswitch_f
    const/4 v2, 0x0

    return-object v2

    .line 428
    :pswitch_11
    const-string v2, "firewall_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .line 431
    .local v13, "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    if-eqz v13, :cond_f

    .line 432
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 433
    .local v9, "api":Ljava/lang/String;
    if-eqz v9, :cond_f

    const-string v2, "saveURLBlockedReport"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 434
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto :goto_f

    .line 444
    .end local v9    # "api":Ljava/lang/String;
    .end local v13    # "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    :pswitch_3f
    const-string v2, "certificate_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 447
    .local v12, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v12, :cond_f

    .line 448
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 449
    .restart local v9    # "api":Ljava/lang/String;
    const-string v2, "fail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 450
    .local v11, "fail":Ljava/lang/Integer;
    if-eqz v9, :cond_f

    const-string v2, "notifyCertificateFailure"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v11, :cond_f

    .line 451
    const-string v2, "module"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_f

    .line 463
    .end local v9    # "api":Ljava/lang/String;
    .end local v11    # "fail":Ljava/lang/Integer;
    .end local v12    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    :pswitch_76
    const-string v2, "auditlog"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 466
    .local v1, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v1, :cond_f

    .line 467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 468
    .local v14, "token":J
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    const/4 v5, 0x1

    :goto_b2
    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_f

    .line 468
    :cond_d7
    const/4 v5, 0x0

    goto :goto_b2

    .line 416
    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_f
        :pswitch_11
        :pswitch_76
        :pswitch_f
        :pswitch_3f
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 32
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 165
    .local v12, "callingUid":I
    sget-object v22, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    packed-switch v22, :pswitch_data_426

    .line 408
    :cond_11
    :pswitch_11
    const/16 v22, 0x0

    :goto_13
    return-object v22

    .line 168
    :pswitch_14
    const-string v22, "browser_policy"

    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 171
    .local v16, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-eqz v16, :cond_11

    .line 172
    if-eqz p3, :cond_70

    const-string v22, "getHttpProxy"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_70

    .line 173
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v19

    .line 176
    .local v19, "proxy":Ljava/lang/String;
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "getHttpProxy"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v19, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto :goto_13

    .line 186
    .end local v19    # "proxy":Ljava/lang/String;
    :cond_70
    if-eqz p3, :cond_cb

    const-string v22, "getAutoFillSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_cb

    .line 187
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v4

    .line 192
    .local v4, "bAutoFill":Z
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "getAutoFillSetting"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 203
    .end local v4    # "bAutoFill":Z
    :cond_cb
    if-eqz p3, :cond_126

    const-string v22, "getCookiesSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_126

    .line 205
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v5

    .line 210
    .local v5, "bCookiesSettings":Z
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "getCookiesSetting"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 219
    .end local v5    # "bCookiesSettings":Z
    :cond_126
    if-eqz p3, :cond_181

    const-string v22, "getJavaScriptSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_181

    .line 221
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x10

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v9

    .line 226
    .local v9, "bJavaScriptSetting":Z
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "getJavaScriptSetting"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 237
    .end local v9    # "bJavaScriptSetting":Z
    :cond_181
    if-eqz p3, :cond_11

    const-string v22, "getPopupsSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 239
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v10

    .line 244
    .local v10, "bPopupSettings":Z
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "getPopupsSetting"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 261
    .end local v10    # "bPopupSettings":Z
    .end local v16    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    :pswitch_1dc
    const-string/jumbo v22, "smartcard_browser_policy"

    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    .line 264
    .local v18, "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    if-eqz v18, :cond_11

    .line 265
    if-eqz p3, :cond_23e

    const-string v22, "isAuthenticationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23e

    .line 267
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    .line 271
    .local v8, "bIsAuthenticationEnabled":Z
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "isAuthenticationEnabled"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 282
    .end local v8    # "bIsAuthenticationEnabled":Z
    :cond_23e
    if-eqz p3, :cond_11

    const-string v22, "getClientCertificateAlias"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 285
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v22

    if-gtz v22, :cond_256

    .line 286
    const/16 v22, 0x0

    goto/16 :goto_13

    .line 288
    :cond_256
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x0

    aget-object v23, p4, v23

    const/16 v24, 0x1

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 293
    .local v20, "sGetClientCertificateAlias":Ljava/lang/String;
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "getClientCertificateAlias"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v20, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 309
    .end local v18    # "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v20    # "sGetClientCertificateAlias":Ljava/lang/String;
    :pswitch_2ab
    const-string v22, "firewall_policy"

    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .line 312
    .local v17, "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    if-eqz v17, :cond_11

    .line 314
    if-eqz p3, :cond_30c

    const-string v22, "getURLFilterEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_30c

    .line 316
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 320
    .local v6, "bGetURLFilterEnabled":Z
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "getURLFilterEnabled"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 331
    .end local v6    # "bGetURLFilterEnabled":Z
    :cond_30c
    if-eqz p3, :cond_378

    const-string v22, "getURLFilterList"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_378

    .line 335
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterListForContentProvider(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v21

    .line 338
    .local v21, "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "getURLFilterList"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 343
    if-eqz v21, :cond_370

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_370

    .line 346
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_34e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_370

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 347
    .local v13, "filterList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v13, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_34e

    .line 353
    .end local v13    # "filterList":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 355
    .end local v21    # "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_378
    if-eqz p3, :cond_11

    const-string v22, "getURLFilterReportEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 359
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 363
    .local v11, "bUrlFilterReportEnable":Ljava/lang/Boolean;
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "getURLFilterReportEnabled"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v11, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 383
    .end local v11    # "bUrlFilterReportEnable":Ljava/lang/Boolean;
    .end local v17    # "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    :pswitch_3cf
    const-string v22, "auditlog"

    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 386
    .local v15, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v15, :cond_11

    .line 387
    if-eqz p3, :cond_11

    const-string v22, "isAuditLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 389
    invoke-virtual {v15}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v7

    .line 392
    .local v7, "bIsAuditLogEnabled":Z
    new-instance v22, Landroid/database/MatrixCursor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "isAuditLogEnabled"

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider;->mCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    goto/16 :goto_13

    .line 165
    nop

    :pswitch_data_426
    .packed-switch 0x1
        :pswitch_14
        :pswitch_2ab
        :pswitch_3cf
        :pswitch_1dc
        :pswitch_11
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method
