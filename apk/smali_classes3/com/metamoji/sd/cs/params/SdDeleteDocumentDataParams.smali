.class public Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;
.super Lcom/metamoji/sd/cs/params/SdRequestParams;
.source "SdDeleteDocumentDataParams.java"


# instance fields
.field public check:Ljava/lang/String;

.field public documentId:Ljava/lang/String;

.field public update:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/metamoji/sd/cs/params/SdRequestParams;-><init>()V

    return-void
.end method


# virtual methods
.method protected toMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
