.class public Lcom/metamoji/lb/LbInAppPurchaseManager;
.super Ljava/lang/Object;
.source "LbInAppPurchaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lb/LbInAppPurchaseManager$Lock;
    }
.end annotation


# static fields
.field public static s_Lock:Lcom/metamoji/lb/LbInAppPurchaseManager$Lock;

.field protected static s_sharedInstance:Lcom/metamoji/lb/LbInAppPurchaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/metamoji/lb/LbInAppPurchaseManager$Lock;

    invoke-direct {v0}, Lcom/metamoji/lb/LbInAppPurchaseManager$Lock;-><init>()V

    sput-object v0, Lcom/metamoji/lb/LbInAppPurchaseManager;->s_Lock:Lcom/metamoji/lb/LbInAppPurchaseManager$Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/lb/LbInAppPurchaseManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/lb/LbInAppPurchaseManager;->s_sharedInstance:Lcom/metamoji/lb/LbInAppPurchaseManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/metamoji/lb/LbInAppPurchaseManager;

    invoke-direct {v0}, Lcom/metamoji/lb/LbInAppPurchaseManager;-><init>()V

    sput-object v0, Lcom/metamoji/lb/LbInAppPurchaseManager;->s_sharedInstance:Lcom/metamoji/lb/LbInAppPurchaseManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/metamoji/lb/LbInAppPurchaseManager;->s_sharedInstance:Lcom/metamoji/lb/LbInAppPurchaseManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 0

    monitor-enter p0

    .line 29
    monitor-exit p0

    return-void
.end method
