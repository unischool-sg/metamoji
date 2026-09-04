.class public Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;
.super Lcom/metamoji/sd/cs/response/SdResponseResult;
.source "SdGetDocumentMetaResult.java"


# instance fields
.field public documentId:Ljava/lang/String;

.field public driveId:Ljava/lang/String;

.field public meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/metamoji/sd/cs/response/SdResponseResult;-><init>()V

    return-void
.end method
