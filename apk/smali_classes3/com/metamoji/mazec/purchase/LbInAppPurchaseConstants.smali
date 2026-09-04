.class public Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;
.super Ljava/lang/Object;
.source "LbInAppPurchaseConstants.java"


# static fields
.field public static final FUNCTION_MAZEC2_PRODUCT_IDS:[Ljava/lang/String;

.field public static final LANG_BR:Ljava/lang/String; = "PT"

.field public static final LANG_CN:Ljava/lang/String; = "CN"

.field public static final LANG_DE:Ljava/lang/String; = "DE"

.field public static final LANG_ES:Ljava/lang/String; = "ES"

.field public static final LANG_FR:Ljava/lang/String; = "FR"

.field public static final LANG_IT:Ljava/lang/String; = "IT"

.field public static final LANG_JP:Ljava/lang/String; = "JP"

.field public static final LANG_KR:Ljava/lang/String; = "KR"

.field public static final LANG_NL:Ljava/lang/String; = "NL"

.field public static final LANG_PL:Ljava/lang/String; = "PL"

.field public static final LANG_RU:Ljava/lang/String; = "RU"

.field public static final LANG_TW:Ljava/lang/String; = "TW"

.field public static final LANG_US:Ljava/lang/String; = "EN"

.field public static PRODUCTID_MAZEC_ADDON_ALL:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_DE:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_EN:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_ES:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_FR:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_IT:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_JA:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_KO:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_NL:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_PL:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_PT:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_RU:Ljava/lang/String; = null

.field public static PRODUCTID_MAZEC_ADDON_ZH:Ljava/lang/String; = null

.field public static final STR1:Ljava/lang/String; = "NJJCJkBOChlriljH:x1CBRFGBBPDBR9BNJJCDhLDBRFBiWR8PhH{BMn4VV,z2wjSr4X4Yl1R6Uhy7RD0dZZj3j1iQsCuRzYcngKy7mNeVV8bkyrxyLYsudyHe[t8XV,I6h4z2Eodj"

.field public static final STR2:Ljava/lang/String; = "64rWkT5LoQFpNOn;d{pItsYZMX8nks\uffe5{QnK:e6y1I9t:Jl-Tpl{MtgJ3eFYyleszUu9uyg7Ytzt8kykWyqHOE2ki-8VtY6FISmwGylmvhcn\uffe5joKjRzTUx9qo1rxz1HwD[ThEQLz3:"

.field public static final STR3:Ljava/lang/String; = "9yfppyihH{7Q:TN96jSn\uffe5khDqLkpjlt<M7Qh2KDd;[.J3eeUiIyjnVD.z]VQmp2hIRe3}TRLEjVNx8yszx.X<[eHUMkmJfXtDpwD7.jL.dxrWREzLGDTDE"

.field public static final STR4:Ljava/lang/String; = "NJJCJkBOChlriljH:x1CBRFGBBPDBR9BNJJCDhLDBRFBvXlYyjcF{IvHr1I0l22OW2lFHDx2UJZI{50F1lCUj5BQvFMnrngSEjFeuSFGXZYpDCBz:iM64,NPWCtJBBNJr85spnQFgccdlFU"

.field public static final STR5:Ljava/lang/String; = ":2ynJV|HU{nWhg34eqt|c7Ce;yish:Q:qDn697WHeqj;9oH{W|oJtn;gU:S-;oxrx|87QoJg2:PEo1JmTxNhsp2Ig4[qTcU9[gqfDgWD6MoHPxYieyXpT1ix1yeYxG8fS9oW4XjoOwSkRYj"

.field public static final STR6:Ljava/lang/String; = "KS|YW]ivW}iYvmU.Us2Ryr4edhofnS;|sH3xjxvsx]ZEq8L:[Lk<|<\uffe5zMTOrgkIQf.KI:8Hs:nLy;pMy:JZQFm\uffe5k[MXdMo3<QK}zLGDTDE"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.ja"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_JA:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_EN:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.fr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_FR:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.de"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_DE:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_IT:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.zh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ZH:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.ko"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_KO:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.es"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ES:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.ru"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_RU:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.pt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PT:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.nl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_NL:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.pl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PL:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getBundleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mazecrecognition.all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ALL:Ljava/lang/String;

    const/16 v1, 0xe

    .line 44
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_JA:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_EN:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ES:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_FR:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_DE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_IT:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_NL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PT:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_RU:Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ZH:Ljava/lang/String;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/16 v2, 0xc

    sget-object v3, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_KO:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sput-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->FUNCTION_MAZEC2_PRODUCT_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
