.class public Lcom/metamoji/df/model/ModelModuleInfo;
.super Ljava/lang/Object;
.source "ModelModuleInfo.java"


# static fields
.field private static defaultModuleInfo:Lcom/metamoji/df/model/ModelModuleInfo;


# instance fields
.field private productName:Ljava/lang/String;

.field private productVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultModelModuleInfo()Lcom/metamoji/df/model/ModelModuleInfo;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/df/model/ModelModuleInfo;->defaultModuleInfo:Lcom/metamoji/df/model/ModelModuleInfo;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/metamoji/df/model/ModelModuleInfo;

    invoke-direct {v0}, Lcom/metamoji/df/model/ModelModuleInfo;-><init>()V

    sput-object v0, Lcom/metamoji/df/model/ModelModuleInfo;->defaultModuleInfo:Lcom/metamoji/df/model/ModelModuleInfo;

    .line 19
    :cond_0
    sget-object v0, Lcom/metamoji/df/model/ModelModuleInfo;->defaultModuleInfo:Lcom/metamoji/df/model/ModelModuleInfo;

    return-object v0
.end method


# virtual methods
.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/df/model/ModelModuleInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/df/model/ModelModuleInfo;->productVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/metamoji/df/model/ModelModuleInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/metamoji/df/model/ModelModuleInfo;->productVersion:Ljava/lang/String;

    return-void
.end method
