.class public Lcom/android/server/enterprise/seandroid/SEAndroidService;
.super Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;
.source "SEAndroidService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_PERMISSIONS_FILEPATH:Ljava/io/File; = null

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAC_TEMP:Ljava/io/File; = null

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static SEAPP_CONTEXTS_FILEPATH:Ljava/io/File; = null

.field private static SEAPP_TEMP:Ljava/io/File; = null

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAndroidPolicy"


# instance fields
.field private gotSignatureMatch:Z

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_temp.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    .line 113
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/seapp_temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    .line 114
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_POLICY_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    .line 127
    iput-object p1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    .line 128
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 129
    return-void
.end method

.method private addNewDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newDomain"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "dataType"    # Ljava/lang/String;

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 880
    const-string v5, "3"

    .line 881
    .local v5, "level":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 882
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->createTempFile()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 883
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->addNewDomainToMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .local v7, "isAddedMac":Z
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 884
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->addNewDomainToSeapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 885
    .local v8, "isAddedSeapp":Z
    and-int v6, v7, v8

    .line 886
    .local v6, "isAdded":Z
    return v6
.end method

.method private addNewDomainToMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 34
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newDomain"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "dataType"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/String;

    .prologue
    .line 899
    const/4 v11, 0x0

    .line 900
    .local v11, "isAddedMac":Z
    const/4 v12, 0x0

    .line 902
    .local v12, "isContainerAllowedPackage":Z
    sget-object v25, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    .line 903
    .local v25, "xmlFile":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 906
    .local v7, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_8
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v21, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 908
    if-nez v21, :cond_16

    .line 909
    const/16 v26, 0x0

    .line 966
    .end local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_15
    return v26

    .line 911
    .restart local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_16
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 912
    .local v3, "Signature":Ljava/lang/String;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 913
    .local v6, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 914
    .local v8, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->normalize()V

    .line 915
    const-string v26, "policy"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 916
    .local v15, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .line 917
    .local v14, "policyElement":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v14, Lorg/w3c/dom/Element;

    .line 918
    .restart local v14    # "policyElement":Lorg/w3c/dom/Element;
    const-string v26, "signer"

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 919
    .local v18, "signer":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 921
    .local v20, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_51
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_99

    .line 922
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 923
    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string v26, "signature"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_137

    .line 924
    const-string v26, "containerAllowedPackage"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 925
    .local v5, "containerAllowedPackageElement":Lorg/w3c/dom/Element;
    const-string v26, "name"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v26, "level"

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 928
    const/4 v12, 0x1

    .line 933
    .end local v5    # "containerAllowedPackageElement":Lorg/w3c/dom/Element;
    :cond_99
    if-nez v12, :cond_ee

    .line 934
    const-string v26, "signer"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 935
    .local v19, "signerElement":Lorg/w3c/dom/Element;
    const-string v26, "seinfo"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 936
    .local v17, "seinfoElement":Lorg/w3c/dom/Element;
    const-string v26, "level"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 937
    .local v13, "levelElement":Lorg/w3c/dom/Element;
    const-string v26, "allowall"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 938
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const-string v26, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v26, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-interface {v13, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v26, "signature"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 942
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 943
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 944
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 946
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v13    # "levelElement":Lorg/w3c/dom/Element;
    .end local v17    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v19    # "signerElement":Lorg/w3c/dom/Element;
    :cond_ee
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->normalize()V

    .line 947
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    .line 948
    .local v24, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    .line 949
    .local v23, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 950
    .local v22, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v16, Ljavax/xml/transform/stream/StreamResult;

    sget-object v26, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 951
    .local v16, "result":Ljavax/xml/transform/stream/StreamResult;
    const-string v26, "indent"

    const-string v27, "yes"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v26, "{http://xml.apache.org/xslt}indent-amount"

    const-string v27, "2"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_132
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_132} :catch_13b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_132} :catch_140
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_132} :catch_145
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_132} :catch_14a

    .line 955
    const/4 v11, 0x1

    .end local v3    # "Signature":Ljava/lang/String;
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v18    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v23    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v24    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_133
    move/from16 v26, v11

    .line 966
    goto/16 :goto_15

    .line 921
    .restart local v3    # "Signature":Ljava/lang/String;
    .restart local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v10    # "i":I
    .restart local v14    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_137
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_51

    .line 957
    .end local v3    # "Signature":Ljava/lang/String;
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v18    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_13b
    move-exception v9

    .line 958
    .local v9, "e1":Lorg/xml/sax/SAXException;
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_133

    .line 959
    .end local v9    # "e1":Lorg/xml/sax/SAXException;
    :catch_140
    move-exception v9

    .line 960
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_133

    .line 961
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_145
    move-exception v9

    .line 962
    .local v9, "e1":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_133

    .line 963
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_14a
    move-exception v9

    .line 964
    .local v9, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_133
.end method

.method private addNewDomainToSeapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newDomain"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "dataType"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/String;

    .prologue
    .line 977
    const/4 v6, 0x0

    .line 981
    .local v6, "isAddedSeapp":Z
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v11, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 983
    .local v3, "fstream":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 984
    .local v5, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 986
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    .local v2, "fileContent":Ljava/lang/StringBuilder;
    :goto_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "strLine":Ljava/lang/String;
    if-eqz v9, :cond_49

    .line 988
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v11, "\n"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_1c

    .line 1013
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fileContent":Ljava/lang/StringBuilder;
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v9    # "strLine":Ljava/lang/String;
    :catch_2b
    move-exception v1

    .line 1014
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_48
    return v6

    .line 991
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fileContent":Ljava/lang/StringBuilder;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "strLine":Ljava/lang/String;
    :cond_49
    const/16 v11, 0x9

    :try_start_4b
    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "2"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "3"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "4"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "5"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "6"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "7"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "8"

    aput-object v12, v10, v11

    .line 992
    .local v10, "tokens":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "user=_app"

    aput-object v12, v10, v11

    .line 993
    const/4 v11, 0x1

    const-string v12, "seinfo="

    aput-object v12, v10, v11

    .line 994
    const/4 v11, 0x2

    aput-object p3, v10, v11

    .line 995
    const/4 v11, 0x3

    const-string v12, "domain="

    aput-object v12, v10, v11

    .line 996
    const/4 v11, 0x4

    aput-object p2, v10, v11

    .line 997
    const/4 v11, 0x5

    const-string v12, "type="

    aput-object v12, v10, v11

    .line 998
    const/4 v11, 0x6

    aput-object p4, v10, v11

    .line 999
    const/4 v11, 0x7

    const-string v12, "level="

    aput-object v12, v10, v11

    .line 1000
    const/16 v11, 0x8

    aput-object p5, v10, v11

    .line 1001
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x5

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x6

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x7

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x8

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1004
    .local v7, "newLine":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v11, "\n"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    new-instance v4, Ljava/io/FileWriter;

    sget-object v11, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1007
    .local v4, "fstreamWrite":Ljava/io/FileWriter;
    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1008
    .local v8, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 1010
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 1011
    const-string v11, "SEAndroidPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New Line Added = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_13b} :catch_2b

    .line 1012
    const/4 v6, 0x1

    goto/16 :goto_48
.end method

.method private declared-synchronized adminLockPolicy(ZI)Z
    .registers 9
    .param p1, "status"    # Z
    .param p2, "uid"    # I

    .prologue
    .line 566
    monitor-enter p0

    :try_start_1
    const-string v3, "SEAndroidPolicy"

    const-string v4, "adminLockPolicy_begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "ret":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_50

    move-result v3

    if-eqz v3, :cond_2c

    .line 570
    :try_start_f
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Locking on Database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 572
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "SeAndroidPolicyLocked"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v3, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SE_ANDROID_TABLE"

    invoke-virtual {v3, p2, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_46
    .catchall {:try_start_f .. :try_end_2b} :catchall_50

    move-result v2

    .line 579
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2c
    :goto_2c
    :try_start_2c
    const-string v3, "SEAndroidPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminLockPolicy result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_50

    .line 580
    monitor-exit p0

    return v2

    .line 574
    :catch_46
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/Exception;
    :try_start_47
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Exception on Database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    .line 576
    const/4 v2, 0x0

    goto :goto_2c

    .line 566
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ret":Z
    :catchall_50
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized allowChanges(I)Z
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 694
    monitor-enter p0

    :try_start_1
    const-string v2, "SEAndroidPolicy"

    const-string v3, "allowChanges_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v1, 0x0

    .line 697
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "requestAgent":Ljava/lang/String;
    const-string v2, "SEAndroidPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v2, "com.sec.android.app.spota"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 701
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Requested by SPOTA Agent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 703
    :cond_46
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_73

    .line 704
    const/4 v1, 0x1

    .line 714
    :cond_4e
    :goto_4e
    monitor-exit p0

    return v1

    .line 707
    :cond_50
    :try_start_50
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Requested by MDM Agent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    if-eqz v2, :cond_6a

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 710
    :cond_6a
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_50 .. :try_end_71} :catchall_73

    .line 711
    const/4 v1, 0x1

    goto :goto_4e

    .line 694
    .end local v0    # "requestAgent":Ljava/lang/String;
    .end local v1    # "ret":Z
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized broadcastStateChanged(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    .line 679
    monitor-enter p0

    :try_start_1
    const-string v1, "SEAndroidPolicy"

    const-string v2, "broadcastStateChanged_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v1, "SEAndroidPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.seandroid.policy.state.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mdm.intent.extra.seandroid.state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 684
    monitor-exit p0

    return-void

    .line 679
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .registers 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 504
    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFiles_begin"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v4, 0x0

    .line 507
    .local v4, "ret":Z
    if-eqz p2, :cond_20

    .line 508
    const/4 v1, 0x0

    .line 510
    .local v1, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_b
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/security/"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .local v3, "mFileDest":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_39
    .catchall {:try_start_b .. :try_end_17} :catchall_4e

    .line 512
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_17
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1a} :catch_6a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_67
    .catchall {:try_start_17 .. :try_end_1a} :catchall_64

    .line 513
    const/4 v4, 0x1

    .line 522
    if-eqz v2, :cond_20

    .line 523
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_5e

    .line 529
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v3    # "mFileDest":Ljava/io/File;
    :cond_20
    :goto_20
    return v4

    .line 514
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_21
    move-exception v0

    .line 515
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_22
    :try_start_22
    const-string v5, "SEAndroidPolicy"

    const-string v6, "File Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_4e

    .line 516
    const/4 v4, 0x0

    .line 522
    if-eqz v1, :cond_20

    .line 523
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    .line 524
    :catch_30
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_35
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_39
    move-exception v0

    .line 518
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3a
    :try_start_3a
    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFile failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4e

    .line 519
    const/4 v4, 0x0

    .line 522
    if-eqz v1, :cond_20

    .line 523
    :try_start_44
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_20

    .line 524
    :catch_48
    move-exception v0

    .line 525
    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_35

    .line 521
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4e
    move-exception v5

    .line 522
    :goto_4f
    if-eqz v1, :cond_54

    .line 523
    :try_start_51
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 521
    :cond_54
    :goto_54
    throw v5

    .line 524
    :catch_55
    move-exception v0

    .line 525
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SEAndroidPolicy"

    const-string v7, "Error closing OutputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 524
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "mFileDest":Ljava/io/File;
    :catch_5e
    move-exception v0

    .line 525
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_35

    .line 521
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_64
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_4f

    .line 517
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_67
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_3a

    .line 514
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_6a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_22
.end method

.method private createTempFile()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 488
    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->duplicateFile(Ljava/io/File;Ljava/io/File;)V

    .line 489
    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 490
    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->duplicateFile(Ljava/io/File;Ljava/io/File;)V

    .line 491
    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 493
    return-void
.end method

.method private static duplicateFile(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 1231
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1234
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1236
    .local v3, "writer":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 1238
    .local v1, "line":Ljava/lang/String;
    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1239
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1240
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_31} :catch_32
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_31} :catch_3e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_43

    goto :goto_23

    .line 1244
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_32
    move-exception v0

    .line 1246
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1254
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_36
    return-void

    .line 1242
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_37
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1243
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_3d} :catch_32
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_43

    goto :goto_36

    .line 1247
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_3e
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_36

    .line 1250
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_43
    move-exception v0

    .line 1252
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36
.end method

.method private enforceSeAndroidPermission()I
    .registers 3

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 147
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v6, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 804
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 806
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v6, 0x40

    :try_start_9
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 807
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 808
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v6, v4

    if-ge v1, v6, :cond_29

    .line 810
    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_21} :catch_24

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 813
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_24
    move-exception v0

    .line 814
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 815
    const/4 v5, 0x0

    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_29
    return-object v5
.end method

.method private declared-synchronized isAdminLocked()Z
    .registers 8

    .prologue
    .line 616
    monitor-enter p0

    :try_start_1
    const-string v5, "SEAndroidPolicy"

    const-string v6, "isAdminLocked_begin = all"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v4, 0x0

    .line 619
    .local v4, "ret":Z
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "SeAndroidPolicyLocked"

    aput-object v6, v0, v5

    .line 621
    .local v0, "columns":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SE_ANDROID_TABLE"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 624
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .line 625
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 627
    .local v2, "it":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 628
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 629
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v5, "true"

    const-string v6, "SeAndroidPolicyLocked"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 630
    const-string v5, "SEAndroidPolicy"

    const-string v6, "At Least one Admin is locked"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_47

    .line 631
    const/4 v4, 0x1

    .line 635
    :cond_45
    monitor-exit p0

    return v4

    .line 616
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Z
    :catchall_47
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized isAdminLocked(I)Z
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 590
    monitor-enter p0

    :try_start_1
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked_begin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_64

    .line 591
    const/4 v3, 0x0

    .line 593
    .local v3, "ret":Z
    const/4 v4, 0x2

    :try_start_1b
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "SeAndroidPolicyLocked"

    aput-object v5, v0, v4

    .line 594
    .local v0, "columns":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SE_ANDROID_TABLE"

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 597
    .local v2, "results":Landroid/content/ContentValues;
    const-string v4, "true"

    const-string v5, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3a} :catch_5a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_64

    move-result v4

    if-eqz v4, :cond_58

    .line 598
    const/4 v3, 0x1

    .line 606
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "results":Landroid/content/ContentValues;
    :goto_3e
    :try_start_3e
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_64

    .line 607
    monitor-exit p0

    return v3

    .line 600
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "results":Landroid/content/ContentValues;
    :cond_58
    const/4 v3, 0x0

    goto :goto_3e

    .line 602
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "results":Landroid/content/ContentValues;
    :catch_5a
    move-exception v1

    .line 603
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5b
    const-string v4, "SEAndroidPolicy"

    const-string v5, "isAdminLocked = exception"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_64

    .line 604
    const/4 v3, 0x0

    goto :goto_3e

    .line 590
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ret":Z
    :catchall_64
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private removeFiles()Z
    .registers 13

    .prologue
    .line 538
    const-string v9, "SEAndroidPolicy"

    const-string v10, "removeFiles_begin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v8, 0x0

    .line 541
    .local v8, "ret":Z
    :try_start_8
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v4, "fileFolder":Ljava/io/File;
    const-string v9, "SEAndroidPolicy"

    const-string v10, "Lets start the loop"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 544
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "allFiles":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_23
    if-ge v6, v7, :cond_34

    aget-object v5, v1, v6

    .line 546
    .local v5, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_4e

    .line 545
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 550
    .end local v0    # "allFiles":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_34
    const/4 v8, 0x1

    .line 555
    .end local v4    # "fileFolder":Ljava/io/File;
    :goto_35
    const-string v9, "SEAndroidPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeFiles result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return v8

    .line 551
    :catch_4e
    move-exception v2

    .line 552
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "SEAndroidPolicy"

    const-string v10, "Exception.removeFiles"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v8, 0x0

    goto :goto_35
.end method

.method private returnFilePath()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 447
    new-array v0, v10, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/spota/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v7

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/security/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v8

    const/4 v3, 0x0

    aput-object v3, v0, v9

    .line 454
    .local v0, "MAC_FILE":[Ljava/io/File;
    new-array v1, v10, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/seapp_contexts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/spota/seapp_contexts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v7

    new-instance v3, Ljava/io/File;

    const-string v4, "seapp_contexts"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v8

    const/4 v3, 0x0

    aput-object v3, v1, v9

    .line 460
    .local v1, "SEAPP_CONTEXTS_FILE":[Ljava/io/File;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v2

    .line 461
    .local v2, "index":I
    const-string v3, "SEAndroidPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    packed-switch v2, :pswitch_data_94

    .line 476
    :goto_7c
    return-void

    .line 466
    :pswitch_7d
    aget-object v3, v0, v2

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    .line 467
    aget-object v3, v1, v2

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    goto :goto_7c

    .line 472
    :pswitch_86
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    .line 473
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    goto :goto_7c

    .line 464
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_86
        :pswitch_86
        :pswitch_86
    .end packed-switch
.end method

.method private declared-synchronized searchAgent()I
    .registers 12

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 644
    monitor-enter p0

    :try_start_4
    const-string v9, "SEAndroidPolicy"

    const-string v10, "searchAgent_begin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "SeAndroidPolicyLocked"

    aput-object v10, v0, v9

    .line 648
    .local v0, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SE_ANDROID_TABLE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 651
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_88

    .line 652
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 653
    .local v2, "list":Landroid/content/ContentValues;
    const-string v9, "true"

    const-string v10, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 654
    const-string v9, "adminUid"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 655
    .local v3, "lockedUid":I
    iget-object v9, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 656
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 657
    const-string v8, "SEAndroidPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v8, "com.sec.android.app.spota"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 659
    const-string v7, "SEAndroidPolicy"

    const-string v8, "searchAgent = SPOTA_AGENT"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_4 .. :try_end_7d} :catchall_91

    .line 670
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Landroid/content/ContentValues;
    .end local v3    # "lockedUid":I
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_7d
    monitor-exit p0

    return v6

    .line 662
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Landroid/content/ContentValues;
    .restart local v3    # "lockedUid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_7f
    :try_start_7f
    const-string v6, "SEAndroidPolicy"

    const-string v8, "searchAgent = MDM_AGENT"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 663
    goto :goto_7d

    .line 669
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Landroid/content/ContentValues;
    .end local v3    # "lockedUid":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_88
    const-string v6, "SEAndroidPolicy"

    const-string v7, "searchAgent = NONE"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_91

    move v6, v8

    .line 670
    goto :goto_7d

    .line 644
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_91
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public amsGetEnforce()Z
    .registers 5

    .prologue
    .line 319
    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsGetEnforce_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 324
    .local v0, "isEnforced":Z
    const-string v2, "persist.security.ams.enforce"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_1d

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 326
    const/4 v0, 0x1

    .line 328
    :cond_1d
    return v0
.end method

.method public amsSetEnforce(Z)I
    .registers 7
    .param p1, "value"    # Z

    .prologue
    .line 337
    const-string v3, "SEAndroidPolicy"

    const-string v4, "amsSetEnforce_begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    .line 339
    .local v1, "uid":I
    const/4 v0, -0x1

    .line 341
    .local v0, "ret":I
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 342
    if-eqz p1, :cond_25

    const-string v2, "1"

    .line 344
    .local v2, "val":Ljava/lang/String;
    :goto_17
    const-string v3, "persist.security.ams.enforce"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    .line 346
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 350
    .end local v2    # "val":Ljava/lang/String;
    :goto_24
    return v0

    .line 342
    :cond_25
    const-string v2, "0"

    goto :goto_17

    .line 348
    :cond_28
    const/4 v0, -0x2

    goto :goto_24
.end method

.method public amsSetLogLevel(I)I
    .registers 8
    .param p1, "FLAG"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsSetLogLevel_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    .line 363
    .local v1, "uid":I
    const/4 v0, -0x1

    .line 365
    .local v0, "ret":I
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 366
    packed-switch p1, :pswitch_data_5c

    .line 389
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Flag with a wrong value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 391
    const/4 v0, -0x1

    .line 397
    :goto_22
    return v0

    .line 369
    :pswitch_23
    const-string v2, "persist.security.ams.verbose"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    .line 372
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_22

    .line 376
    :pswitch_35
    const-string v2, "persist.security.ams.verbose"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    .line 379
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_22

    .line 383
    :pswitch_47
    const-string v2, "persist.security.ams.verbose"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    .line 386
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_22

    .line 395
    :cond_5a
    const/4 v0, -0x2

    goto :goto_22

    .line 366
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_35
        :pswitch_47
    .end packed-switch
.end method

.method public getDataType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 29
    .param p1, "seInfo"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1131
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 1133
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 1134
    new-instance v8, Ljava/io/FileInputStream;

    sget-object v23, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1136
    .local v8, "fstream":Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1137
    .local v12, "in":Ljava/io/DataInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1141
    .local v5, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 1142
    .local v6, "datatype":Ljava/lang/String;
    :cond_23
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "strLine":Ljava/lang/String;
    if-eqz v16, :cond_ff

    .line 1143
    const-string v23, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1144
    .local v18, "tokens_del":[Ljava/lang/String;
    move-object/from16 v2, v18

    .local v2, "arr$":[Ljava/lang/String;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v11, v9

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .local v11, "i$":I
    :goto_38
    if-ge v11, v13, :cond_23

    aget-object v17, v2, v11

    .line 1145
    .local v17, "tokens_cur":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "seinfo="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_fa

    .line 1146
    move-object/from16 v3, v18

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v9, 0x0

    .end local v11    # "i$":I
    .restart local v9    # "i$":I
    :goto_61
    if-ge v9, v14, :cond_c6

    aget-object v22, v3, v9

    .line 1147
    .local v22, "tokens_new":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c3

    .line 1148
    move-object/from16 v2, v18

    .end local v3    # "arr$":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v13, v2

    .end local v14    # "len$":I
    .restart local v13    # "len$":I
    const/4 v9, 0x0

    move v10, v9

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .local v10, "i$":I
    :goto_87
    if-ge v10, v13, :cond_bb

    aget-object v19, v2, v10

    .line 1149
    .local v19, "tokens_dom":Ljava/lang/String;
    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1150
    .local v20, "tokens_lhs":[Ljava/lang/String;
    move-object/from16 v3, v20

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v14, v3

    .restart local v14    # "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_99
    if-ge v9, v14, :cond_b7

    aget-object v21, v3, v9

    .line 1151
    .local v21, "tokens_mat":Ljava/lang/String;
    const-string v23, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b4

    .line 1152
    const/16 v23, 0x1

    aget-object v6, v20, v23

    .line 1153
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1154
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1191
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "datatype":Ljava/lang/String;
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "i$":I
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v14    # "len$":I
    .end local v16    # "strLine":Ljava/lang/String;
    .end local v17    # "tokens_cur":Ljava/lang/String;
    .end local v18    # "tokens_del":[Ljava/lang/String;
    .end local v19    # "tokens_dom":Ljava/lang/String;
    .end local v20    # "tokens_lhs":[Ljava/lang/String;
    .end local v21    # "tokens_mat":Ljava/lang/String;
    .end local v22    # "tokens_new":Ljava/lang/String;
    :goto_b3
    return-object v6

    .line 1150
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "datatype":Ljava/lang/String;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "i$":I
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "len$":I
    .restart local v16    # "strLine":Ljava/lang/String;
    .restart local v17    # "tokens_cur":Ljava/lang/String;
    .restart local v18    # "tokens_del":[Ljava/lang/String;
    .restart local v19    # "tokens_dom":Ljava/lang/String;
    .restart local v20    # "tokens_lhs":[Ljava/lang/String;
    .restart local v21    # "tokens_mat":Ljava/lang/String;
    .restart local v22    # "tokens_new":Ljava/lang/String;
    :cond_b4
    add-int/lit8 v9, v9, 0x1

    goto :goto_99

    .line 1148
    .end local v21    # "tokens_mat":Ljava/lang/String;
    :cond_b7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_87

    .line 1161
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v14    # "len$":I
    .end local v19    # "tokens_dom":Ljava/lang/String;
    .end local v20    # "tokens_lhs":[Ljava/lang/String;
    :cond_bb
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1162
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1163
    const/4 v6, 0x0

    goto :goto_b3

    .line 1146
    .end local v10    # "i$":I
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v14    # "len$":I
    :cond_c3
    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    .line 1168
    .end local v22    # "tokens_new":Ljava/lang/String;
    :cond_c6
    if-nez v6, :cond_fa

    .line 1169
    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v9, 0x0

    move v10, v9

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .restart local v10    # "i$":I
    :goto_cd
    if-ge v10, v14, :cond_fa

    aget-object v19, v3, v10

    .line 1170
    .restart local v19    # "tokens_dom":Ljava/lang/String;
    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1171
    .restart local v20    # "tokens_lhs":[Ljava/lang/String;
    move-object/from16 v4, v20

    .local v4, "arr$":[Ljava/lang/String;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_df
    if-ge v9, v15, :cond_f6

    aget-object v21, v4, v9

    .line 1172
    .restart local v21    # "tokens_mat":Ljava/lang/String;
    const-string v23, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f3

    .line 1173
    const/16 v23, 0x1

    aget-object v6, v20, v23

    .line 1171
    :cond_f3
    add-int/lit8 v9, v9, 0x1

    goto :goto_df

    .line 1169
    .end local v21    # "tokens_mat":Ljava/lang/String;
    :cond_f6
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_cd

    .line 1144
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v19    # "tokens_dom":Ljava/lang/String;
    .end local v20    # "tokens_lhs":[Ljava/lang/String;
    :cond_fa
    add-int/lit8 v9, v11, 0x1

    .restart local v9    # "i$":I
    move v11, v9

    .end local v9    # "i$":I
    .restart local v11    # "i$":I
    goto/16 :goto_38

    .line 1184
    .end local v11    # "i$":I
    .end local v17    # "tokens_cur":Ljava/lang/String;
    .end local v18    # "tokens_del":[Ljava/lang/String;
    :cond_ff
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1185
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_105} :catch_106

    goto :goto_b3

    .line 1189
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "datatype":Ljava/lang/String;
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v16    # "strLine":Ljava/lang/String;
    :catch_106
    move-exception v7

    .line 1190
    .local v7, "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1191
    const/4 v6, 0x0

    goto :goto_b3
.end method

.method public getDataTypeFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1206
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 1207
    const/4 v0, 0x0

    .line 1208
    .local v0, "datatype":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1209
    .local v1, "seInfo":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    if-nez v1, :cond_d

    .line 1218
    :cond_c
    :goto_c
    return-object v2

    .line 1213
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getDataType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    if-eqz v0, :cond_c

    move-object v2, v0

    .line 1218
    goto :goto_c
.end method

.method public getDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 29
    .param p1, "seInfo"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1031
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 1033
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 1034
    new-instance v8, Ljava/io/FileInputStream;

    sget-object v23, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1036
    .local v8, "fstream":Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1037
    .local v12, "in":Ljava/io/DataInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1041
    .local v5, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 1042
    .local v6, "domain":Ljava/lang/String;
    :cond_23
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "strLine":Ljava/lang/String;
    if-eqz v16, :cond_ff

    .line 1043
    const-string v23, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1044
    .local v18, "tokens_del":[Ljava/lang/String;
    move-object/from16 v2, v18

    .local v2, "arr$":[Ljava/lang/String;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v11, v9

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .local v11, "i$":I
    :goto_38
    if-ge v11, v13, :cond_23

    aget-object v17, v2, v11

    .line 1045
    .local v17, "tokens_cur":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "seinfo="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_fa

    .line 1046
    move-object/from16 v3, v18

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v9, 0x0

    .end local v11    # "i$":I
    .restart local v9    # "i$":I
    :goto_61
    if-ge v9, v14, :cond_c6

    aget-object v22, v3, v9

    .line 1047
    .local v22, "tokens_new":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c3

    .line 1048
    move-object/from16 v2, v18

    .end local v3    # "arr$":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v13, v2

    .end local v14    # "len$":I
    .restart local v13    # "len$":I
    const/4 v9, 0x0

    move v10, v9

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .local v10, "i$":I
    :goto_87
    if-ge v10, v13, :cond_bb

    aget-object v19, v2, v10

    .line 1049
    .local v19, "tokens_dom":Ljava/lang/String;
    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1050
    .local v20, "tokens_lhs":[Ljava/lang/String;
    move-object/from16 v3, v20

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v14, v3

    .restart local v14    # "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_99
    if-ge v9, v14, :cond_b7

    aget-object v21, v3, v9

    .line 1051
    .local v21, "tokens_mat":Ljava/lang/String;
    const-string v23, "domain"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b4

    .line 1052
    const/16 v23, 0x1

    aget-object v6, v20, v23

    .line 1053
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1054
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1091
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "domain":Ljava/lang/String;
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "i$":I
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v14    # "len$":I
    .end local v16    # "strLine":Ljava/lang/String;
    .end local v17    # "tokens_cur":Ljava/lang/String;
    .end local v18    # "tokens_del":[Ljava/lang/String;
    .end local v19    # "tokens_dom":Ljava/lang/String;
    .end local v20    # "tokens_lhs":[Ljava/lang/String;
    .end local v21    # "tokens_mat":Ljava/lang/String;
    .end local v22    # "tokens_new":Ljava/lang/String;
    :goto_b3
    return-object v6

    .line 1050
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "domain":Ljava/lang/String;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "i$":I
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "len$":I
    .restart local v16    # "strLine":Ljava/lang/String;
    .restart local v17    # "tokens_cur":Ljava/lang/String;
    .restart local v18    # "tokens_del":[Ljava/lang/String;
    .restart local v19    # "tokens_dom":Ljava/lang/String;
    .restart local v20    # "tokens_lhs":[Ljava/lang/String;
    .restart local v21    # "tokens_mat":Ljava/lang/String;
    .restart local v22    # "tokens_new":Ljava/lang/String;
    :cond_b4
    add-int/lit8 v9, v9, 0x1

    goto :goto_99

    .line 1048
    .end local v21    # "tokens_mat":Ljava/lang/String;
    :cond_b7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_87

    .line 1061
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v14    # "len$":I
    .end local v19    # "tokens_dom":Ljava/lang/String;
    .end local v20    # "tokens_lhs":[Ljava/lang/String;
    :cond_bb
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1062
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1063
    const/4 v6, 0x0

    goto :goto_b3

    .line 1046
    .end local v10    # "i$":I
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v14    # "len$":I
    :cond_c3
    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    .line 1068
    .end local v22    # "tokens_new":Ljava/lang/String;
    :cond_c6
    if-nez v6, :cond_fa

    .line 1069
    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v9, 0x0

    move v10, v9

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .restart local v10    # "i$":I
    :goto_cd
    if-ge v10, v14, :cond_fa

    aget-object v19, v3, v10

    .line 1070
    .restart local v19    # "tokens_dom":Ljava/lang/String;
    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1071
    .restart local v20    # "tokens_lhs":[Ljava/lang/String;
    move-object/from16 v4, v20

    .local v4, "arr$":[Ljava/lang/String;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_df
    if-ge v9, v15, :cond_f6

    aget-object v21, v4, v9

    .line 1072
    .restart local v21    # "tokens_mat":Ljava/lang/String;
    const-string v23, "domain"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f3

    .line 1073
    const/16 v23, 0x1

    aget-object v6, v20, v23

    .line 1071
    :cond_f3
    add-int/lit8 v9, v9, 0x1

    goto :goto_df

    .line 1069
    .end local v21    # "tokens_mat":Ljava/lang/String;
    :cond_f6
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_cd

    .line 1044
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v19    # "tokens_dom":Ljava/lang/String;
    .end local v20    # "tokens_lhs":[Ljava/lang/String;
    :cond_fa
    add-int/lit8 v9, v11, 0x1

    .restart local v9    # "i$":I
    move v11, v9

    .end local v9    # "i$":I
    .restart local v11    # "i$":I
    goto/16 :goto_38

    .line 1084
    .end local v11    # "i$":I
    .end local v17    # "tokens_cur":Ljava/lang/String;
    .end local v18    # "tokens_del":[Ljava/lang/String;
    :cond_ff
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1085
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_105} :catch_106

    goto :goto_b3

    .line 1089
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "domain":Ljava/lang/String;
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v16    # "strLine":Ljava/lang/String;
    :catch_106
    move-exception v7

    .line 1090
    .local v7, "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1091
    const/4 v6, 0x0

    goto :goto_b3
.end method

.method public getDomainFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1104
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 1105
    const/4 v0, 0x0

    .line 1106
    .local v0, "domain":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1107
    .local v1, "seInfo":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    if-nez v1, :cond_d

    .line 1116
    :cond_c
    :goto_c
    return-object v2

    .line 1111
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_c

    move-object v2, v0

    .line 1116
    goto :goto_c
.end method

.method public getSEAndroidAgent()I
    .registers 3

    .prologue
    .line 308
    const-string v0, "SEAndroidPolicy"

    const-string v1, "getSEAndroidAgent_begin"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 310
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v0

    return v0
.end method

.method public getSEInfoFromCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "sig"    # Ljava/lang/String;

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 828
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 829
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    .line 830
    const/4 v9, 0x0

    .line 831
    .local v9, "seinfo":Ljava/lang/String;
    sget-object v12, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    .line 832
    .local v12, "xmlFile":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 835
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_10
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 836
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 837
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Element;->normalize()V

    .line 838
    const-string v13, "policy"

    invoke-interface {v2, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 839
    .local v6, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .line 840
    .local v5, "policyElement":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    invoke-interface {v6, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .end local v5    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v5, Lorg/w3c/dom/Element;

    .line 841
    .restart local v5    # "policyElement":Lorg/w3c/dom/Element;
    const-string v13, "signer"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 842
    .local v10, "signer":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 844
    .local v11, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_35
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v4, v13, :cond_63

    .line 845
    invoke-interface {v10, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "signerElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 846
    .restart local v11    # "signerElement":Lorg/w3c/dom/Element;
    const-string v13, "signature"

    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_65

    .line 847
    const-string v13, "seinfo"

    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 848
    .local v7, "seInfo":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 849
    .local v8, "seInfo_el":Lorg/w3c/dom/Element;
    const-string v13, "value"

    invoke-interface {v8, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 850
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z
    :try_end_63
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_63} :catch_68
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_63} :catch_6e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_63} :catch_74

    .end local v7    # "seInfo":Lorg/w3c/dom/NodeList;
    .end local v8    # "seInfo_el":Lorg/w3c/dom/Element;
    :cond_63
    move-object v13, v9

    .line 865
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "i":I
    .end local v5    # "policyElement":Lorg/w3c/dom/Element;
    .end local v6    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "signer":Lorg/w3c/dom/NodeList;
    .end local v11    # "signerElement":Lorg/w3c/dom/Element;
    :goto_64
    return-object v13

    .line 844
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "i":I
    .restart local v5    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v6    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v10    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v11    # "signerElement":Lorg/w3c/dom/Element;
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 857
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "i":I
    .end local v5    # "policyElement":Lorg/w3c/dom/Element;
    .end local v6    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "signer":Lorg/w3c/dom/NodeList;
    .end local v11    # "signerElement":Lorg/w3c/dom/Element;
    :catch_68
    move-exception v3

    .line 858
    .local v3, "e1":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 859
    const/4 v13, 0x0

    goto :goto_64

    .line 860
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_6e
    move-exception v3

    .line 861
    .local v3, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 862
    const/4 v13, 0x0

    goto :goto_64

    .line 863
    .end local v3    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_74
    move-exception v3

    .line 864
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 865
    const/4 v13, 0x0

    goto :goto_64
.end method

.method public getSEInfoFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 771
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 772
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 773
    const/4 v2, 0x0

    .line 774
    .local v2, "seinfo":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v3, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 776
    if-nez v3, :cond_14

    .line 789
    :cond_13
    :goto_13
    return-object v4

    .line 779
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 780
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 781
    iget-boolean v5, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    .line 785
    .end local v1    # "s":Ljava/lang/String;
    :cond_2d
    if-eqz v2, :cond_13

    move-object v4, v2

    .line 789
    goto :goto_13
.end method

.method public getSELinuxMode()Z
    .registers 4

    .prologue
    .line 429
    const-string v1, "SEAndroidPolicy"

    const-string v2, "getSELinuxMode_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "isEnforced":Z
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    .line 433
    return v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 736
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 763
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 747
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 748
    const-string v0, "SEAndroidPolicy"

    const-string v1, "Admin is quiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 753
    :cond_17
    return-void
.end method

.method public revokeSELinuxPolicy()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 285
    const-string v2, "SEAndroidPolicy"

    const-string v3, "revokeSELinuxPolicy_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    .line 287
    .local v1, "uid":I
    const/4 v0, -0x1

    .line 288
    .local v0, "ret":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 289
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Lets remove the Files"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 291
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 293
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 298
    :cond_27
    :goto_27
    return v0

    .line 296
    :cond_28
    const/4 v0, -0x2

    goto :goto_27
.end method

.method public setFileContexts([B)I
    .registers 6
    .param p1, "fileContexts"    # [B

    .prologue
    .line 157
    const-string v2, "SEAndroidPolicy"

    const-string v3, "setFileContexts_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    .line 159
    .local v1, "uid":I
    const/4 v0, -0x1

    .line 161
    .local v0, "ret":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 162
    const-string v2, "file_contexts"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 163
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 166
    const/4 v0, 0x0

    .line 174
    :goto_31
    return v0

    .line 168
    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 169
    const/4 v0, -0x1

    goto :goto_31

    .line 172
    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public setMacPermission([B)I
    .registers 6
    .param p1, "macPerm"    # [B

    .prologue
    .line 259
    const-string v2, "SEAndroidPolicy"

    const-string v3, "setMacPermission_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    .line 261
    .local v1, "uid":I
    const/4 v0, -0x1

    .line 262
    .local v0, "ret":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 263
    const-string v2, "mac_permissions.xml"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 264
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v2, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_POLICY_FILE:Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy(Ljava/io/File;)Z

    .line 266
    const-string v2, "SEAndroidPolicy"

    const-string v3, "readInstallPolicy successful"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    .line 268
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 276
    :goto_36
    return v0

    .line 270
    :cond_37
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 271
    const/4 v0, -0x1

    goto :goto_36

    .line 274
    :cond_3d
    const/4 v0, -0x2

    goto :goto_36
.end method

.method public setPropertyContexts([B)I
    .registers 6
    .param p1, "propertyContexts"    # [B

    .prologue
    .line 183
    const-string v2, "SEAndroidPolicy"

    const-string v3, "setPropertyContexts_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    .line 185
    .local v1, "uid":I
    const/4 v0, -0x1

    .line 186
    .local v0, "ret":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 187
    const-string v2, "property_contexts"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 188
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 191
    const/4 v0, 0x0

    .line 199
    :goto_31
    return v0

    .line 193
    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 194
    const/4 v0, -0x1

    goto :goto_31

    .line 197
    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public setSEAppContexts([B)I
    .registers 6
    .param p1, "seAppContexts"    # [B

    .prologue
    .line 233
    const-string v2, "SEAndroidPolicy"

    const-string v3, "setSEAppContexts_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    .line 235
    .local v1, "uid":I
    const/4 v0, -0x1

    .line 236
    .local v0, "ret":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 237
    const-string v2, "seapp_contexts"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 238
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 249
    :goto_31
    return v0

    .line 243
    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 244
    const/4 v0, -0x1

    goto :goto_31

    .line 247
    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public setSELinuxEnforcing()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 407
    const-string v3, "SEAndroidPolicy"

    const-string v4, "setSELinuxEnforcing_begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v2

    .line 409
    .local v2, "uid":I
    const/4 v1, 0x0

    .line 410
    .local v1, "ret":Z
    invoke-direct {p0, v5, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 411
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 412
    invoke-static {v5}, Landroid/os/SELinux;->setSELinuxEnforce(Z)Z

    move-result v1

    .line 413
    if-eqz v1, :cond_2d

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v3, "mdm.intent.action.seandroid.policy.enforced"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 419
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2d
    return v1
.end method

.method public setSELinuxPolicy([B)I
    .registers 6
    .param p1, "sePolicy"    # [B

    .prologue
    .line 208
    const-string v2, "SEAndroidPolicy"

    const-string v3, "setSELinuxPolicy_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    .line 210
    .local v1, "uid":I
    const/4 v0, -0x1

    .line 211
    .local v0, "ret":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 212
    const-string v2, "sepolicy"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 213
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 216
    const/4 v0, 0x0

    .line 224
    :goto_31
    return v0

    .line 218
    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 219
    const/4 v0, -0x1

    goto :goto_31

    .line 222
    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 726
    return-void
.end method
